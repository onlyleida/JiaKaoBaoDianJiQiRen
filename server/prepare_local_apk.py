#!/usr/bin/env python3
"""Generate an isolated Apktool project targeting a local backend; never edit android/."""
import argparse
import difflib
import hashlib
import ipaddress
import json
from pathlib import Path
import re
import shutil
from urllib.parse import urlsplit

ROOT = Path(__file__).resolve().parents[1]
FW = "smali_classes2/cn/mucang/android/jiakaoyi/framework/"
UI = "smali_classes5/cn/mucang/jiakaoyi/uilib/"
HOST_FILES = [FW + "e/" + name + ".smali" for name in ("n", "d", "e", "f", "h", "i", "j", "k", "l")]
HOST_FILES += [UI + "i/" + name + ".smali" for name in ("i", "h", "c", "q")]
HOST_FILES += [UI + "login/o/" + name + ".smali" for name in ("b", "c", "d")]
HOST_FILES += [
    "smali_classes2/cn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi.smali",
    "smali_classes4/cn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi.smali",
    "smali_classes3/cn/mucang/android/jiakaoyi/speech/semantic/e.smali",
    "smali_classes3/cn/mucang/android/jiakaoyi/speech/semantic/g.smali",
    "smali_classes3/cn/mucang/android/jiakaoyi/signal/ai/ota/f.smali",
    UI + "k/b/a.smali", UI + "n/b$a.smali",
]


def local_origin(value):
    url = urlsplit(value)
    if (url.scheme != "http" or not url.hostname or url.username or url.password or url.query or
            url.fragment or url.path not in ("", "/") or any(x.isspace() for x in value)):
        raise ValueError("Use http://LOCAL_IP:PORT with no path or credentials")
    if url.hostname != "localhost":
        address = ipaddress.ip_address(url.hostname)
        if not (address.is_loopback or address.is_private) or address.is_unspecified:
            raise ValueError("Local overlay requires a loopback or private IP address")
    if not url.port:
        raise ValueError("Specify the local backend port")
    return value.rstrip("/")


def replace_method(source, signature, instructions):
    pattern = r"(?m)^\.method " + re.escape(signature) + r"\n[\s\S]*?^\.end method"
    if len(re.findall(pattern, source)) != 1:
        raise ValueError("Expected exactly one method: " + signature)
    return re.sub(pattern, lambda _: ".method " + signature + "\n    .locals 1\n\n" +
                  instructions + "\n.end method", source, count=1)


def prepare(output, base_url, root=ROOT):
    base_url = local_origin(base_url)
    output, root = Path(output).resolve(), Path(root).resolve()
    if output.exists() or output == root or root / "android" in output.parents:
        raise ValueError("Output must be a new directory outside the original android/ tree")
    changes = []
    for relative in HOST_FILES:
        before = (root / "android" / relative).read_text()
        after = replace_method(before, "protected getApiHost()Ljava/lang/String;",
                               '    const-string v0, "' + base_url + '"\n    return-object v0')
        changes.append((relative, before, after))
    relative = FW + "utils/c0.smali"
    before = (root / "android" / relative).read_text()
    changes.append((relative, before, replace_method(before, "public static a()Z",
                                                    "    const/4 v0, 0x0\n    return v0")))
    # All expected methods validated before copying or modifying anything.
    output.mkdir(parents=True)
    shutil.copytree(root / "android", output / "android", ignore=shutil.ignore_patterns("build", "dist"))
    (output / "scripts").mkdir()
    (output / "reports").mkdir()
    shutil.copy2(root / "scripts/build.py", output / "scripts/build.py")
    shutil.copy2(root / "reports/apk-entry-coverage.json", output / "reports/apk-entry-coverage.json")
    patch = []
    manifest = []
    for relative, before, after in changes:
        (output / "android" / relative).write_text(after)
        patch.extend(difflib.unified_diff(before.splitlines(True), after.splitlines(True),
                                         "original/android/" + relative, "local/android/" + relative))
        manifest.append(dict(file="android/" + relative,
                             originalSha256=hashlib.sha256(before.encode()).hexdigest(),
                             patchedSha256=hashlib.sha256(after.encode()).hexdigest()))
    (output / "local-backend.patch").write_text("".join(patch))
    report = dict(baseUrl=base_url, files=manifest, originalModified=False,
                  scope="23 audited business API host methods and ordinary form encryption switch",
                  limits=["Explicit encrypted APIs remain unsupported", "Native signing code is unchanged",
                          "SDK/WebView/Unity/media traffic is not fully redirected; this is not network isolation",
                          "No startup, hardware, activation or teaching checks are removed"])
    (output / "local-backend-overlay.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n")
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--base-url", default="http://127.0.0.1:8765")
    args = parser.parse_args()
    report = prepare(args.output, args.base_url)
    print("Prepared %d files in %s; review local-backend.patch, then run scripts/build.py there" %
          (len(report["files"]), args.output.resolve()))


if __name__ == "__main__":
    main()
