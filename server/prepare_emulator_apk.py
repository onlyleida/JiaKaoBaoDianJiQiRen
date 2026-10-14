#!/usr/bin/env python3
"""Create an isolated local-backend APK using portable ARM OpenSSL routines."""
import argparse
import hashlib
import json
import os
import shutil
import subprocess
from pathlib import Path

from prepare_local_apk import ROOT, prepare

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
    prepare(output, "http://127.0.0.1:8765", root)
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
    report = dict(base="local-backend overlay", originalModified=False, files=[dict(file="android/" + LIB, **entry)],
                  scope="CPU-probe entry and DEBUG_SIGN certificate data; original release certificates and native verification retained",
                  nativeLibrariesUnchanged=False, nativeMethodsUnchanged=True,
                  limits=["CPU acceleration and timestamp probing disabled; runtime validation still required",
                          "All other original native bytes and packaged resources remain unchanged",
                          "Private debug key stays in this build directory and is never published",
                          "Original activation, hardware and external resource checks remain",
                          "Use local backend and guest network isolation for testing"])
    (output / "emulator-overlay.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n")
    return report


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    prepare_emulator(args.output)
    print("Prepared portable ARM emulator variant in", args.output.resolve())
