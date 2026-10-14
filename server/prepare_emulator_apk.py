#!/usr/bin/env python3
"""Create a separate local-backend APK with an ARM emulator compatibility setting."""
import argparse
import difflib
import hashlib
import json
from pathlib import Path

from prepare_local_apk import ROOT, prepare


def prepare_emulator(output, root=ROOT):
    output = Path(output).resolve()
    prepare(output, "http://127.0.0.1:8765", root)
    relative = "smali/cn/mucang/android/core/jni/Riddle.smali"
    path = output / "android" / relative
    before = path.read_text()
    old = '.method static constructor <clinit>()V\n    .locals 1\n\n    const-string v0, "tnpn"'
    new = '''.method static constructor <clinit>()V
    .locals 3

    # Use OpenSSL's portable ARM path; avoid SIGILL CPU probing in translation.
    const-string v0, "OPENSSL_armcap"
    const-string v1, "0"
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JiaKaoLocal"
    const-string v1, "ARM emulator compatibility: OPENSSL_armcap=0"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tnpn"'''
    if before.count(old) != 1:
        raise ValueError("Unexpected Riddle library loader")
    after = before.replace(old, new)
    path.write_text(after)
    patch = ''.join(difflib.unified_diff(before.splitlines(True), after.splitlines(True),
                                       "local/android/" + relative, "emulator/android/" + relative))
    (output / "emulator.patch").write_text(patch)
    report = dict(base="local-backend overlay", originalModified=False,
                  files=[dict(file="android/" + relative,
                              originalSha256=hashlib.sha256(before.encode()).hexdigest(),
                              patchedSha256=hashlib.sha256(after.encode()).hexdigest())],
                  scope="Set OPENSSL_armcap=0 before loading libtnpn to avoid ARM CPU probes",
                  nativeLibrariesUnchanged=True, nativeMethodsUnchanged=True,
                  limits=["Compatibility setting still requires runtime verification",
                          "CPU acceleration disabled for process OpenSSL ARM routines",
                          "Original activation, hardware and resource checks remain",
                          "Use the local backend and guest network isolation for testing"])
    (output / "emulator-overlay.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n")
    return report


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    prepare_emulator(args.output)
    print("Prepared ARM emulator compatibility variant in", args.output.resolve())
