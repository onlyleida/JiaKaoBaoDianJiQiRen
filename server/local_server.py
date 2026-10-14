#!/usr/bin/env python3
"""APK 11.6.5 local compatibility backend. Python 3.9+, standard library only.

Wire contracts are traced in CONTRACTS.md. Persistence, local credentials and
error codes are our design, not a recovery of the vendor implementation.
"""
import argparse
from contextlib import contextmanager
import hashlib
import hmac
import json
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import re
import secrets
import sqlite3
import sys
import time
from urllib.parse import parse_qs, urlsplit

HERE = Path(__file__).resolve().parent
MAX_BODY = 8 * 1024 * 1024
SITE_TYPES = (1, 2, 3, 4, 5, 9, 14, 20, 21, 22, 24, 25, 26, 30)
SCHEMA = """
CREATE TABLE IF NOT EXISTS devices (device TEXT PRIMARY KEY, settings TEXT, car TEXT);
CREATE TABLE IF NOT EXISTS configs (device TEXT, code TEXT, value TEXT,
 PRIMARY KEY(device, code));
CREATE TABLE IF NOT EXISTS sessions (token TEXT PRIMARY KEY, device TEXT,
 user TEXT, expires INTEGER);
CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY, created INTEGER,
 device TEXT, path TEXT, payload TEXT);
CREATE TABLE IF NOT EXISTS requests (id INTEGER PRIMARY KEY, created INTEGER,
 device TEXT, method TEXT, path TEXT, status INTEGER, error_code INTEGER);
CREATE TABLE IF NOT EXISTS resources (family TEXT, scope TEXT, type INTEGER,
 programme TEXT, version INTEGER, digest TEXT, md5 TEXT, size INTEGER, metadata TEXT,
 PRIMARY KEY(family,scope,type,programme,version));
CREATE TABLE IF NOT EXISTS groups (group_id TEXT, type INTEGER, config TEXT,
 PRIMARY KEY(group_id,type));
"""

# method, body codec, handler, meaning. Only explicitly traced endpoints succeed.
ROUTES = {}


def route(method, path, codec, handler, description):
    ROUTES[path] = dict(method=method, codec=codec, handler=handler, description=description)


for path, handler, description in [
    ("/api/open/device/get-device-info.htm", "device", "persistent local device settings"),
    ("/api/open/device/query-device-info.htm", "car", "persistent local car binding"),
    ("/api/open/device/get-paas-info.htm", "paas", "PaaS disabled local fixture"),
    ("/api/open/device/get-device-config.htm", "configs", "device-scoped string config list"),
    ("/api/open/user-config/get-login-config.htm", "login_config", "local account login only"),
    ("/api/open/user/check-logout.htm", "check_login", "validate local session"),
    ("/api/open/login/logout.htm", "logout", "revoke local session"),
    ("/api/open/user/logout-notice.htm", "logout_notice", "record notice, optionally revoke"),
    ("/api/open/owner/resource-manager/query-new.htm", "resource", "site resource or null"),
    ("/api/open/owner/group-config/get-group-config.htm", "group", "local group config or null"),
    ("/api/open/owner/exam-site-map/get-map.htm", "site", "exam site fixture or null"),
    ("/api/open/owner/map-tile/get-by-map.htm", "tile", "matching map tile fixture or null"),
    ("/api/open/owner/exam-site-map/list.htm", "sites", "paged exam site fixtures"),
    ("/api/open/owner/exam-site/list-public-site.htm", "sites", "paged public site fixtures"),
]:
    route("GET", path, "none", handler, description)

LIST_FIXTURES = {
    "/api/open/train-program-config/list.htm": "trainPrograms",
    "/api/open/owner/teach-level-config/list.htm": "teachLevels",
    "/api/open/train-record/get-user-train-list.htm": "trainRecords",
    "/api/open/train-step/get-user-train-list.htm": "trainSteps",
    "/api/open/train-deduct/get-error-point-list.htm": "errorPoints",
    "/api/open/train-deduct/get-error-area-list.htm": "errorAreas",
    "/api/open/train-deduct/get-error-stat-list.htm": "errorStats",
}
for path in LIST_FIXTURES:
    post = "/train-deduct/" in path
    route("POST" if post else "GET", path, "form" if post else "none",
          "fixture", "fixture list; no grading/statistics calculation")
