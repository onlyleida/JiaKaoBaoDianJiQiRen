"""HTTP contract tests against the APK call shapes, including persistence and downloads."""
import gzip
import hashlib
import http.client
import json
from pathlib import Path
import tempfile
import threading
import unittest
from urllib.parse import urlencode, urlsplit

from local_server import Backend, HERE, make_server
from prepare_local_apk import HOST_FILES, FW, prepare, local_origin


class Contracts(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.directory = Path(self.temp.name)
        self.fixtures = self.directory / "fixtures.json"
        self.fixtures.write_text((HERE / "fixtures.json").read_text())
        self.start()

    def start(self):
        self.backend = Backend(self.directory / "data", self.fixtures)
        self.server = make_server(self.backend, port=0)
        self.port = self.server.server_port
        self.backend.public_url = "http://127.0.0.1:" + str(self.port)
        self.thread = threading.Thread(target=self.server.serve_forever, daemon=True)
        self.thread.start()

    def stop(self):
        self.server.shutdown()
        self.server.server_close()
        self.thread.join()

    def tearDown(self):
        self.stop()
        self.temp.cleanup()

    def request(self, path, method="GET", query=None, form=None, body=None, headers=None, device="unit-A"):
        query = dict(query or {})
        if device is not None:
            query["deviceNum"] = device
        headers = dict(headers or {})
        if form is not None:
            body = urlencode(form).encode()
            headers["Content-Type"] = "application/x-www-form-urlencoded"
        if body is not None and not isinstance(body, bytes):
            body = json.dumps(body).encode()
            headers.setdefault("Content-Type", "application/octet-stream")
        url = path + ("?" + urlencode(query) if query else "")
        connection = http.client.HTTPConnection("127.0.0.1", self.port, timeout=5)
        try:
            connection.request(method, url, body=body, headers=headers)
            response = connection.getresponse()
            data = response.read()
            if response.getheader("Content-Type", "").startswith("application/json") and data:
                data = json.loads(data)
            return response.status, data, dict(response.getheaders())
        finally:
            connection.close()

    def ok(self, *args, **kwargs):
        status, envelope, _ = self.request(*args, **kwargs)
        self.assertEqual(status, 200, envelope)
        self.assertTrue(envelope["success"], envelope)
        self.assertEqual(envelope["errorCode"], 0)
        return envelope["data"]

    def test_config_octet_json_merge_replace_validation_and_restart(self):
        save = "/api/open/device/save-device-config.htm"
        get = "/api/open/device/get-device-config.htm"
        self.ok(save, "POST", query={"isFull": "true"}, body=[{"code": "11002", "value": "false"}])
        self.ok(save, "POST", body=[{"code": "20005", "value": ""}])
        result = self.ok(get, query={"examSiteId": 52})
        self.assertEqual(result["itemList"], [{"code": "11002", "value": "false"}, {"code": "20005", "value": ""}])
        self.assertFalse(result["hasMore"])
        status, _, _ = self.request(save, "POST", query={"isFull": "true"}, body=[{"code": "11002", "value": False}])
        self.assertEqual(status, 400)
        self.assertEqual(len(self.ok(get)["itemList"]), 2)  # rejected replacement must be atomic
        self.assertEqual(self.ok(get, device="unit-B")["itemList"], [])
        self.stop()
        self.start()
        self.assertEqual(len(self.ok(get)["itemList"]), 2)
        self.ok(save, "POST", query={"isFull": "true"}, body=[])
        self.assertEqual(self.ok(get)["itemList"], [])

    def test_binding_settings_and_paas_shapes(self):
        car = self.ok("/api/open/device/bind-car.htm", "POST", form={"plateNum": "本地 A+B 车"})
        self.assertEqual(car["plateNum"], "本地 A+B 车")
        self.assertEqual(self.ok("/api/open/device/query-device-info.htm"), car)
        self.assertIs(self.ok("/api/open/device/settings.htm", "POST", form={"payFirst": "true", "forceEnd": "false"}), True)
        self.assertTrue(self.ok("/api/open/device/get-device-info.htm")["payFirst"])
        self.assertFalse(self.ok("/api/open/device/get-paas-info.htm")["passEnabled"])

    def test_login_notice_before_tokens_are_installed_and_revocation(self):
        config = self.ok("/api/open/user-config/get-login-config.htm")
        self.assertEqual(config["configs"][0]["loginMethod"], "MOBILE_OR_IDCARD")
        login = "/api/open/login/submit.htm"
        form = dict(loginType="MOBILE_OR_IDCARD", deviceType="ROBOT", data=json.dumps({"value": "local-demo"}))
        user = self.ok(login, "POST", form=form)
        self.assertLess(user["studentId"], 0)
        notice = self.ok("/api/open/user/login-notice.htm", "POST", form={
            "studentId": user["studentId"], "mucangId": user["mucangId"], "name": user["name"],
            "loginMode": "STUDENT", "loginType": "8"})
        self.assertIsInstance(notice, dict)
        self.assertEqual(notice["orderRecordId"], 0)
        query = {"xyToken": user["xyToken"]}
        self.stop()
        self.start()
        self.ok("/api/open/user/check-logout.htm", query=query)
        self.assertEqual(self.request("/api/open/user/check-logout.htm", query=query, device="unit-B")[0], 401)
        self.ok("/api/open/user/logout-notice.htm", query=dict(query, logout="false"))
        self.ok("/api/open/user/check-logout.htm", query=query)
        self.ok("/api/open/login/logout.htm")  # APK clears tokens before sending this request
        failed = self.request("/api/open/user/check-logout.htm", query=query)
        self.assertEqual(failed[1]["errorCode"], 44)
        form["data"] = json.dumps({"value": "not-a-local-account"})
        self.assertEqual(self.request(login, "POST", form=form)[0], 401)
        form["loginType"] = "FACE"
        self.assertEqual(self.request(login, "POST", form=form)[0], 501)

    def test_resource_version_scope_bytes_md5_range_and_missing_unity(self):
        upgrade = "/api/open/upgrade/check-upgrade.htm"
        self.assertEqual(self.ok(upgrade, "POST", body=[{"type": 100, "version": 0}])["itemList"], [])
        # This is a test byte fixture, never shipped as an actual Unity asset.
        source = self.directory / "sample.gz"
        payload = gzip.compress(b"resource bytes for contract test only")
        source.write_bytes(payload)
        info = self.backend.add_resource(source, "site", 2, 3, "52")
        query = dict(examSiteId=52, type=2, version=0)
        resource = self.ok("/api/open/owner/resource-manager/query-new.htm", query=query)
        self.assertEqual(resource["fileMd5"], hashlib.md5(payload).hexdigest())
        self.assertEqual(resource["fileSize"], len(payload))
        url = urlsplit(resource["url"]).path
        self.assertEqual(self.request(url)[1], payload)  # no transparent gzip decoding
        self.assertEqual(self.request(url, headers={"Range": "bytes=2-7"})[:2], (206, payload[2:8]))
        self.assertEqual(self.request(url, "HEAD")[1], b"")
        self.assertEqual(self.request(url, headers={"Range": "bytes=99999-"})[0], 416)
        self.assertIsNone(self.ok("/api/open/owner/resource-manager/query-new.htm", query=dict(query, version=3)))
        self.assertIsNone(self.ok("/api/open/owner/resource-manager/query-new.htm", query=dict(query, examSiteId=53)))
        self.backend.add_resource(source, "upgrade", 100, 2)
        resources = self.ok(upgrade, "POST", body=[{"type": 101, "version": 0}, {"type": 100, "version": 0}])["itemList"]
        self.assertEqual([r["type"] for r in resources], [100])
        self.assertEqual(resources[0]["md5"], info["md5"])
        self.assertIn("filePath", resources[0])
        self.assertEqual(self.ok(upgrade, "POST", body=[{"type": 100, "version": 2}])["itemList"], [])
        source.write_bytes(b"different bytes")
        with self.assertRaises(ValueError):
            self.backend.add_resource(source, "site", 2, 3, "52")
        self.assertEqual(self.request(url)[1], payload)

    def test_group_and_tile_resources_resolve_real_files(self):
        path = "/api/open/owner/group-config/update.htm"
        values = dict(groupId=52, type=2, configId=9, configName="Local voice")
        self.assertEqual(self.request(path, "POST", form=values)[0], 409)
        source = self.directory / "resource.zip"
        source.write_bytes(b"test-only-resource")
        self.backend.add_resource(source, "group", 2, 1, "52", "9")
        self.ok(path, "POST", form=values)
        group = self.ok("/api/open/owner/group-config/get-group-config.htm", query=dict(groupId=52, type=2))
        self.assertEqual(group["version"], 1)
        self.assertEqual(self.request(urlsplit(group["url"]).path)[1], source.read_bytes())
        map_md5 = "a" * 32
        self.backend.add_resource(source, "site", 20, 1, "52", map_md5=map_md5)
        tile = self.ok("/api/open/owner/map-tile/get-by-map.htm", query=dict(examSiteId=52, mapMd5=map_md5))
        self.assertEqual(tile["mapTileMd5"], hashlib.md5(source.read_bytes()).hexdigest())
        self.assertIsNone(self.ok("/api/open/owner/map-tile/get-by-map.htm", query=dict(examSiteId=52, mapMd5="b" * 32)))

    def test_fixture_paging_uses_pagesize(self):
        fixture = json.loads(self.fixtures.read_text())
        fixture["examSites"] = [{"examSiteId": i, "canPublic": True} for i in range(3)]
        self.fixtures.write_text(json.dumps(fixture))
        self.stop()
        self.start()
        page = self.ok("/api/open/owner/exam-site-map/list.htm", query={"pageSize": 2})
        self.assertEqual([s["examSiteId"] for s in page["itemList"]], [0, 1])
        self.assertTrue(page["hasMore"])
        last = self.ok("/api/open/owner/exam-site-map/list.htm", query={"pageSize": 2, "cursor": page["cursor"]})
        self.assertEqual(len(last["itemList"]), 1)
        self.assertFalse(last["hasMore"])

    def test_uploads_errors_and_no_secret_in_request_audit(self):
        path = "/api/open/device/user-heartbeat.htm"
        self.ok(path, "POST", form=dict(changeStudent="going", userId="local-student", inExam="false"),
                query={"xyToken": "private-token"})
        self.ok("/api/open/exam-record/save-exam-result.htm", "POST", body={"id": "test", "records": []})
        self.assertEqual(self.request("/api/unknown.htm")[0], 501)
        self.assertEqual(self.request(path)[0], 405)
        self.assertEqual(self.request(path, "POST", body=b"opaque", headers={"Content-Encoding": "tnpn2"})[0], 415)
        self.assertEqual(self.request("/api/open/device/save-device-config.htm", "POST", body=b"{bad")[0], 400)
        self.assertEqual(self.request("/files/../../local.sqlite3")[0], 404)
        with self.backend.connect() as db:
            events = db.execute("SELECT payload FROM events").fetchall()
            self.assertEqual(len(events), 2)
            self.assertNotIn("private-token", str([tuple(r) for r in events]))
            requests = db.execute("SELECT path FROM requests").fetchall()
            self.assertTrue(all("?" not in r[0] for r in requests))


class Overlay(unittest.TestCase):
    def test_isolated_output_exact_methods_and_fail_closed(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp) / "original"
            for relative in HOST_FILES:
                path = root / "android" / relative
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text('.method protected getApiHost()Ljava/lang/String;\n.locals 1\nconst-string v0, "https://original.invalid"\nreturn-object v0\n.end method\n')
            switch = root / "android" / FW / "utils/c0.smali"
            switch.parent.mkdir(parents=True)
            switch.write_text(".method public static a()Z\n.locals 1\nconst/4 v0, 0x1\nreturn v0\n.end method\n")
            for relative in ("scripts/build.py", "reports/apk-entry-coverage.json"):
                path = root / relative
                path.parent.mkdir(parents=True)
                path.write_text("fixture")
            out = Path(temp) / "local"
            report = prepare(out, "http://127.0.0.1:8765", root)
            self.assertEqual(len(report["files"]), 24)
            self.assertIn("0x1", switch.read_text())
            self.assertIn("0x0", (out / "android" / FW / "utils/c0.smali").read_text())
            self.assertTrue((out / "local-backend.patch").is_file())
            with self.assertRaises(ValueError):
                prepare(out, "http://127.0.0.1:8765", root)
            switch.write_text("unexpected version")
            new = Path(temp) / "invalid"
            with self.assertRaises(ValueError):
                prepare(new, "http://127.0.0.1:8765", root)
            self.assertFalse(new.exists())
        for url in ("https://original.invalid", "http://8.8.8.8:80", 'http://127.0.0.1:8765/evil', 'http://x:y@127.0.0.1:80'):
            with self.assertRaises(ValueError):
                local_origin(url)


if __name__ == "__main__":
    unittest.main()
