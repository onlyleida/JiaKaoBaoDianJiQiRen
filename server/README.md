# 本地兼容服务端

这是根据 APK 11.6.5 的客户端调用重写的本地调试服务，使用 **Python 3.9+ 和 SQLite，零第三方依赖**。已实现 41 条明确的业务路由，以及健康检查、资源下载和检查数据库的命令。它不是从 APK 提取出来的原厂服务端。

## 启动

在仓库根目录运行：

```sh
python3 server/local_server.py serve
```

默认监听 `127.0.0.1:8765`，SQLite 和导入资源保存在 `server/data/`，Ctrl-C 停止。可打开 `http://127.0.0.1:8765/__local/health` 检查状态。修改 fixtures 后重启生效；已经保存的设备设置和绑定不会被 fixtures 覆盖。

```sh
# 单独的数据目录和配置文件（全局参数放在子命令前面）
python3 server/local_server.py --data-dir /path/to/local-data --fixtures /path/to/fixtures.json serve

# 查看实际已实现接口、最近请求、已接收记录
python3 server/local_server.py routes
python3 server/local_server.py inspect requests --limit 30
python3 server/local_server.py inspect events --limit 10
```

`requests` 记录方法、路径、状态和本地设备标识，不记录完整 query/token；`events` 持久化上报内容并递归遮盖常见凭据/身份字段。这里没有原厂转发或联网兜底。它按单机调试需求设计，没有生产级访问控制；如需局域网调试，明确指定监听与下载地址：

```sh
python3 server/local_server.py serve --host 0.0.0.0 --public-url http://192.168.1.50:8765
```

把示例 IP 换成本机地址。`--public-url` 必须能从 APK 所在设备访问，用于生成下载 URL；仅改变它不会修改 APK 的 API 地址。

## 测试账号与协议

`fixtures.json` 提供名为“本地调试学员”的合成用户，登录码 `local-demo`。账号登录界面允许非空文本，发出的请求为 `MOBILE_OR_IDCARD` / `ROBOT`；本服务只接受配置中的本地登录码。用户 `studentId=-1`，在原客户端会标为调试用户；没有使用真实身份证、手机号或原厂账号。接口测试：

```sh
curl --fail http://127.0.0.1:8765/api/open/login/submit.htm?deviceNum=local-device \
  --data-urlencode loginType=MOBILE_OR_IDCARD \
  --data-urlencode deviceType=ROBOT \
  --data-urlencode 'data={"value":"local-demo"}'

curl --fail 'http://127.0.0.1:8765/api/open/device/save-device-config.htm?deviceNum=local-device&isFull=false' \
  -H 'Content-Type: application/octet-stream' \
  --data-binary '[{"code":"11002","value":"false"}]'

curl --fail 'http://127.0.0.1:8765/api/open/device/get-device-config.htm?deviceNum=local-device&examSiteId=0'
```

成功响应包含 `success/errorCode/message/data`。普通列表位于 `data.itemList`，登录配置位于 `data.configs`，设备 settings 返回布尔 data。表单是 UTF-8 urlencoded；配置和升级接口是 octet-stream 内的 JSON。当前版本不解密 `tnpn2`，收到会返回 415 和原因。

会话保存 24 小时，按设备隔离。客户端在存入新 token **之前**发送 login-notice，因此此通知用设备当前会话和 `studentId/mucangId` 验证，返回 `RobotClassTimeModel`，没有虚构课时订单。客户端退出时先清除 token，因此无 token 的 logout 会撤销该本地设备的会话。`admin-login` 也只认本地登录码，不实现原厂管理员扫码/SSO。

设备键采用第一个非空的 `deviceNum → deviceSn → serialNumber → hardwareId`，都没有时使用 `local-device`。这是本地约定，字段之间没有自动合并关系；设备号变化或多个设备使用 `UNKNOWN` 时，需要自行提供稳定设备号。保存配置是设备级的：`isFull=false` 按 code 合并，true 替换整组；GET 的 examSiteId 暂不增加场地覆盖层。值始终是字符串。

## 资源导入

只有明确导入的本地文件才会返回下载地址。文件被复制到内容寻址目录，计算真实 MD5/SHA256/大小；相同资源版本不允许换成不同内容。下载支持 GET、HEAD、单一 `bytes=start-end` Range，并原样返回 GZIP/ZIP 字节。文件内容的业务格式尚未校验，导入成功不等于能够被 Unity/地图解析。

```sh
# 场地 52 的科二地图：type=2，内容应是客户端要求的 GZIP 地图
python3 server/local_server.py add-resource /path/to/map.gz \
  --family site --type 2 --version 1 --exam-site-id 52

# 教学方案可以独立区分 programmeId
python3 server/local_server.py add-resource /path/to/teaching-data \
  --family site --type 1 --version 1 --exam-site-id 52 --programme-id 9

# 瓦片 ZIP 必须关联对应地图的 MD5
python3 server/local_server.py add-resource /path/to/tiles.zip \
  --family site --type 20 --version 1 --exam-site-id 52 --map-md5 YOUR_MAP_MD5

# 语音配置，groupId 在该客户端中通常就是 examSiteId
python3 server/local_server.py add-resource /path/to/voice.zip \
  --family group --type 2 --version 1 --group-id 52 --config-id 9

# 只有取得兼容的外部文件后才执行；APK 里缺少这两个文件
python3 server/local_server.py add-resource /path/to/actual-unity-module \
  --family upgrade --type 100 --version 1
python3 server/local_server.py add-resource /path/to/actual-unity-ui \
  --family upgrade --type 101 --version 1
```

