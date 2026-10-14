#!/usr/bin/env python3
"""Create an isolated local-backend APK using portable ARM OpenSSL routines."""
import argparse
import difflib
import hashlib
import json
import os
import re
import shutil
import subprocess
from pathlib import Path

from prepare_local_apk import ROOT, FW, prepare, replace_method

LIB = "lib/armeabi-v7a/libtnpn.so"
ORIGINAL = "a644d6800f2732798185741da30d8ced39c6f0d7acb67192d384cee6e425dd44"
CPU_PATCHED = "f17274ba5aa69a4b86323e47068d24ea557413f4c2940dd62252600e5a9623f6"


CERT_OFFSET = 0x1bb5f9
CERT_SLOT_BYTES = 1755
ORIGINAL_DEBUG_CERT = "c9911ef8e4a38b748d914688866a82e68577d0a1ec89450e9f39dc2c24059695"


def prepare_emulator(output, root=ROOT):
    output = Path(output).resolve()
    original = (Path(root) / "android" / LIB).read_bytes()
    if hashlib.sha256(original).hexdigest() != ORIGINAL or original[0x8f630:0x8f634].hex() != "30482de9":
        raise ValueError("Unexpected libtnpn binary; compatibility patch not applied")
    patched = bytearray(original)
    # ARM bx lr at OPENSSL_cpuid_setup. The capability bits are initially zero
    # in BSS, so OpenSSL keeps its portable routines without SIGILL CPU probes.
    patched[0x8f630:0x8f634] = bytes.fromhex("1eff2fe1")
    if hashlib.sha256(patched).hexdigest() != CPU_PATCHED:
        raise ValueError("Unexpected compatibility result")
    old_cert_slot = original[CERT_OFFSET:CERT_OFFSET + CERT_SLOT_BYTES]
    old_cert = bytes.fromhex(old_cert_slot[:-1].decode("ascii"))
    if old_cert_slot[-1] != 0 or hashlib.sha256(old_cert).hexdigest() != ORIGINAL_DEBUG_CERT:
        raise ValueError("Unexpected original debug certificate slot")
    keytool = shutil.which("keytool")
    if not keytool:
        raise ValueError("JDK keytool is required before preparing the emulator variant")
    # Only this explicit emulator variant disables unsupported speech and uses
    # the application's existing hardware simulation preference by default.
    changes = []
    for relative, signature in [
        (FW + "tts/d.smali", "public final c(Landroid/content/Context;)V"),
        ("smali_classes3/cn/mucang/android/jiakaoyi/speech/utils/f.smali", "public final a(Landroid/content/Context;)V"),
    ]:
        before = (Path(root) / "android" / relative).read_text()
        after = replace_method(before, signature, "    return-void")
        if relative == FW + "tts/d.smali":
            # Complete queued TTS requests with the SDK's explicit uninitialized
            # error; a silent return would leave TtsSynchronizer waiting forever.
            for method, callback in [
                ("public final f(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)V", "p2"),
                ("public final h(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)V", "p3"),
            ]:
                pattern = r"(?m)^\.method " + re.escape(method) + r"\n[\s\S]*?^\.end method"
                matches = list(re.finditer(pattern, after))
                if len(matches) != 1:
                    raise ValueError("Unexpected TTS callback method")
                match = matches[0]
                body = match.group()
                if body.count("    goto :goto_0") != 1 or body.count("    .locals 1") != 1:
                    raise ValueError("Unexpected TTS null branch")
                failure = ("    new-instance v0, Lcom/iflytek/cloud/SpeechError;\n"
                           "    const/16 v1, 0x5dc7\n"
                           "    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V\n"
                           "    invoke-interface {" + callback + ", v0}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V\n"
                           "    return-void")
                body = body.replace("    .locals 1", "    .locals 2", 1).replace("    goto :goto_0", failure, 1)
                after = after[:match.start()] + body + after[match.end():]
        changes.append((relative, before, after))
    for relative, before_text, after_text in [
        (FW + "utils/JNet.smali", 'const-string v0, "1234.kakamobi.cn"', 'const-string v0, "127.0.0.1"'),
        (FW + "utils/n.smali", 'const/4 v0, 0x0\n\n    const-string v1, "debugKeyBlueTooth"',
         'const/4 v0, 0x1\n\n    const-string v1, "debugKeyBlueTooth"'),
    ]:
        before = (Path(root) / "android" / relative).read_text()
        if before.count(before_text) != 1:
            raise ValueError("Unexpected emulator setting: " + relative)
        changes.append((relative, before, before.replace(before_text, after_text, 1)))
    prepare(output, "http://127.0.0.1:8765", root)
    java_manifest, patch = [], []
    for relative, before, after in changes:
        (output / "android" / relative).write_text(after)
        java_manifest.append(dict(file="android/" + relative,
                                  originalSha256=hashlib.sha256(before.encode()).hexdigest(),
                                  patchedSha256=hashlib.sha256(after.encode()).hexdigest()))
        patch.extend(difflib.unified_diff(before.splitlines(True), after.splitlines(True),
                                         "original/android/" + relative, "emulator/android/" + relative))
    (output / "emulator-java.patch").write_text("".join(patch))
    cache = output / ".cache"
    cache.mkdir(mode=0o700)
    keystore = cache / "reconstruction-debug.p12"
    subprocess.run([keytool, "-genkeypair", "-noprompt", "-keystore", str(keystore),
                    "-storetype", "PKCS12", "-storepass", "android", "-keypass", "android",
                    "-alias", "reconstruction", "-keyalg", "RSA", "-keysize", "2048",
                    "-validity", "10000", "-dname", "CN=Local APK Debug"], check=True)
    os.chmod(keystore, 0o600)
    certificate = output / "reports/reconstruction-debug-certificate.der"
    subprocess.run([keytool, "-exportcert", "-keystore", str(keystore), "-storepass", "android",
                    "-alias", "reconstruction", "-file", str(certificate)], check=True)
    der = certificate.read_bytes()
    cert_hex = der.hex().encode("ascii")
    if len(cert_hex) >= CERT_SLOT_BYTES:
        raise ValueError("Generated debug certificate exceeds the original slot; refusing to truncate")
    patched[CERT_OFFSET:CERT_OFFSET + CERT_SLOT_BYTES] = cert_hex.ljust(CERT_SLOT_BYTES, b"\0")
    ranges = [(0x8f630, 0x8f634), (CERT_OFFSET, CERT_OFFSET + CERT_SLOT_BYTES)]
    cursor = 0
    for start, end in ranges:
        if original[cursor:start] != patched[cursor:start]:
            raise ValueError("Native bytes changed outside declared patches")
        cursor = end
    if original[cursor:] != patched[cursor:] or len(original) != len(patched):
        raise ValueError("Native bytes changed outside declared patches")
    patched_sha = hashlib.sha256(patched).hexdigest()
    (output / "android" / LIB).write_bytes(patched)
    entry = dict(originalSha256=ORIGINAL, patchedSha256=patched_sha,
                 debugCertificateSha256=hashlib.sha256(der).hexdigest(),
                 patches=[dict(offset=0x8f630, bytes=4, before="30482de9", after="1eff2fe1",
                               reason="Keep portable ARM routines without CPU probes under native translation"),
                          dict(offset=CERT_OFFSET, bytes=CERT_SLOT_BYTES,
                               reason="Allow this build's debug certificate using the existing DEBUG_SIGN slot")],
                 reason="Emulator CPU compatibility and the local build certificate; retain native verification and crypto")
    (output / "reports/payload-overrides.json").write_text(json.dumps({LIB: entry}, indent=2) + "\n")
    report = dict(base="local-backend overlay", originalModified=False, files=[dict(file="android/" + LIB, **entry)] + java_manifest,
                  scope="Native CPU/certificate compatibility; speech disabled; loopback ping; existing Bluetooth simulation default enabled",
                  voiceAvailable=False, hardwareSimulationDefault=True, networkProbe="127.0.0.1",
                  nativeLibrariesUnchanged=False, nativeMethodsUnchanged=True,
                  limits=["CPU acceleration and timestamp probing disabled; runtime validation still required",
                          "All other original native bytes and packaged resources remain unchanged",
                          "Private debug key stays in this build directory and is never published",
                          "Speech synthesis/recognition unavailable; original SDK libraries remain packaged",
                          "Built-in Bluetooth simulation replaces physical signal-box startup; real hardware untested",
                          "Original login and external Unity resource checks remain",
                          "Use local backend and guest network isolation for testing"])
    (output / "emulator-overlay.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n")
    return report


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    prepare_emulator(args.output)
    print("Prepared portable ARM emulator variant in", args.output.resolve())