for path, codec, handler, description in [
    ("/api/open/device/bind-car.htm", "form", "bind", "persist plateNum"),
    ("/api/open/device/settings.htm", "form", "settings", "persist payFirst/forceEnd; boolean data"),
    ("/api/open/device/save-device-config.htm", "json", "save_configs", "merge/replace string configs"),
    ("/api/open/login/submit.htm", "form", "login", "MOBILE_OR_IDCARD local-demo login"),
    ("/api/open/user/admin-login.htm", "form", "admin_login", "local loginInfo fixture only"),
    ("/api/open/user/login-notice.htm", "form", "login_notice", "confirm pending local login; class time object"),
    ("/api/open/upgrade/check-upgrade.htm", "json", "upgrade", "registered Unity 100/101 only"),
    ("/api/open/update/check-update.htm", "json", "device_update", "no local firmware or APK updates"),
    ("/api/open/owner/group-config/update.htm", "form", "save_group", "persist group config choice"),
]:
    route("POST", path, codec, handler, description)
for path, codec in [
    ("/api/open/device/report.htm", "form"),
    ("/api/open/device/user-heartbeat.htm", "form"),
    ("/api/open/device/record-sim-info.htm", "form"),
    ("/api/open/user-train-course/saveData.htm", "form"),
    ("/api/open/user-mission/upload-robot-data.htm", "form"),
    ("/api/open/behavior/uploadData", "form"),
    ("/api/open/brake/record-reason.htm", "form"),
    ("/api/open/fault-code/upload.htm", "text"),
    ("/api/open/exam-record/save-exam-result.htm", "json"),
]:
    route("POST", path, codec, "event", "persist upload only; no billing/control/grading")
for path in ["/api/open/device/save-use-record.htm", "/api/open/login-time/report.htm"]:
    route("GET", path, "none", "event", "persist event despite GET method")


class ApiError(Exception):
    def __init__(self, status, message, code=None):
        super().__init__(message)
        self.status = status
        self.code = code or 90000 + status


def dumps(value):
    return json.dumps(value, ensure_ascii=False, separators=(",", ":"), allow_nan=False)


def parse_json(value):
    try:
        return json.loads(value, parse_constant=lambda _: (_ for _ in ()).throw(ValueError()))
    except (ValueError, TypeError, UnicodeDecodeError):
        raise ApiError(400, "Invalid UTF-8 JSON")


def number(value, name):
    try:
        if isinstance(value, bool):
            raise ValueError()
        result = int(str(value))
        if not -(2**63) <= result < 2**63:
            raise ValueError()
        return result
    except (ValueError, TypeError):
        raise ApiError(400, name + " must be an integer")


def boolean(value, name):
    if str(value).lower() not in ("true", "false"):
        raise ApiError(400, name + " must be true or false")
    return str(value).lower() == "true"


def item_list(items):
    return dict(itemList=items, hasMore=False, pageCount=1 if items else 0,
                total=len(items), cursor="")


def redact(value):
    """Avoid storing credentials, location/identity fields in local upload logs."""
    if isinstance(value, dict):
        return {k: "[redacted]" if any(s in k.lower() for s in (
            "token", "password", "idcard", "phone", "mobile", "iccid", "imsi",
            "latitude", "longitude", "logininfo", "_sign")) else redact(v)
                for k, v in value.items()}
    if isinstance(value, list):
        return [redact(v) for v in value]
    if isinstance(value, str) and value.lstrip().startswith(("{", "[")):
        try:
            return redact(json.loads(value))
        except ValueError:
            pass
    return value


