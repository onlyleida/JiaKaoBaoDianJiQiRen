#!/usr/bin/env python3
"""Create an isolated local-backend APK using portable ARM OpenSSL routines."""
import argparse
import hashlib
import json
from pathlib import Path

from prepare_local_apk import ROOT, prepare

LIB = "lib/armeabi-v7a/libtnpn.so"
ORIGINAL = "a644d6800f2732798185741da30d8ced39c6f0d7acb67192d384cee6e425dd44"
PATCHED = "f17274ba5aa69a4b86323e47068d24ea557413f4c2940dd62252600e5a9623f6"


def prepare_emulator(output, root=ROOT):
    output = Path(output).resolve()
    original = (Path(root) / "android" / LIB).read_bytes()
    if hashlib.sha256(original).hexdigest() != ORIGINAL or original[0x8f630:0x8f634].hex() != "30482de9":
        raise ValueError("Unexpected libtnpn binary; compatibility patch not applied")
    patched = bytearray(original)
    # ARM bx lr at OPENSSL_cpuid_setup. The capability bits are initially zero
    # in BSS, so OpenSSL keeps its portable routines without SIGILL CPU probes.
    patched[0x8f630:0x8f634] = bytes.fromhex("1eff2fe1")
    if hashlib.sha256(patched).hexdigest() != PATCHED:
        raise ValueError("Unexpected compatibility result")
    prepare(output, "http://127.0.0.1:8765", root)
    (output / "android" / LIB).write_bytes(patched)
    entry = dict(originalSha256=ORIGINAL, patchedSha256=PATCHED,
                 offset=0x8f630, before="30482de9", after="1eff2fe1",
                 reason="Skip OpenSSL ARM CPU probes that crash API30 native translation; keep initial capability bits zero")
    (output / "reports/payload-overrides.json").write_text(json.dumps({LIB: entry}, indent=2) + "\n")
    report = dict(base="local-backend overlay", originalModified=False, files=[dict(file="android/" + LIB, **entry)],
                  scope="One ARM instruction replaces the CPU-probe constructor entry with a return",
                  nativeLibrariesUnchanged=False, nativeMethodsUnchanged=True,
                  limits=["CPU acceleration and timestamp probing disabled; runtime validation still required",
                          "All other original native bytes and packaged resources remain unchanged",
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
