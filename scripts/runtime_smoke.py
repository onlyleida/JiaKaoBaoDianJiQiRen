#!/usr/bin/env python3
"""Collect installation/startup evidence in a disposable Linux Actions runner."""
import hashlib
import json
import os
from pathlib import Path
import re
import select
import shutil
import subprocess
import sys
import time
import urllib.request
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
PACKAGE = "cn.mucang.android.jiakaoyi.teachingk2"
COMPONENT = PACKAGE + "/cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TeachSplashActivity"
API = os.environ.get("JIAKAO_RUNTIME_API", "30")
if API not in {"28", "30"}:
    raise SystemExit("Supported runtime check API levels: 28, 30")
IMAGE = f"system-images;android-{API};google_apis;x86"
SERIAL = "emulator-5562"
LOCAL_BACKEND = os.environ.get("JIAKAO_LOCAL_BACKEND") == "1"
INTERACT = os.environ.get("JIAKAO_STARTUP_INTERACT") == "1"
WORKBENCH = os.environ.get("JIAKAO_LOCAL_WORKBENCH") == "1"


def main():
    if os.environ.get("GITHUB_ACTIONS") != "true" or sys.platform != "linux":
        raise SystemExit("This check runs only on a disposable Linux GitHub Actions runner.")
    out = ROOT / "dist" / "runtime"
    out.mkdir(parents=True, exist_ok=True)
    sdk = Path(os.environ.get("ANDROID_HOME") or os.environ["ANDROID_SDK_ROOT"])
    adb = [str(sdk / "platform-tools" / "adb"), "-s", SERIAL]
    apk = Path(os.environ.get("JIAKAO_RUNTIME_APK", str(ROOT / "dist" / "jiakaoyi-coach-11.6.5-rebuilt-debug.apk")))
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
    report["local_backend_requested"] = LOCAL_BACKEND
    emulator = None
    log = None
    backend = None
    backend_log = None
    live_log = None
    logcat_process = None

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

    def startup_clicks(phase="startup"):
        # Match observed UI nodes; never guess coordinates or tap other dialogs.
        report.setdefault("startup_ui_actions", [])
        allowed = {(PACKAGE, "同意并使用"), ("com.android.systemui", "Start now"),
                   ("com.android.systemui", "START NOW"), ("com.android.systemui", "立即开始")}
        for index in range(6):
            remote = "/sdcard/ci-%s-step-%d.xml" % (phase, index)
            run(adb + ["shell", "rm", "-f", remote])
            run(adb + ["shell", "uiautomator", "dump", remote], check=False, timeout=25)
            xml = run(adb + ["shell", "cat", remote], check=False).stdout
            (out / ("ui-%s-step-%d.xml" % (phase, index))).write_text(xml)
            try:
                tree = ET.fromstring(xml)
            except ET.ParseError:
                return
            match = None
            for node in tree.iter("node"):
                if (node.get("package"), node.get("text")) in allowed and node.get("enabled") == "true":
                    bounds = re.fullmatch(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", node.get("bounds", ""))
                    if bounds:
                        x1, y1, x2, y2 = map(int, bounds.groups())
                        if x2 > x1 and y2 > y1:
                            match = node, (x1 + x2) // 2, (y1 + y2) // 2
                            break
            if match is None:
                return
            node, x, y = match
            screenshot("screen-%s-before-action-%d.png" % (phase, index))
            run(adb + ["shell", "input", "tap", str(x), str(y)])
            report["startup_ui_actions"].append(dict(phase=phase, text=node.get("text"), package=node.get("package"), x=x, y=y))
            time.sleep(4)

    def ui_tree(name):
        remote = "/sdcard/" + name + ".xml"
        run(adb + ["shell", "rm", "-f", remote])
        run(adb + ["shell", "uiautomator", "dump", remote], timeout=25)
        xml = run(adb + ["shell", "cat", remote]).stdout
        (out / (name + ".xml")).write_text(xml)
        try:
            return ET.fromstring(xml)
        except ET.ParseError as error:
            raise RuntimeError("Invalid current UI XML: " + name) from error

    def tap_text(text, name):
        tree = ui_tree(name)
        for node in tree.iter("node"):
            if node.get("package") != PACKAGE or node.get("text") != text or node.get("enabled") != "true":
                continue
            match = re.fullmatch(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", node.get("bounds", ""))
            if match:
                x1, y1, x2, y2 = map(int, match.groups())
                if x2 > x1 and y2 > y1:
                    run(adb + ["shell", "input", "tap", str((x1 + x2) // 2), str((y1 + y2) // 2)])
                    report.setdefault("workbench_actions", []).append(text)
                    time.sleep(3)
                    return
        raise RuntimeError("Expected visible local UI button not found: " + text)

    def require_text(prefix, name):
        tree = ui_tree(name)
        if not any(node.get("package") == PACKAGE and node.get("text", "").startswith(prefix)
                   for node in tree.iter("node")):
            screenshot(name + ".png")
            raise RuntimeError("Expected UI state not found: " + prefix)
        screenshot(name + ".png")

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
                   "-port", "5562", "-skin", "1280x720", "-no-window", "-no-audio", "-no-boot-anim",
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
        if not LOCAL_BACKEND:
            run(adb + ["shell", "settings", "put", "global", "airplane_mode_on", "1"])
            run(adb + ["shell", "cmd", "connectivity", "airplane-mode", "enable"], check=False)
            run(adb + ["shell", "svc", "wifi", "disable"])
            run(adb + ["shell", "svc", "data", "disable"])
        run(adb + ["shell", "wm", "size", "1280x720"], "display-size")
        run(adb + ["shell", "wm", "density", "160"], "display-density")
        report["display"] = {"size": "1280x720", "framebuffer_skin": "1280x720", "density": 160}
        run(adb + ["shell", "input", "keyevent", "82"])
        for tool in ["iptables", "ip6tables"]:
            run(adb + ["shell", tool, "-I", "OUTPUT", "1", "!", "-o", "lo",
                       "-j", "REJECT"], tool + "-guest-block")
            run(adb + ["shell", tool, "-S", "OUTPUT"], tool + "-output-rules")
        report["network_controls"] = ["guest IPv4/IPv6 non-loopback OUTPUT rejected before APK installation"]
        if LOCAL_BACKEND:
            backend_log = (out / "backend.log").open("w")
            backend = subprocess.Popen([sys.executable, str(ROOT / "server/local_server.py"),
                                        "--data-dir", str(out / "backend-data"), "serve"],
                                       stdout=backend_log, stderr=subprocess.STDOUT, env=env)
            deadline = time.monotonic() + 20
            while time.monotonic() < deadline:
                try:
                    with urllib.request.urlopen("http://127.0.0.1:8765/__local/health", timeout=2) as response:
                        report["backend_health"] = json.load(response)
                    break
                except OSError:
                    time.sleep(0.5)
            else:
                raise RuntimeError("Local backend did not become ready")
            run(adb + ["reverse", "tcp:8765", "tcp:8765"], "adb-reverse")
            # Toybox nc can quit immediately on stdin EOF. Keep stdin open until
            # the response arrives instead of using subprocess.run(input=...).
            probe = subprocess.Popen(adb + ["shell", "toybox", "nc", "-w", "5", "127.0.0.1", "8765"],
                                     env=env, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
                                     stderr=subprocess.STDOUT)
            received = bytearray()
            try:
                probe.stdin.write(b"GET /__local/health HTTP/1.0\r\nHost: localhost\r\n\r\n")
                probe.stdin.flush()
                deadline = time.monotonic() + 15
                while time.monotonic() < deadline:
                    readable, _, _ = select.select([probe.stdout], [], [], 0.5)
                    if readable:
                        chunk = os.read(probe.stdout.fileno(), 65536)
                        if not chunk:
                            break
                        received.extend(chunk)
                        if b'"success":true' in received:
                            break
                    if probe.poll() is not None:
                        break
            finally:
                probe.stdin.close()
                if probe.poll() is None:
                    probe.terminate()
                probe.wait(timeout=5)
            (out / "guest-backend-health.txt").write_bytes(received)
            if b'"success":true' not in received:
                raise RuntimeError("Guest cannot reach local backend")
            report["guest_backend_reachable"] = True
            report["network_controls"].append("only loopback backend via adb reverse; other guest egress blocked")
        else:
            report["network_controls"].extend(["airplane mode", "wifi/mobile data disabled"])
        result = run(adb + ["install", "--abi", "armeabi-v7a", "-g", str(apk)],
                     "install", timeout=180, check=False)
        report["installation_success"] = result.returncode == 0 and "Success" in result.stdout
        if not report["installation_success"]:
            report["status"] = "installation_failed"
            return
        run(adb + ["shell", "dumpsys", "package", PACKAGE], "installed-package")
        if INTERACT:
            for permission in ("MANAGE_EXTERNAL_STORAGE", "SYSTEM_ALERT_WINDOW"):
                run(adb + ["shell", "appops", "set", "--uid", PACKAGE, permission, "allow"],
                    "appop-" + permission, check=False)
        run(adb + ["logcat", "-c"])
        live_log = (out / "logcat-live.txt").open("w")
        logcat_process = subprocess.Popen(adb + ["logcat", "-v", "threadtime"], env=env,
                                         stdout=live_log, stderr=subprocess.STDOUT)
        launch_started = time.monotonic()
        try:
            launch = run(adb + ["shell", "am", "start", "-W", "-n", COMPONENT],
                         "launch", check=False)
            report["launch_command_exit_code"] = launch.returncode
            report["launch_accepted"] = (launch.returncode == 0
                                         and bool(re.search(r"^Status:\s*ok\s*$", launch.stdout, re.M))
                                         and "Error:" not in launch.stdout)
        except subprocess.TimeoutExpired as error:
            report["launch_command_timed_out"] = True
            report["launch_accepted"] = False
            partial = error.stdout or b""
            if isinstance(partial, bytes):
                partial = partial.decode(errors="replace")
            (out / "launch.txt").write_text(partial + "\nHost wait timed out; collecting device state.\n")
        time.sleep(10)
        screenshot("screen-after-10s.png")
        report["app_pid_at_first_capture"] = run(adb + ["shell", "pidof", PACKAGE], check=False).stdout.strip()
        if INTERACT:
            startup_clicks()
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
        logcat = (out / "logcat-live.txt").read_text()
        deaths = [line for line in logcat.splitlines() if "Process " + PACKAGE in line and "has died" in line]
        report["process_death_count"] = len(deaths)
        report["process_death_lines"] = deaths[-50:]
        report["observed_seconds_since_launch"] = round(time.monotonic() - launch_started, 1)
        report["same_process_across_captures"] = bool(report["app_pid_after_45s"]) and (
            report["app_pid_after_45s"] == report["app_pid_at_first_capture"])
        report["stable_process_observed"] = (report["same_process_across_captures"]
                                               and not report["process_death_lines"]
                                               and not report["crash_buffer_contains_package"])
        screenshot("screen-after-45s.png")
        run(adb + ["pull", "/data/tombstones", str(out / "tombstones")],
            "tombstones-pull", timeout=30, check=False)
        run(adb + ["shell", "uiautomator", "dump", "/sdcard/ci-window.xml"],
            "ui-dump", timeout=30, check=False)
        run(adb + ["pull", "/sdcard/ci-window.xml", str(out / "ui.xml")], check=False)
        if report["stable_process_observed"]:
            maps = run(adb + ["shell", "cat", "/proc/" + report["app_pid_after_45s"] + "/maps"],
                       "application-memory-maps", check=False).stdout
            report["speech_native_loaded"] = "/libmsc.so" in maps
        if WORKBENCH and report["stable_process_observed"]:
            require_text("本地调试工作台", "screen-workbench-normal-start")
            report["workbench_reached_through_normal_start"] = True
            tap_text("本地接口登录", "workbench-before-login")
            tree = ui_tree("workbench-login-form")
            inputs = [node for node in tree.iter("node") if node.get("class") == "android.widget.EditText"]
            if len(inputs) != 1:
                raise RuntimeError("Expected one local credential input")
            bounds = re.fullmatch(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", inputs[0].get("bounds", ""))
            if not bounds:
                raise RuntimeError("Local credential input has no bounds")
            x1, y1, x2, y2 = map(int, bounds.groups())
            run(adb + ["shell", "input", "tap", str((x1 + x2) // 2), str((y1 + y2) // 2)])
            run(adb + ["shell", "input", "text", "12345678"])
            tap_text("登录", "workbench-submit-login")
            require_text("接口会话：已登录", "screen-workbench-logged-in")
            tap_text("检查接口会话", "workbench-check-session")
            require_text("接口会话：有效", "screen-workbench-session-valid")
            tap_text("退出接口会话", "workbench-logout")
            require_text("接口会话：已退出", "screen-workbench-logged-out")
            tap_text("检查接口会话", "workbench-check-after-logout")
            require_text("接口会话：未登录或已过期", "screen-workbench-session-cleared")
            report["workbench_login_check_logout_ui_verified"] = True
            report["workbench_post_logout_check"] = "UI observes cleared token; server revocation verified separately by HTTP contract tests"
        if os.environ.get("JIAKAO_NATIVE_PAGES") == "1" and report["stable_process_observed"]:
            # Inspect an existing native page independently of the unavailable
            # Unity assets. This is diagnostic navigation, not normal startup.
            settings_component = PACKAGE + "/cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity"
            if WORKBENCH:
                tap_text("原生设置", "workbench-open-native-settings")
                result = None
            else:
                result = run(adb + ["shell", "am", "start", "-W", "-n", settings_component,
                                    "--ei", "key.loadType", "0"], "native-settings-launch", check=False)
            time.sleep(10)
            screenshot("screen-native-settings.png")
            run(adb + ["shell", "uiautomator", "dump", "/sdcard/ci-settings.xml"],
                "native-settings-dump", check=False, timeout=25)
            run(adb + ["pull", "/sdcard/ci-settings.xml", str(out / "native-settings-ui.xml")], check=False)
            after = run(adb + ["shell", "dumpsys", "activity", "activities"], "native-settings-activity", check=False).stdout
            pid = run(adb + ["shell", "pidof", PACKAGE], check=False).stdout.strip()
            report["native_settings"] = dict(navigation="local workbench button" if WORKBENCH else "explicit root adb activity start for native UI debugging",
                                             launch_exit_code=None if result is None else result.returncode, pid=pid,
                                             same_process=pid == report["app_pid_after_45s"] and bool(pid),
                                             resumed_lines=[line.strip() for line in after.splitlines()
                                                            if "ResumedActivity" in line])
            try:
                settings_tree = ET.fromstring((out / "native-settings-ui.xml").read_text())
                for node in settings_tree.iter("node"):
                    if node.get("package") != PACKAGE or node.get("text") != "语音设置":
                        continue
                    bounds = re.fullmatch(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", node.get("bounds", ""))
                    if not bounds:
                        continue
                    x1, y1, x2, y2 = map(int, bounds.groups())
                    run(adb + ["shell", "input", "tap", str((x1 + x2) // 2), str((y1 + y2) // 2)])
                    time.sleep(5)
                    screenshot("screen-native-voice-settings.png")
                    run(adb + ["shell", "uiautomator", "dump", "/sdcard/ci-voice.xml"], check=False, timeout=25)
                    run(adb + ["pull", "/sdcard/ci-voice.xml", str(out / "native-voice-ui.xml")], check=False)
                    voice_activity = run(adb + ["shell", "dumpsys", "activity", "activities"],
                                         "native-voice-activity", check=False).stdout
                    report["native_settings"]["interaction"] = dict(tapped="语音设置", resumed_lines=[
                        line.strip() for line in voice_activity.splitlines() if "ResumedActivity" in line])
                    run(adb + ["shell", "input", "keyevent", "4"])
                    time.sleep(2)
                    screenshot("screen-native-settings-returned.png")
                    break
            except (OSError, ET.ParseError) as error:
                report["native_settings"]["interaction_error"] = str(error)
            report["native_settings"]["pid_after_interaction"] = run(adb + ["shell", "pidof", PACKAGE], check=False).stdout.strip()
            run(adb + ["logcat", "-b", "crash", "-d", "-v", "threadtime"], "crash-after-native-settings", check=False)
        if WORKBENCH and report.get("workbench_login_check_logout_ui_verified"):
            run(adb + ["shell", "input", "keyevent", "4"])
            time.sleep(2)
            require_text("本地调试工作台", "screen-workbench-returned-from-settings")
            tap_text("原生登录页", "workbench-open-native-login")
            time.sleep(6)
            screenshot("screen-native-login.png")
            # The original login page animates continuously; UIAutomator can
            # fail its idle wait without creating XML. We do not tap this page:
            # retain real pixels + foreground activity, then send Android Back.
            after = run(adb + ["shell", "dumpsys", "activity", "activities"], "native-login-activity").stdout
            if not any("LoginActivity" in line and "ResumedActivity" in line for line in after.splitlines()):
                raise RuntimeError("Original native LoginActivity did not resume")
            run(adb + ["shell", "input", "keyevent", "4"])
            time.sleep(3)
            require_text("本地调试工作台", "screen-workbench-returned-from-login")
            report["native_login_return_verified"] = True
            tap_text("重试原启动", "workbench-retry-original")
            time.sleep(12)
            startup_clicks("retry")
            time.sleep(25)
            require_text("本地调试工作台", "screen-workbench-after-retry")
            report["workbench_retry_return_verified"] = True
            pid = run(adb + ["shell", "pidof", PACKAGE], check=False).stdout.strip()
            report["app_pid_after_workbench_cycle"] = pid
            report["same_process_after_workbench_cycle"] = bool(pid) and pid == report["app_pid_after_45s"]
            crash = run(adb + ["logcat", "-b", "crash", "-d", "-v", "threadtime"], "crash-after-workbench", check=False).stdout
            report["workbench_crash_buffer_contains_package"] = PACKAGE in crash
            deaths = [line for line in (out / "logcat-live.txt").read_text().splitlines()
                      if "Process " + PACKAGE in line and "has died" in line]
            report["workbench_process_death_count"] = len(deaths)
            report["workbench_observed_seconds"] = round(time.monotonic() - launch_started, 1)
        report["status"] = "evidence_collected"
    except (OSError, RuntimeError, subprocess.TimeoutExpired) as error:
        report["status"] = "check_error"
        report["error"] = str(error)
    finally:
        if logcat_process is not None:
            logcat_process.terminate()
            try:
                logcat_process.wait(timeout=5)
            except subprocess.TimeoutExpired:
                logcat_process.kill()
                logcat_process.wait(timeout=5)
        if live_log is not None:
            live_log.close()
        if backend is not None:
            backend.terminate()
            try:
                backend.wait(timeout=10)
            except subprocess.TimeoutExpired:
                backend.kill()
                backend.wait(timeout=5)
            for table in ("requests", "events"):
                try:
                    run([sys.executable, ROOT / "server/local_server.py", "--data-dir", out / "backend-data",
                         "inspect", table, "--limit", "1000"], "backend-" + table, check=False)
                except (OSError, subprocess.TimeoutExpired):
                    pass
        if backend_log is not None:
            backend_log.close()
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
