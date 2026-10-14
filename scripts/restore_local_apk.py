#!/usr/bin/env python3
"""Restore the exact delivered local-backend APK from the verified release APK.

This transport patch preserves ZIP metadata and signing bytes; it does not
re-sign or execute APK code. Requires bsdiff4==1.2.6 for patched DEX entries.
"""
import argparse
import hashlib
import json
from pathlib import Path
import zipfile
import zlib

import bsdiff4

EXPECTED_BASE = 'a11eee996432ec7748761c684f223d3ba7eb2fb399d76a5b14dde4588d4e5180'
EXPECTED_TARGET = '16d0c167b5509609fb795cab3a6271aa76b03a82333da1f5d2ffb3fdf08560ea'


def restore(base, delta, output):
    original = Path(base).read_bytes()
    if hashlib.sha256(original).hexdigest() != EXPECTED_BASE:
        raise ValueError('Wrong base APK; expected the verified release APK')
    with zipfile.ZipFile(delta) as bundle, zipfile.ZipFile(base) as apk:
        manifest = json.loads(bundle.read('manifest.json'))
        if manifest['base_sha256'] != EXPECTED_BASE or manifest['target_sha256'] != EXPECTED_TARGET:
            raise ValueError('Unexpected delta target')
        literal = bundle.read('literal.bin')
        rebuilt = bytearray()
        for segment in manifest['segments']:
            kind = segment['kind']
            if kind in ('copy', 'literal'):
                start, size = segment['offset'], segment['size']
                source = original if kind == 'copy' else literal
                if start < 0 or size < 0 or start + size > len(source):
                    raise ValueError('Invalid patch bounds')
                rebuilt.extend(source[start:start + size])
            elif kind == 'patch':
                data = bsdiff4.patch(apk.read(segment['entry']), bundle.read(segment['patch']))
                compressor = zlib.compressobj(6, zlib.DEFLATED, -15)
                compressed = compressor.compress(data) + compressor.flush()
                if hashlib.sha256(compressed).hexdigest() != segment['compressed_sha256']:
                    raise ValueError('Compression mismatch; target APK was not produced')
                rebuilt.extend(compressed)
            else:
                raise ValueError('Unsupported segment type')
    if len(rebuilt) != manifest['target_size'] or hashlib.sha256(rebuilt).hexdigest() != EXPECTED_TARGET:
        raise ValueError('Restored APK checksum mismatch')
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_bytes(rebuilt)
    print('Verified exact local APK:', EXPECTED_TARGET)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--base', type=Path, required=True)
    parser.add_argument('--delta', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    restore(args.base, args.delta, args.output)
