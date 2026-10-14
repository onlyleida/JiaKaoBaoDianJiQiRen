#!/usr/bin/env python3
"""Collect installation/startup evidence in a disposable Linux Actions runner."""
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]
PACKAGE = "cn.mucang.android.jiakaoyi.teachingk2"
COMPONENT = PACKAGE + "/cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TeachSplashActivity"
API = os.environ.get("JIAKAO_RUNTIME_API", "30")
if API not in {"28", "30"}:
    raise SystemExit("Supported runtime check API levels: 28, 30")
IMAGE = f"system-images;android-{API};google_apis;x86"
SERIAL = "emulator-5562"


def main():
    if os.environ.get("GITHUB_ACTIONS") != "true" or sys.platform != "linux":
        raise SystemExit("This check runs only on a disposable Linux GitHub Actions runner.")
    out = ROOT / "dist" / "runtime"
    out.mkdir(parents=True, exist_ok=True)
    sdk = Path(os.environ.get("ANDROID_HOME") or os.environ["ANDROID_SDK_ROOT"])
    adb = [str(sdk / "platform-tools" / "adb"), "-s", SERIAL]
    apk = ROOT / "dist" / "jiakaoyi-coach-11.6.5-rebuilt-debug.apk"
    env = dict(os.environ)
    for key, folder in [("ANDROID_AVD_HOME", "ci-avd"),
                        ("ANDROID_EMULATOR_HOME", "ci-emulator"),
                        ("ANDROID_USER_HOME", "ci-android")]:
        path = ROOT / ".cache" / folder
        path.mkdir(parents=True, exist_ok=True)
        env[key] = str(path)
    report = {"status": "started", "source_commit": os.getenv("GITHUB_SHA"),
              "image": IMAGE, "serial": SERIAL, "package": PACKAGE,
              "apk_sha256": hashlib.sha256(apk.read_bytes()).hexdigest(),
              "screenshots_saved": [], "screenshot_errors": [],
              "first_screen_verified": False,
              "full_teaching_functionality_tested": False}
    emulator = None
    log = None

    def run(args, label=None, timeout=60, check=True, stdin=None):
        result = subprocess.run([str(a) for a in args], env=env, input=stdin,
                                stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                text=True, timeout=timeout)
        if label:
            (out / (label + ".txt")).write_text(result.stdout)
        if check and result.returncode:
            raise RuntimeError(f"{label or args[0]} exited {result.returncode}: {result.stdout[-600:]}")
        return result

    def screenshot(name):
        result = subprocess.run(adb + ["exec-out", "screencap", "-p"], env=env,
                                stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=30)
        if result.returncode == 0 and result.stdout.startswith(b"\x89PNG\r\n\x1a\n"):
            (out / name).write_bytes(result.stdout)
            report["screenshots_saved"].append(name)
        else:
            report["screenshot_errors"].append({"file": name, "exit_code": result.returncode,
                                                "stderr": result.stderr.decode(errors="replace")[-600:]})

    try:
        run([sdk / "emulator/emulator", "-version"], "emulator-version", check=False)
        properties = sdk / f"system-images/android-{API}/google_apis/x86/source.properties"
        if properties.is_file():
            shutil.copyfile(properties, out / "system-image-source.properties")
        if Path("/dev/kvm").exists():
            run(["sudo", "chmod", "a+rw", "/dev/kvm"], "kvm-permission")
        manager = shutil.which("avdmanager") or str(sdk / "cmdline-tools/latest/bin/avdmanager")
        run([manager, "create", "avd", "--force", "--name", "JiaKaoRebuildSmoke",
             "--package", IMAGE, "--device", "pixel_2"], "avd-create", stdin="no\n")
        command = [str(sdk / "emulator/emulator"), "-avd", "JiaKaoRebuildSmoke",
                   "-port", "5562", "-no-window", "-no-audio", "-no-boot-anim",
                   "-no-snapshot", "-wipe-data", "-gpu", "swiftshader",
                   "-memory", "2048", "-cores", "2", "-no-metrics",
                   "-camera-front", "emulated", "-camera-back", "emulated"]
        log = (out / "emulator.log").open("w")
        emulator = subprocess.Popen(command, env=env, stdout=log, stderr=subprocess.STDOUT)
        deadline = time.monotonic() + 420
        while time.monotonic() < deadline:
            if emulator.poll() is not None:
                raise RuntimeError("Emulator exited before boot; see emulator.log")
            boot = run(adb + ["shell", "getprop", "sys.boot_completed"], check=False, timeout=15)
            if boot.returncode == 0 and boot.stdout.strip() == "1":
                break
            time.sleep(3)
        else:
            raise RuntimeError("Emulator did not complete boot within 420 seconds")
        abi = run(adb + ["shell", "getprop", "ro.product.cpu.abilist"], "abis").stdout.strip()
        report["abis"] = abi.split(",")
        if "armeabi-v7a" not in report["abis"]:
            report["status"] = "unsupported_abi"
            return
        run(adb + ["root"], "adb-root")
        run(adb + ["wait-for-device"])
        if "uid=0" not in run(adb + ["shell", "id"]).stdout:
            raise RuntimeError("Root unavailable for guest network blocking; app not installed")
        run(adb + ["shell", "settings", "put", "global", "airplane_mode_on", "1"])
        run(adb + ["shell", "cmd", "connectivity", "airplane-mode", "enable"], check=False)
        run(adb + ["shell", "svc", "wifi", "disable"])
        run(adb + ["shell", "svc", "data", "disable"])
        run(adb + ["shell", "input", "keyevent", "82"])
        for tool in ["iptables", "ip6tables"]:
            run(adb + ["shell", tool, "-I", "OUTPUT", "1", "!", "-o", "lo",
                       "-j", "REJECT"], tool + "-guest-block")
            run(adb + ["shell", tool, "-S", "OUTPUT"], tool + "-output-rules")
        report["network_controls"] = ["airplane mode", "wifi/mobile data disabled",
                                      "guest IPv4/IPv6 non-loopback OUTPUT rejected before APK installation"]
        result = run(adb + ["install", "--abi", "armeabi-v7a", "-g", str(apk)],
                     "install", timeout=180, check=False)
        report["installation_success"] = result.returncode == 0 and "Success" in result.stdout
        if not report["installation_success"]:
            report["status"] = "installation_failed"
            return
        run(adb + ["shell", "dumpsys", "package", PACKAGE], "installed-package")
        run(adb + ["logcat", "-c"])
        launch = run(adb + ["shell", "am", "start", "-W", "-n", COMPONENT],
                     "launch", check=False)
        report["launch_command_exit_code"] = launch.returncode
        report["launch_accepted"] = (launch.returncode == 0
                                     and bool(re.search(r"^Status:\s*ok\s*$", launch.stdout, re.M))
                                     and "Error:" not in launch.stdout)
        time.sleep(10)
        screenshot("screen-after-10s.png")
        time.sleep(35)
        report["app_pid_after_45s"] = run(adb + ["shell", "pidof", PACKAGE],
                                             check=False).stdout.strip()
        report["process_alive_after_45s"] = bool(report["app_pid_after_45s"])
        activity = run(adb + ["shell", "dumpsys", "activity", "activities"],
                       "activities", check=False).stdout
        report["resumed_activity_lines"] = [line.strip() for line in activity.splitlines()
                                             if "ResumedActivity" in line or "mResumedActivity" in line]
        report["app_resumed_after_45s"] = any(PACKAGE in line for line in report["resumed_activity_lines"])
        crash = run(adb + ["logcat", "-b", "crash", "-d", "-v", "threadtime"],
                    "crash-log", check=False).stdout
        report["crash_buffer_contains_package"] = PACKAGE in crash
        run(adb + ["logcat", "-d", "-v", "threadtime", "-t", "5000"], "logcat", check=False)
        screenshot("screen-after-45s.png")
        run(adb + ["shell", "uiautomator", "dump", "/sdcard/ci-window.xml"],
            "ui-dump", timeout=30, check=False)
        run(adb + ["pull", "/sdcard/ci-window.xml", str(out / "ui.xml")], check=False)
        report["status"] = "evidence_collected"
    except (OSError, RuntimeError, subprocess.TimeoutExpired) as error:
        report["status"] = "check_error"
        report["error"] = str(error)
    finally:
        (out / "ci-runtime-verification.json").write_text(json.dumps(report, indent=2) + "\n")
        print(json.dumps(report, indent=2), flush=True)
        if emulator is not None and emulator.poll() is None:
            try:
                run(adb + ["emu", "kill"], timeout=15, check=False)
            except (OSError, subprocess.TimeoutExpired):
                pass
            try:
                emulator.wait(timeout=15)
            except subprocess.TimeoutExpired:
                emulator.terminate()
        if log is not None:
            log.close()


if __name__ == "__main__":
    main()