class Backend:
    def __init__(self, data_dir, fixture_path=HERE / "fixtures.json", public_url="http://127.0.0.1:8765"):
        self.data_dir = Path(data_dir).resolve()
        self.data_dir.mkdir(parents=True, exist_ok=True)
        self.files = self.data_dir / "files"
        self.files.mkdir(exist_ok=True)
        self.db_path = self.data_dir / "local.sqlite3"
        self.fixture = json.loads(Path(fixture_path).read_text(encoding="utf-8"))
        validate_url(public_url)
        self.public_url = public_url.rstrip("/")
        with self.connect() as db:
            db.executescript(SCHEMA)
        self.db_path.chmod(0o600)

    @contextmanager
    def connect(self):
        db = sqlite3.connect(str(self.db_path), timeout=10)
        db.row_factory = sqlite3.Row
        try:
            with db:
                yield db
        finally:
            db.close()

    def ensure_device(self, db, device):
        db.execute("INSERT OR IGNORE INTO devices VALUES (?,?,?)",
                   (device, dumps(dict(self.fixture["device"], deviceNum=device)),
                    dumps(dict(self.fixture["car"], deviceNum=device))))

    def event(self, db, device, path, payload):
        db.execute("INSERT INTO events(created,device,path,payload) VALUES (?,?,?,?)",
                   (int(time.time() * 1000), device, path, dumps(redact(payload))))

    def audit(self, device, method, path, status, code):
        with self.connect() as db:
            db.execute("INSERT INTO requests(created,device,method,path,status,error_code) VALUES (?,?,?,?,?,?)",
                       (int(time.time() * 1000), device, method, path, status, code))

    def session(self, db, device, params):
        token = params.get("xyToken") or params.get("authToken") or ""
        row = db.execute("SELECT * FROM sessions WHERE token=? AND device=? AND expires>?",
                         (token, device, int(time.time() * 1000))).fetchone()
        if row is None:
            # 44 is observed by GlobalResponseInterceptor as expired login.
            raise ApiError(401, "Local session missing or expired; log in with local-demo", 44)
        return row

    def login(self, db, device, credential):
        if not isinstance(credential, str) or not hmac.compare_digest(
                credential.encode(), self.fixture["loginCode"].encode()):
            raise ApiError(401, "Only the configured local test account is accepted")
        token = "local-" + secrets.token_urlsafe(24)
        expires = int(time.time() * 1000) + 24 * 60 * 60 * 1000
        user = dict(self.fixture["user"], xyToken=token, authToken=token,
                    expiredTime=expires, loginId=int(time.time() * 1000))
        user["authUser"] = dict(authToken=token, mucangId=user["mucangId"],
                                nickname=user["name"], expiredTime=expires)
        db.execute("DELETE FROM sessions WHERE device=?", (device,))
        db.execute("INSERT INTO sessions VALUES (?,?,?,?)", (token, device, dumps(user), expires))
        return user

    def resource_row(self, db, family, scope, typ, programme):
        return db.execute("SELECT * FROM resources WHERE family=? AND scope=? AND type=? AND programme=? "
                          "ORDER BY version DESC LIMIT 1", (family, scope, typ, programme)).fetchone()

    def resource_data(self, row):
        if not (self.files / row["digest"]).is_file():
            raise ApiError(404, "Registered resource file missing; import it again")
        url = self.public_url + "/files/" + row["digest"]
        meta = json.loads(row["metadata"])
        if row["family"] == "group":
            return dict(configId=int(row["programme"]), type=row["type"], version=row["version"],
                        owner="local", name="Local resource", url=url)
        if row["family"] == "upgrade":
            return dict(type=row["type"], version=row["version"], filePath=url,
                        md5=row["md5"], force=False, notice=False,
                        versionName=str(row["version"]), **meta)
        return dict(type=row["type"], version=row["version"], url=url,
                    fileMd5=row["md5"], fileSize=row["size"], forceUpdate=False,
                    posMapCode=meta.get("posMapCode", ""))

    def dispatch(self, path, params, body, device):
        action = ROUTES[path]["handler"]
        with self.connect() as db:
            self.ensure_device(db, device)
            if action in ("device", "car"):
                column = "settings" if action == "device" else "car"
                return json.loads(db.execute("SELECT " + column + " FROM devices WHERE device=?", (device,)).fetchone()[0])
            if action == "paas":
                return dict(agentId=0, tenantId=0, passEnabled=False)
            if action in ("bind", "settings"):
                column = "car" if action == "bind" else "settings"
                data = json.loads(db.execute("SELECT " + column + " FROM devices WHERE device=?", (device,)).fetchone()[0])
                if action == "bind":
                    if not body.get("plateNum", "").strip():
                        raise ApiError(400, "plateNum is required")
                    data["plateNum"] = body["plateNum"]
                else:
                    for key in ("payFirst", "forceEnd"):
                        data[key] = boolean(body.get(key), key)
                db.execute("UPDATE devices SET " + column + "=? WHERE device=?", (dumps(data), device))
                return data if action == "bind" else True
            if action == "configs":
                return item_list([dict(r) for r in db.execute(
                    "SELECT code,value FROM configs WHERE device=? ORDER BY code", (device,))])
            if action == "save_configs":
                if not isinstance(body, list) or any(not isinstance(x, dict) or
                    not isinstance(x.get("code"), str) or not x["code"] or
                    not isinstance(x.get("value"), str) for x in body):
                    raise ApiError(400, "Expected [{code:string,value:string}]")
                if boolean(params.get("isFull", "false"), "isFull"):
                    db.execute("DELETE FROM configs WHERE device=?", (device,))
                db.executemany("INSERT OR REPLACE INTO configs VALUES (?,?,?)",
                               [(device, x["code"], x["value"]) for x in body])
                return True
            if action == "login_config":
                return {"configs": [{"loginMethod": "MOBILE_OR_IDCARD", "enabled": True}]}
            if action == "login":
                if body.get("deviceType") != "ROBOT" or body.get("loginType") != "MOBILE_OR_IDCARD":
                    raise ApiError(501, "Local login implements ROBOT / MOBILE_OR_IDCARD only")
                data = parse_json(body.get("data"))
                if not isinstance(data, dict):
                    raise ApiError(400, "Login data must be an object")
                return self.login(db, device, data.get("value"))
            if action == "admin_login":
                # Explicit local test credential; does not verify vendor administrator QR codes.
                return self.login(db, device, body.get("loginInfo"))
            if action == "check_login":
                self.session(db, device, params)
                return True
            if action == "login_notice":
                # LoginManager calls this BEFORE storing the new authToken/xyToken.
                row = db.execute("SELECT user FROM sessions WHERE device=? AND expires>?",
                                 (device, int(time.time() * 1000))).fetchone()
                user = json.loads(row[0]) if row else {}
                if not user or str(user["studentId"]) != body.get("studentId") or user["mucangId"] != body.get("mucangId"):
                    raise ApiError(401, "No matching pending local login", 44)
                self.event(db, device, path, body)
                return dict(orderRecordId=0, orderRemainingMillis=0, orderStartTime=0, orderEndTime=0)
            if action in ("logout", "logout_notice"):
                if action == "logout" or boolean(params.get("logout", "false"), "logout"):
                    token = params.get("xyToken") or params.get("authToken") or ""
                    if token:
                        db.execute("DELETE FROM sessions WHERE device=? AND token=?", (device, token))
                    else:
                        # LoginManager clears both tokens before constructing the logout request.
                        db.execute("DELETE FROM sessions WHERE device=?", (device,))
                if action == "logout_notice":
                    self.event(db, device, path, params)
                return True
            if action == "fixture":
                return item_list(self.fixture[LIST_FIXTURES[path]])
            if action == "device_update":
                if not isinstance(body, list) or any(not isinstance(x, dict) for x in body):
                    raise ApiError(400, "Expected a device update parameter list")
                # Device-update type101 is an APK, not Unity UI resource101.
                # No firmware/APK update payloads are supplied by this backend.
                return item_list([])
            if action in ("site", "sites", "tile"):
                sites = self.fixture["examSites"]
                if action == "tile":
                    rows = db.execute("SELECT * FROM resources WHERE family='site' AND type=20 AND scope=? "
                                      "ORDER BY version DESC", (params.get("examSiteId", "0"),)).fetchall()
                    for row in rows:
                        if json.loads(row["metadata"]).get("mapMd5") == params.get("mapMd5"):
                            resource = self.resource_data(row)
                            site = next((s.copy() for s in sites if str(s["examSiteId"]) == params.get("examSiteId")), {})
                            site.update(examSiteId=number(params.get("examSiteId"), "examSiteId"),
                                        mapTileUrl=resource["url"], mapTileMd5=resource["fileMd5"])
                            return site
                if action == "sites":
                    if path.endswith("list-public-site.htm") or params.get("onlyPublic") == "true":
                        sites = [x for x in sites if x.get("canPublic")]
                    if params.get("areaCode"):
                        sites = [x for x in sites if x.get("cityCode") == params["areaCode"]]
                    start = max(0, number(params.get("cursor") or 0, "cursor"))
                    limit = max(1, min(1000, number(params.get("pageSize", 20), "pageSize")))
                    end = start + limit
                    return dict(itemList=sites[start:end], hasMore=end < len(sites), total=len(sites),
                                pageCount=(len(sites) + limit - 1) // limit, cursor=str(end))
                for site in sites:
                    if str(site["examSiteId"]) == params.get("examSiteId") and (
                        action != "tile" or site.get("mapDataMd5") == params.get("mapMd5")):
                        return site
                return None
            if action == "resource":
                typ = number(params.get("type"), "type")
                version = number(params.get("version", 0), "version")
                row = self.resource_row(db, "site", params.get("examSiteId", "0"), typ,
                                        params.get("programmeId", "0"))
                return self.resource_data(row) if row and row["version"] > version else None
            if action == "upgrade":
                if not isinstance(body, list) or any(not isinstance(x, dict) for x in body):
                    raise ApiError(400, "Expected upgrade parameter array")
                result = []
                for value in body:
                    typ = number(value.get("type"), "type")
                    version = number(value.get("version", 0), "version")
                    # Hardware upgrades are intentionally not offered by this backend.
                    row = self.resource_row(db, "upgrade", "0", typ, "0") if typ in (100, 101) else None
                    if row and row["version"] > version:
                        result.append(self.resource_data(row))
                return item_list(result)
            if action in ("group", "save_group"):
                values = body if action == "save_group" else params
                group = values.get("groupId", "0")
                typ = number(values.get("type"), "type")
                if action == "save_group":
                    config_id = number(values.get("configId"), "configId")
                    resource = self.resource_row(db, "group", group, typ, str(config_id))
                    if not resource:
                        raise ApiError(409, "Import a group resource for this groupId/type/configId first")
                    config = self.resource_data(resource)
                    config["name"] = values.get("configName", "Local resource")
                    db.execute("INSERT OR REPLACE INTO groups VALUES (?,?,?)", (group, typ, dumps(config)))
                    return True
                row = db.execute("SELECT config FROM groups WHERE group_id=? AND type=?", (group, typ)).fetchone()
                if not row:
                    return None
                config = json.loads(row[0])
                resource = self.resource_row(db, "group", group, typ, str(config["configId"]))
                if not resource:
                    return None
                return dict(self.resource_data(resource), name=config["name"])
            if action == "event":
                if path.endswith("user-heartbeat.htm") and body.get("changeStudent") not in ("start", "going", "finish"):
                    raise ApiError(400, "changeStudent must be start, going or finish")
                if path.endswith("save-exam-result.htm") and not isinstance(body, dict):
                    raise ApiError(400, "Expected exam result object")
                self.event(db, device, path, {"query": params, "body": body})
                return True
        raise ApiError(501, "No local handler")

    def add_resource(self, source, family, typ, version, scope="0", programme="0", pos_map_code="", map_md5=""):
        source = Path(source).resolve()
        if not source.is_file() or version < 1 or (family == "upgrade" and typ not in (100, 101)):
            raise ValueError("Need a file and positive version; upgrade supports Unity 100/101 only")
        if family not in ("site", "group", "upgrade"):
            raise ValueError("Unknown resource family")
        if family == "site" and typ not in SITE_TYPES:
            raise ValueError("Unknown site resource type")
        if family == "group" and (typ not in (1, 2) or number(programme, "configId") < 1):
            raise ValueError("Group resources require type 1/2 and a positive configId")
        if family == "site" and typ == 20 and not re.fullmatch(r"[a-fA-F0-9]{32}", map_md5):
            raise ValueError("Tile resources require --map-md5 of their source map")
        sha, md5 = hashlib.sha256(), hashlib.md5()
        temporary = self.files / (".import-" + secrets.token_hex(8))
        try:
            with source.open("rb") as src, temporary.open("xb") as dst:
                for chunk in iter(lambda: src.read(1024 * 1024), b""):
                    sha.update(chunk)
                    md5.update(chunk)
                    dst.write(chunk)
            digest = sha.hexdigest()
            size = temporary.stat().st_size
            if size == 0:
                raise ValueError("Empty resource files are not accepted")
            temporary.replace(self.files / digest)
        finally:
            temporary.unlink(missing_ok=True)
        if family == "upgrade":
            scope, programme = "0", "0"
        metadata = {"posMapCode": pos_map_code, "mapMd5": map_md5} if family == "site" else {}
        with self.connect() as db:
            existing = db.execute("SELECT digest FROM resources WHERE family=? AND scope=? AND type=? AND programme=? AND version=?",
                                  (family, scope, typ, programme, version)).fetchone()
            if existing and existing[0] != digest:
                raise ValueError("A different file already uses this version; increment the version")
            db.execute("INSERT OR REPLACE INTO resources VALUES (?,?,?,?,?,?,?,?,?)",
                       (family, scope, typ, programme, version, digest, md5.hexdigest(), size, dumps(metadata)))
        return dict(sha256=digest, md5=md5.hexdigest(), bytes=size, version=version,
                    format_validation="not performed; caller supplies compatible resource content")


def validate_url(value):
    url = urlsplit(value)
    if (url.scheme not in ("http", "https") or not url.hostname or url.username or url.password
            or url.query or url.fragment or url.path not in ("", "/") or any(c.isspace() for c in value)):
        raise ValueError("public-url must be an HTTP(S) origin without credentials/path/query")
    return value.rstrip("/")


class Handler(BaseHTTPRequestHandler):
    server_version = "JiaKaoLocal/1"

    def log_message(self, *_):
        # Default BaseHTTPRequestHandler log would expose credentials in the URL.
        pass

    def setup(self):
        super().setup()
        self.connection.settimeout(15)

    def send_json(self, status, data, error=None):
        payload = dumps(dict(success=error is None, errorCode=error.code if error else 0,
                             message=str(error) if error else "Local compatibility server", data=data)).encode()
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(payload)))
        self.send_header("Cache-Control", "no-store")
        self.end_headers()
        if self.command != "HEAD":
            self.wfile.write(payload)

    def handle_request(self):
        app = self.server.backend
        device, status, code = "local-device", 200, 0
        path = urlsplit(self.path).path
        try:
            params = {k: v[-1] for k, v in parse_qs(urlsplit(self.path).query, keep_blank_values=True).items()}
            if path.startswith("/files/"):
                self.download(path)
                return
            if path == "/__local/health" and self.command == "GET":
                with app.connect() as db:
                    available = [r[0] for r in db.execute("SELECT DISTINCT type FROM resources WHERE family='upgrade'")]
                self.send_json(200, dict(mode="local", implementedRoutes=len(ROUTES),
                                        missingUnityTypes=[t for t in (100, 101) if t not in available]))
                return
            spec = ROUTES.get(path)
            if spec is None:
                raise ApiError(501, "Endpoint not implemented locally; inspect server/CONTRACTS.md")
            if self.command != spec["method"]:
                raise ApiError(405, "Expected " + spec["method"])
            encoding = self.headers.get("Content-Encoding", "identity").lower()
            if encoding != "identity":
                raise ApiError(415, "Unsupported encoding " + encoding + "; use local APK overlay to disable tnpn2")
            if self.headers.get("Transfer-Encoding"):
                raise ApiError(400, "Chunked request bodies are not supported")
            length = number(self.headers.get("Content-Length", "0"), "Content-Length")
            if length < 0 or length > MAX_BODY:
                raise ApiError(413, "Body limit is 8 MiB")
            raw = self.rfile.read(length)
            if len(raw) != length:
                raise ApiError(400, "Incomplete request body")
            text = raw.decode("utf-8")
            codec = spec["codec"]
            body = parse_json(text) if codec == "json" else (
                {k: v[-1] for k, v in parse_qs(text, keep_blank_values=True).items()} if codec == "form" else text)
            merged = dict(params)
            if codec == "form":
                merged.update(body)
            device = next((merged[k] for k in ("deviceNum", "deviceSn", "serialNumber", "hardwareId") if merged.get(k)), device)
            if len(device) > 256:
                raise ApiError(400, "Device identifier too long")
            data = app.dispatch(path, merged, body, device)
            self.send_json(200, data)
        except ApiError as error:
            status, code = error.status, error.code
            self.send_json(status, None, error)
        except (UnicodeDecodeError, ValueError):
            status, code = 400, 90400
            self.send_json(status, None, ApiError(status, "Invalid request encoding/value"))
        except (BrokenPipeError, ConnectionResetError, TimeoutError):
            status, code = 408, 90408
        except Exception as error:
            status, code = 500, 90500
            print("Local backend error: " + type(error).__name__, file=sys.stderr)
            self.send_json(status, None, ApiError(status, "Local server error; inspect database and fixtures"))
        finally:
            app.audit(device, self.command, path, status, code)

    def download(self, path):
        if self.command not in ("GET", "HEAD"):
            raise ApiError(405, "Downloads require GET or HEAD")
        digest = path[len("/files/"):]
        if not re.fullmatch(r"[0-9a-f]{64}", digest):
            raise ApiError(404, "Local file not found")
        file = self.server.backend.files / digest
        with self.server.backend.connect() as db:
            known = db.execute("SELECT 1 FROM resources WHERE digest=?", (digest,)).fetchone()
        if not known or not file.is_file():
            raise ApiError(404, "Local file not found")
        size = file.stat().st_size
        start, end, status = 0, size - 1, 200
        if self.headers.get("Range"):
            match = re.fullmatch(r"bytes=(\d+)-(\d*)", self.headers["Range"])
            if not match:
                raise ApiError(416, "Only a single byte start-end range is supported")
            start = int(match[1])
            end = min(size - 1, int(match[2])) if match[2] else size - 1
            if start > end or start >= size:
                raise ApiError(416, "Range outside file")
            status = 206
        self.send_response(status)
        self.send_header("Content-Type", "application/octet-stream")
        self.send_header("Content-Length", str(end - start + 1))
        self.send_header("Accept-Ranges", "bytes")
        if status == 206:
            self.send_header("Content-Range", "bytes %d-%d/%d" % (start, end, size))
        self.end_headers()
        if self.command == "HEAD":
            return
        with file.open("rb") as src:
            src.seek(start)
            remaining = end - start + 1
            while remaining:
                chunk = src.read(min(1024 * 1024, remaining))
                if not chunk:
                    break
                self.wfile.write(chunk)
                remaining -= len(chunk)

    do_GET = do_POST = do_HEAD = do_PUT = do_DELETE = do_PATCH = do_OPTIONS = handle_request


