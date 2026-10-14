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
    relative = "AndroidManifest.xml"
    path = output / "android" / relative
    before = path.read_text()
    if before.count('<application ') != 1 or 'android:debuggable=' in before or 'android:extractNativeLibs=' in before:
        raise ValueError("Unexpected application manifest")
    after = before.replace('<application ', '<application android:debuggable="true" android:extractNativeLibs="true" ', 1)
    path.write_text(after)
    # Set the environment before native bridge initialization. Os.setenv in a
    # Java class initializer was observed too late for this emulator's ARM getenv.
    wrapper = output / "android/lib/armeabi-v7a/wrap.sh"
    wrapper.write_text('#!/system/bin/sh\nexport OPENSSL_armcap=0\n'
                       '/system/bin/log -t JiaKaoLocal "Process wrapper: OPENSSL_armcap=0"\nexec "$@"\n')
    wrapper.chmod(0o755)
    patch = ''.join(difflib.unified_diff(before.splitlines(True), after.splitlines(True),
                                       "local/android/" + relative, "emulator/android/" + relative))
    patch += ''.join(difflib.unified_diff([], wrapper.read_text().splitlines(True),
                                        "/dev/null", "emulator/android/lib/armeabi-v7a/wrap.sh"))
    (output / "emulator.patch").write_text(patch)
    report = dict(base="local-backend overlay", originalModified=False,
                  files=[dict(file="android/" + relative,
                              originalSha256=hashlib.sha256(before.encode()).hexdigest(),
                              patchedSha256=hashlib.sha256(after.encode()).hexdigest()),
                         dict(file="android/lib/armeabi-v7a/wrap.sh", originalSha256=None,
                              patchedSha256=hashlib.sha256(wrapper.read_bytes()).hexdigest())],
                  scope="Debug process wrapper sets OPENSSL_armcap=0 before native bridge initialization",
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