组资源导入后，客户端的 `group-config/update.htm` 选择对应 configId，后续查询才返回该资源；未导入时更新返回 409。只登记文件不会自动创建场地：需要在 fixtures 的 `examSites` 配置已知场地数据，其字段见 [协议证据](evidence/resources.md)。场地目录、教学项目/等级、训练历史和错误统计均使用 fixtures，默认为空；上传记录不会自动生成评分或教学统计。

Unity 100/101 缺失时返回空 `itemList`，场地资源缺失/无更新时返回 `data:null`。客户端冷启动仍可能提示缺文件，服务不会用空 DLL 冒充缺失模块。普通场地资源的 type=3 与独立升级 type=100/101 是不同协议。

## 将 APK 接到本机

仅部署服务端不会改变 APK 中的原地址。配套脚本在新目录复制构建输入，覆盖 **23 个已核对的业务 API 主机方法**，并让普通表单加密开关 `c0.a()` 返回 false。原仓库 `android/` 不变，可查看生成的 `local-backend.patch` 和 `local-backend-overlay.json`。

```sh
python3 server/prepare_local_apk.py \
  --output ../JiaKao-local-apk \
  --base-url http://127.0.0.1:8765

# JDK 21、Android SDK Build-Tools 35.0.0、Apktool 3.0.3
python3 ../JiaKao-local-apk/scripts/build.py \
  --sdk /path/to/android-sdk --java-home /path/to/jdk-21 \
  --apktool /path/to/apktool_3.0.3.jar

# 在选定的独立测试设备上使用 USB/ADB 端口反向转发
adb -s YOUR_TEST_DEVICE reverse tcp:8765 tcp:8765
adb -s YOUR_TEST_DEVICE install ../JiaKao-local-apk/dist/jiakaoyi-coach-11.6.5-rebuilt-debug.apk
```

也可以将脚本的 `--base-url` 改为同一局域网中的服务器私有 IP，并按前文开放监听。脚本只接受显式本地/私有 IP 的 HTTP origin。输出目录必须不存在，匹配不到预期方法就停止，避免对其他版本静默误改。

覆盖层**没有解除隐私确认、设备激活、硬件或教学状态检查**；显式加密 API、原生签名、第三方 SDK/WebView/Unity/媒体直连也没有全部重写。它不是全网流量隔离方案。原包在此前模拟器中仍有原生崩溃/白屏，换成本地服务不能证明这些问题已经解决；本轮未在真实 Android 设备上完成登录或教学联调。

## 验证与范围

```sh
PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s server -v
```

测试使用临时 SQLite 和回环 HTTP 端口，覆盖配置合并/替换与重启、设备隔离、登录通知的真实先后顺序、无 token 退出、资源版本/字节/校验和/Range、组资源与瓦片查询、分页、未实现接口和错误体、独立 Smali 覆盖。测试用的资源字节仅用于协议测试，不会导入交付数据目录。

完整已实现列表见 [CONTRACTS.md](CONTRACTS.md)。静态候选接口清单见 [endpoint-inventory.json](endpoint-inventory.json)，它包含未实现路由，也可能遗漏动态拼接路径；不能把候选数当成可用接口数。

当前未实现原厂设备激活、SSO、人脸比对、短信、支付/计费、完整地图编辑/教学评分/路径规划、硬件升级和机器人控制。请求未知接口会收到明确的 501 失败信封，便于按请求记录继续补实现。协议兼容与局部持久化已测试，原系统完整业务恢复尚未完成。

## 2026-10-14 模拟器实跑补充

已在云端 Android 11 x86/ARM32 转译模拟器运行本地调试 APK，使用的文件与交付 APK SHA256 完全相同。安装成功、模拟器到同机服务端的健康检查成功，但应用启动即发生 SIGSEGV，45 秒时进程不存在且屏幕回到桌面；没有观察到业务 API 请求。堆栈位于 libndk_translation.so，具体触发的原生调用仍待定位。完整教学与登录联调仍未通过。

证据见 [实跑复核报告](../reports/local-backend-runtime-review.json)、[崩溃日志](../reports/local-backend-runtime-crash.txt) 和 [云端运行记录](https://github.com/onlyleida/JiaKaoBaoDianJiQiRen/actions/runs/38579243751)。手动工作流 `Run exact local backend APK` 会用原 Release APK 加校验补丁恢复精确的调试 APK，通过 SHA256 后再安装；会保留独立证据，不覆盖原 APK 的运行报告。