def make_server(backend, host="127.0.0.1", port=8765):
    server = ThreadingHTTPServer((host, port), Handler)
    server.backend = backend
    return server


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--data-dir", type=Path, default=HERE / "data")
    parser.add_argument("--fixtures", type=Path, default=HERE / "fixtures.json")
    sub = parser.add_subparsers(dest="command", required=True)
    serve = sub.add_parser("serve")
    serve.add_argument("--host", default="127.0.0.1")
    serve.add_argument("--port", type=int, default=8765)
    serve.add_argument("--public-url", help="Origin reachable from the APK; defaults to 127.0.0.1 and the bound port")
    add = sub.add_parser("add-resource")
    add.add_argument("file", type=Path)
    add.add_argument("--family", choices=("site", "upgrade", "group"), required=True)
    add.add_argument("--type", type=int, required=True)
    add.add_argument("--version", type=int, required=True)
    add.add_argument("--exam-site-id", default="0")
    add.add_argument("--programme-id", default="0")
    add.add_argument("--pos-map-code", default="")
    add.add_argument("--map-md5", default="", help="Required for site type 20 (tiles)")
    add.add_argument("--group-id", default="0")
    add.add_argument("--config-id", default="0")
    inspect = sub.add_parser("inspect")
    inspect.add_argument("table", choices=("requests", "events", "resources", "devices", "configs"))
    inspect.add_argument("--limit", type=int, default=30)
    sub.add_parser("routes")
    args = parser.parse_args()
    if args.command == "routes":
        print(json.dumps(ROUTES, ensure_ascii=False, indent=2))
        return
    backend = Backend(args.data_dir, args.fixtures, getattr(args, "public_url", None) or "http://127.0.0.1:8765")
    if args.command == "add-resource":
        scope = args.group_id if args.family == "group" else args.exam_site_id
        programme = args.config_id if args.family == "group" else args.programme_id
        print(dumps(backend.add_resource(args.file, args.family, args.type, args.version,
                                        scope, programme, args.pos_map_code, args.map_md5)))
    elif args.command == "inspect":
        with backend.connect() as db:
            rows = db.execute("SELECT * FROM " + args.table + " ORDER BY rowid DESC LIMIT ?",
                              (max(1, min(args.limit, 1000)),)).fetchall()
        print(json.dumps([dict(r) for r in rows], ensure_ascii=False, indent=2))
    else:
        server = make_server(backend, args.host, args.port)
        if not args.public_url:
            backend.public_url = "http://127.0.0.1:" + str(server.server_port)
        print("Local backend http://%s:%s; download origin %s; Ctrl-C stops it" %
              (args.host, server.server_port, backend.public_url), flush=True)
        try:
            server.serve_forever()
        except KeyboardInterrupt:
            pass
        finally:
            server.server_close()


if __name__ == "__main__":
    try:
        main()
    except (OSError, ValueError, sqlite3.Error) as error:
        sys.exit(str(error))
