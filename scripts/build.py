#!/usr/bin/env python3
"""Reassemble the extracted Smali/resources, align, debug-sign and verify the APK."""
import argparse
import hashlib
import json
import os
import re
from pathlib import Path
import shutil
import subprocess
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[1]
APKTOOL_VERSION = "3.0.3"
APKTOOL_SHA256 = "dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423"
APK_NAME = "jiakaoyi-coach-11.6.5-rebuilt-debug.apk"


def digest(path):
    h = hashlib.sha256()
    with open(path, "rb") as source:
        for block in iter(lambda: source.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def run(args, env, log=None):
    if log:
        with open(log, "w", encoding="utf-8") as output:
            subprocess.run([str(x) for x in args], env=env, stdout=output,
                           stderr=subprocess.STDOUT, check=True)
    else:
        subprocess.run([str(x) for x in args], env=env, check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", default=os.getenv("ANDROID_HOME") or os.getenv("ANDROID_SDK_ROOT"))
    parser.add_argument("--java-home", default=os.getenv("JAVA_HOME"))
    parser.add_argument("--build-tools", default="35.0.0")
    parser.add_argument("--apktool", type=Path, help="Existing, checksum-matching Apktool 3.0.3 JAR")
    parser.add_argument("--output-dir", type=Path, default=ROOT / "dist")
    parser.add_argument("--payload-overrides", type=Path,
                        help="Explicit original/patched SHA256 manifest for intentional compatibility patches")
    args = parser.parse_args()
    if not args.sdk:
        parser.error("Set ANDROID_HOME or pass --sdk (Android SDK with build-tools 35.0.0).")
    env = dict(os.environ)
    if args.java_home:
        env["JAVA_HOME"] = str(Path(args.java_home).expanduser().resolve())
        env["PATH"] = str(Path(env["JAVA_HOME"]) / "bin") + os.pathsep + env.get("PATH", "")
    java = shutil.which("java", path=env.get("PATH"))
    keytool = shutil.which("keytool", path=env.get("PATH"))
    sdk = Path(args.sdk).expanduser().resolve()
    build_tools = sdk / "build-tools" / args.build_tools
    suffix = ".bat" if os.name == "nt" else ""
    apksigner = build_tools / ("apksigner" + suffix)
    zipalign = build_tools / ("zipalign.exe" if os.name == "nt" else "zipalign")
    if not java or not keytool or not apksigner.is_file() or not zipalign.is_file():
        parser.error("JDK (tested with 21), zipalign and apksigner must be installed.")
    cache = ROOT / ".cache"
    cache.mkdir(exist_ok=True)
    output = args.output_dir.expanduser().resolve()
    output.mkdir(parents=True, exist_ok=True)
    apktool = args.apktool.resolve() if args.apktool else cache / f"apktool_{APKTOOL_VERSION}.jar"
    if not apktool.exists() and not args.apktool:
        url = ("https://github.com/iBotPeaches/Apktool/releases/download/"
               f"v{APKTOOL_VERSION}/apktool_{APKTOOL_VERSION}.jar")
        temp = apktool.with_suffix(".download")
        run(["curl", "--fail", "--location", "--retry", "3", "--output", temp, url], env)
        if digest(temp) != APKTOOL_SHA256:
            raise ValueError("Downloaded Apktool SHA256 mismatch")
        temp.replace(apktool)
    if not apktool.is_file() or digest(apktool) != APKTOOL_SHA256:
        raise ValueError("Apktool missing or does not match the pinned SHA256")
    unsigned = output / "unsigned.apk"
    aligned = output / "aligned.apk"
    signed = output / APK_NAME
    print("Assembling all six DEX files and packaged resources...", flush=True)
    run([java, "-Xmx4g", "-jar", apktool, "build", "-f", "-j", "4",
         "-p", cache / "framework", "-o", unsigned, ROOT / "android"], env, output / "build.log")
    # Only the explicit emulator overlay declares this activity. Original/local
    # rebuilds keep their original six DEX files even though source is in the repo.
    addon = None
    if 'android:name="local.jiakao.LocalWorkbenchActivity"' in (ROOT / "android/AndroidManifest.xml").read_text():
        source = ROOT / "local-workbench/LocalWorkbenchActivity.java"
        platform = sdk / "platforms/android-28/android.jar"
        javac = shutil.which("javac", path=env.get("PATH"))
        d8 = build_tools / ("d8" + suffix)
        if not source.is_file() or not platform.is_file() or not javac or not d8.is_file():
            raise ValueError("Local workbench needs its Java source, javac, d8 and SDK platforms;android-28")
        classes, dex_dir = cache / "workbench-classes", cache / "workbench-dex"
        for folder in (classes, dex_dir):
            if folder.exists():
                shutil.rmtree(folder)
            folder.mkdir()
        run([javac, "-encoding", "UTF-8", "--release", "8", "-classpath", platform,
             "-d", classes, source], env, output / "workbench-javac.log")
        run([d8, "--min-api", "21", "--lib", platform, "--output", dex_dir,
             *sorted(classes.rglob("*.class"))], env, output / "workbench-d8.log")
        if sorted(p.name for p in dex_dir.iterdir()) != ["classes.dex"]:
            raise ValueError("Unexpected local workbench DEX output")
        addon = {"entry": "classes7.dex", "sha256": digest(dex_dir / "classes.dex"),
                 "source": "local-workbench/LocalWorkbenchActivity.java", "source_sha256": digest(source),
                 "purpose": "New local debug UI; not recovered Unity teaching code"}
        with zipfile.ZipFile(unsigned, "a", compression=zipfile.ZIP_DEFLATED) as archive:
            if "classes7.dex" in archive.namelist():
                raise ValueError("Refusing to overwrite an existing seventh DEX")
            archive.write(dex_dir / "classes.dex", "classes7.dex")
    run([zipalign, "-f", "4", unsigned, aligned], env)
    keystore = cache / "reconstruction-debug.p12"
    if not keystore.exists():
        run([keytool, "-genkeypair", "-noprompt", "-keystore", keystore,
             "-storetype", "PKCS12", "-storepass", "android", "-keypass", "android",
             "-alias", "reconstruction", "-keyalg", "RSA", "-keysize", "2048",
             "-validity", "10000", "-dname", "CN=APK Reconstruction Debug,O=Local Build,C=ZZ"], env)
    run([apksigner, "sign", "--ks", keystore, "--ks-key-alias", "reconstruction",
         "--ks-pass", "pass:android", "--key-pass", "pass:android",
         "--v4-signing-enabled", "false", "--out", signed, aligned], env)
    run([zipalign, "-c", "4", signed], env, output / "alignment.txt")
    run([apksigner, "verify", "--verbose", "--print-certs", signed], env, output / "signature.txt")
    counts = {"assets": 0, "lib": 0}
    with zipfile.ZipFile(signed) as apk:
        for folder in counts:
            for source in sorted((ROOT / "android" / folder).rglob("*")):
                if source.is_file():
                    name = source.relative_to(ROOT / "android").as_posix()
                    if hashlib.sha256(apk.read(name)).hexdigest() != digest(source):
                        raise ValueError(f"Packaged content changed: {name}")
                    counts[folder] += 1
        dex = sorted(n for n in apk.namelist() if n.endswith(".dex") and "/" not in n)
        if dex != ["classes.dex"] + [f"classes{i}.dex" for i in range(2, 8 if addon else 7)]:
            raise ValueError(f"Unexpected DEX files: {dex}")
        if addon and hashlib.sha256(apk.read(addon["entry"])).hexdigest() != addon["sha256"]:
            raise ValueError("Packaged local workbench DEX does not match compiled source output")
        coverage = json.loads((ROOT / "reports" / "apk-entry-coverage.json").read_text())
        overrides = json.loads(args.payload_overrides.read_text()) if args.payload_overrides else {}
        signature_text = (output / "signature.txt").read_text()
        certificate_match = re.search(r"Signer #1 certificate SHA-256 digest: ([0-9a-fA-F]+)", signature_text)
        signer_sha = certificate_match.group(1).lower() if certificate_match else None
        for name, override in overrides.items():
            expected_cert = override.get("debugCertificateSha256")
            if expected_cert and signer_sha != expected_cert:
                raise ValueError(f"APK signer does not match embedded debug certificate: {name}")
        applied = []
        changed = []
        for entry in coverage["entries"]:
            if entry["category"] == "preserved_file":
                name = entry["apk_entry"]
                actual = hashlib.sha256(apk.read(name)).hexdigest()
                if name in overrides:
                    override = overrides[name]
                    if override["originalSha256"] != entry["sha256"] or actual != override["patchedSha256"]:
                        raise ValueError(f"Intentional payload patch hash mismatch: {name}")
                    applied.append(name)
                elif actual != entry["sha256"]:
                    changed.append(name)
        if changed:
            raise ValueError(f"Original payload changed: {changed}")
        if set(applied) != set(overrides):
            raise ValueError("Unverified payload override entries")
    sha = digest(signed)
    (output / (APK_NAME + ".sha256")).write_text(f"{sha}  {APK_NAME}\n")
    report = {"apk": APK_NAME, "sha256": sha, "bytes": signed.stat().st_size,
              "apktool": APKTOOL_VERSION, "build_tools": args.build_tools,
              "signature_verified": True, "signer_certificate_sha256": signer_sha, "zip_alignment_verified": True,
              "packaged_files_byte_identical_to_extraction": counts, "dex_files": dex,
              "added_local_code": addon,
              "original_preserved_payload_verified": not bool(applied),
              "intentional_payload_patches_verified": overrides,
              "signing": "local debug key; different from original vendor certificate",
              "runtime_test": "not performed by this build script"}
    (output / "build-verification.json").write_text(json.dumps(report, indent=2) + "\n")
    print(f"Verified APK: {signed}")
    print(f"SHA256: {sha}")


if __name__ == "__main__":
    try:
        main()
    except (OSError, ValueError, subprocess.CalledProcessError, KeyError) as error:
        print(f"Build failed: {error}; see output build.log/signature.txt.", file=sys.stderr)
        sys.exit(1)
