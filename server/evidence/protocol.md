# 本地兼容服务端：基础协议静态证据

分析时间：2026-10-14。仅检查现有反编译 Java 与 Smali；没有请求原厂服务器，没有执行 APK，没有修改仓库或提交 Git。下述是客户端接受/发出的协议，不代表已知原服务端实现、真实数据或完整业务规则。

证据根目录 `R=REPOSITORY_ROOT`。下文短路径均相对 R，行号是本次文件的物理行号。为便于阅读，Java 路径前缀：

- `CORE=java/sources/cn/mucang/android/core`
- `FW=java/sources/cn/mucang/android/jiakaoyi/framework`
- `UI=java/sources/cn/mucang/jiakaoyi/uilib`

## 先落实的兼容条件

1. 标准成功信封是 `{"success":true,"errorCode":0,"message":"OK","data":...}`；默认列表是 `data.itemList`，不是裸 `data: []`；分页空列表应显式 `hasMore:false`。
2. 常见 POST 原始类型是表单，但默认先经 JNI `Riddle.e` 编码，并发送 `Content-Encoding: tnpn2`。直接写 Python 表单解析器不能接原包所有请求。独立本地 APK 覆盖层可令 `FW/utils/c0.a()` 返回 false；这只覆盖走该开关的普通表单，不等于所有显式加密 API 都消失。
3. 原客户端能接受普通 UTF-8 JSON 响应，服务端不必实现原响应加密。不要发送错误的 `Content-Encoding` 或原加密专用 Content-Type。
4. 基础主机不止 `robot-teach`。缓存 API 默认仍是 `lukaoyi`，登录、隐私、设备管理等有独立主机；见下面精确 Smali 表。
5. `deviceNum`、`serialNumber`、`hardwareId`、`deviceSn` 是不同字段；通用 Android `_deviceId` 又是另一字段，默认可能封在 `_v`。不要把所有 ID 当作单个 deviceId。

## 1. URL 与 Smali 覆盖位置

`CORE/api/a.java:33-39` 建 builder，传 `getApiHost()`、相对路径、签名 key；`CORE/api/request/c.java:66-73` 在生成最终 URL 前执行 request interceptors；`CORE/api/request/a.java:29-38` 先合并公共参数，再 host+path，最后签名。基础类抽象方法是 `android/smali/cn/mucang/android/core/api/a.smali:159` 的 `.method protected abstract getApiHost()Ljava/lang/String;`。

下表中的 host 都有 `https://` 前缀。除隐私服务外，通常 `MucangConfig.v()` 为真选 `.ttt.mucang.cn`，否则选 `.kakamobi.cn`，因此只改生产字符串会遗漏调试分支。最好对明确类的完整 `getApiHost()` 方法制作独立覆盖，而非全仓字符串替换。

| 用途 | 原生产 host | 精确 Smali 文件与方法起始行 |
|---|---|---|
| 通用 JBaseApi | robot-teach.kakamobi.cn 或 lukaoyi.kakamobi.cn | `android/smali_classes2/cn/mucang/android/jiakaoyi/framework/e/n.smali:590`，`getApiHost()Ljava/lang/String;`；私有 d() 的 lukaoyi 字符串在 135/140，robot-teach 字符串在 155/160 |
| 设备管理 | device-manager.kakamobi.cn | 同目录 `d.smali:42` getApiHost |
| 设备监控 | device-monitor.kakamobi.cn | 同目录 `e.smali:42` getApiHost |
| 设备更新 | device-update.kakamobi.cn | 同目录 `f.smali:42` getApiHost |
| 路径规划 | path-planing.kakamobi.cn | 同目录 `h.smali:42` getApiHost，注意原拼写 planing |
| 隐私协议 | xy-privacy-agreement.kakamobi.cn | 同目录 `i.smali:42` getApiHost；没有测试 host 分支 |
| 数据采集 | udc.kakamobi.cn | 同目录 `j.smali:42` getApiHost；测试主机为 user-data-collection.ttt.mucang.cn |
| 用户数据 | user-data.kakamobi.cn | 同目录 `k.smali:42` getApiHost |
| 工单 | work-order.kakamobi.cn | 同目录 `l.smali:42` getApiHost |
| 缓存基础 API | lukaoyi.kakamobi.cn | `android/smali_classes5/cn/mucang/jiakaoyi/uilib/i/i.smali:67` getApiHost，对应 JResponseCacheApi |
| 另一 uilib 基础 API | lukaoyi.kakamobi.cn | 同目录 `h.smali:25` getApiHost |
| 调试设备管理 | device-administration.kakamobi.cn | 同目录 `c.smali:45` getApiHost；另 `q.smali:47` getApiHost |
| 人脸 | face-recognition.kakamobi.cn | `android/smali_classes5/cn/mucang/jiakaoyi/uilib/login/o/b.smali:65` getApiHost |
| 登录配置 | xy-biz-user.kakamobi.cn | 同目录 `c.smali:45` getApiHost |
| 登录提交/退出 | xy-user-login.kakamobi.cn | 同目录 `d.smali:52` getApiHost |

`FW/p002e/n.java:49-54,96-97,121-122` 和 `FW/utils/AppUtils.java:132-139` 说明当前 teachingk2 包默认选择机器人主机；`UI/api/JResponseCacheApi.java:26-32` 不沿用这个判断，使用 lukaoyi 并动态取得公共参数。

上述范围之外，还见独立 host override，以下均为 `.method protected getApiHost()Ljava/lang/String;` 的起始行：`android/smali_classes2/cn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi.smali:466`（udc）、`android/smali_classes4/cn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi.smali:265`（udc）、`android/smali_classes3/cn/mucang/android/jiakaoyi/speech/semantic/e.smali:256`（robot-teach）、`android/smali_classes3/cn/mucang/android/jiakaoyi/speech/semantic/g.smali:83`（device-monitor）、`android/smali_classes3/cn/mucang/android/jiakaoyi/signal/ai/ota/f.smali:18`（device-update）、`android/smali_classes5/cn/mucang/jiakaoyi/uilib/k/b/a.smali:18`（lukaoyi-cost）、`android/smali_classes5/cn/mucang/jiakaoyi/uilib/n/b$a.smali:29`（device-monitor）。这些需要单独纳入覆盖/阻断清单；不能声称表格覆盖了 SDK、WebView、媒体或 Unity 所有外连。

### 现有可配置入口及边界

- `CORE/config/mapping/ProfileManager.java:202-211,225-241,268-284` 已有全局 request interceptor，按完整旧 base URL 精确查找 `ProfileHostJsonData.name`，将 builder host 改成 `value`。`CORE/api/request/c.java:106` 是 `j(String)` host setter。
- Profile 格式：`ProfileJsonData` 的 `id:long,name:String,list:List<ProfileHostJsonData>`（文件 15-18）；每个 host 为 `name:String,value:String`（ProfileHostJsonData.java:12-14）。两边末尾 `/` 被清除。
- 不能直接假定这个 profile UI 离线可用：`ProfileStorage.java:28-29` 对 profile/token 使用 EncryptionStorage；`:62-74` 初始化若有 token 会请求 `ProfileAdminApi`，否则清除；`:133-153` 保存要求非空列表和非空 token。当前 profile id 位于 prefs `__core_profile_id__` 的 `currentProfileId`（`:121-130`）。建议独立本地模式配置/全局 interceptor，不触发原 ProfileAdminApi 登录与刷新。
- 全局拦截器在 API 构造时被复制（`CORE/api/a.java:21-30`），应在创建 API 实例前注册；或者使用父任务拟定的独立 Smali 覆盖副本。
- `android/AndroidManifest.xml:70` 引用 `core__network_security_config`；`android/res/xml/core__network_security_config.xml:3-6` base-config 允许明文，并信任系统/用户 CA。现有 core HTTP 层可采用明确的本地 HTTP base URL；这不保证第三方 SDK 共用该网络栈。

## 2. 请求方法、参数与 Body

`CORE/api/request/MucangRequest.java:35-37,50-56` 只有 GET/POST；`CORE/api/a.java:68-72` GET 不带 body。原路径 query 与额外参数合并后作为 URL 参数；GET/POST 都有公共 query，不要只从 body 找登录会话。

Java `CORE/api/url/ApiUrlBuilder.java:108-119` 的反编译遗漏了把原 query 放回 map 的语句。Smali `android/smali/cn/mucang/android/core/api/f/a.smali:393-403` 明确 `getQueryParameter` 后 `HashMap.put`。原路径内 `examSiteId` 等参数确实保留，不能按坏 Java 误判为被丢弃。

| 调用方式 | 实际请求 |
|---|---|
| 普通 `httpPost(path,List<MucangNameValuePair>)` | 默认表单字节经过 Riddle.e，Content-Type application/x-www-form-urlencoded，加 Content-Encoding tnpn2 |
| 同上且第三参数 false | 未加密的 application/x-www-form-urlencoded |
| `httpPost(path,byte[])` 默认 | application/octet-stream，字节原样；可能实际内容是 UTF-8 JSON |
| `httpPost(path,byte[],true)` | gzip 压缩字节，Content-Type application/x-gzip |
| `httpPostEncrypted(path,String)` | UTF-8 字节，application/octet-stream，Content-Encoding tnpn2 |
| `httpPost(path,byte[],contentType)` | 调用者指定 Content-Type；空类型回退 octet-stream |
| 文件上传 | application/octet-stream |
| multipart helper | multipart/form-data，另有字段名/文件名 |

证据：`CORE/api/a.java:124-129,141-147,159-164,176-189,203-208,220-233`；`CORE/api/request/e/b.java:41-112,165-175`；`CORE/api/request/f/a.java:60-62,76-91`。表单 serializer 跳过空名称/null 值，并百分号转义 UTF-8，空格 `%20`、加号 `%2B`。

### 精确加密开关覆盖点

- `FW/p002e/n.java:219-224` 的普通 List POST 调 `c0.a()`。Smali为 `android/smali_classes2/cn/mucang/android/jiakaoyi/framework/e/n.smali:872` 的 `.method protected httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;`。
- 开关 Smali：`android/smali_classes2/cn/mucang/android/jiakaoyi/framework/utils/c0.smali:17-49` `.method public static a()Z`。`:25` 默认 true；`:27-30` 读 debugNeedEncrypted；`:42-48` 返回缓存 Boolean。
- 独立本地覆盖可将 a() 整体替换成 `.locals 1; const/4 v0,0x0; return v0`，无需改原解包目录。仅把默认 true 改 false，已存在 prefs true 时仍会加密，因此整体本地返回更确定。
- 已有 setter b(Z)V 在同文件 51-67，Java `FW/utils/c0.java:16-18`；底层 prefs 名 `jky_base_sp`，见 `FW/utils/i0.java:12-13,42-45`。如果通过 setter 配置，应在 API 使用前调用。
- `CORE/jni/Riddle.java:5-6,13,21` 加载 libtnpn，e(byte[]) 与 s(String,String) 是 native。此次未恢复 tnpn2 body 算法或签名 native 算法。服务器应显式诊断未支持的 tnpn2，不应将密文字节按表单静默处理。

## 3. 公共 query、设备 ID 与签名

`FW/p002e/g.java:32-89` 返回 `Map<String,String>`；以下业务字段直接附加到 URL（含 POST）：

| 参数 | 逻辑类型/来源 |
|---|---|
| authToken | String，AccountManager 已登录时取 AuthUser.authToken |
| xyToken | String，XyToken.c() 非 null 时加 |
| deviceNum | String，DeviceUtils.c()，prefs key.deviceNumber；空则省略 |
| serialNumber | String，HardwareInfo.serialNumber；空则省略 |
| hardwareId | String，HardwareInfo.hardwareNumber；空则省略 |
| deviceSn | String，静态缓存的 Android Build.SERIAL，null 回退 UNKNOWN |
| latitude,longitude | double 转 String；仅坐标有效且非同时近零时加 |
| areaCode | String，CityCodeManager.d() |
| isHighPrecision | boolean 转 `true`/`false` 字符串；b0.b() 的返回类型为 boolean |
| _loginMode | 枚举字符串 STUDENT 或 COACH，由 SchoolDeviceUtil 决定 |
| kemu | int 转十进制 String |
| xyVersion | 常量字符串 `2` |
| xyOtaVersion,xyBoxVersion,xyHardwareVersion | int 转 String |
| xyObdVersion | int 转 String，BoxVersion.hasOBD 时才加 |
| _lang | 可选服务端语言代码 String |

设备源证据：`FW/utils/DeviceUtils.java:117-143,146-178`；`FW/utils/b0.java:53-63`。`FW/p002e/n.java:43-46` 常见 API 构造时快照这份 map，而 JResponseCacheApi 每次 getExtraParams 返回新 map。调试切换登录后要考虑已创建 API 实例持有旧值。

此外 core 自动添加 `_platform,_appName,_product,_productCategory,_vendor,_renyuan,_version,_system,_manufacturer,_systemVersion,_operator,_pkgName,_network,_launch,_clv` 等通用字段；私有字段如 `_device,_androidId,_deviceId,_appUser,_screenDpi,_screenWidth,_screenHeight,_firstTime,_apiLevel,_oaid,_userCity,_gpsType,_cityName,_cityCode,_longitude,_latitude` 默认使用短别名并编码进 `_v`。证据 `CORE/api/url/BasicParamsBuilder.java:87-146,183-225,513-545`。业务字段 deviceNum/hardwareId 不等同于 `_deviceId`；本地 server 的稳定设备主键可以按 deviceNum > hardwareId > serialNumber > deviceSn 的显式策略选取，并记录来源；这只是实现建议，不是原厂主键规则。

`_v` 不是已知的 tnpn2：`CORE/api/g/b.java:12-30` 取得 private query UTF-8，算 `_r` 的双字节校验与原 query 的双字节校验，用 `_r` 校验首字节异或所有 query 字节，尾部附两个校验，gzip 后 Base64.NO_WRAP。校验实现 `CORE/utils/f.java:9-25` 是初始 0xffff、反馈多项式 0xa001 的逐位 CRC16，结果低字节在前。`_r` 来自 `r0.b(16)`，内部是 UUID 高位加派生字段/CRC32组成，再转 hex（`CORE/utils/r0.java:16-30`）；参数16不是字符串长度。首次本地实现可以将 _r/_v 作为不透明字符串保存/忽略，依靠明文业务设备字段，而不要误将 _v 当 Base64 JSON。

`CORE/utils/k0.java:9-63`：签名输入取 URI rawPath + rawQuery，去已有 sign，把 + 标准化为 %20，再传 `Riddle.s(pathAndQuery,signKey)`，返回字节转小写 hex，作为 `sign` query。本层未传 request body 或 host 给 s；不能据此推断 native 内部算法。host 常量旁有嵌入的 key，此报告不复制它们，本地服务不需要据此复刻原厂认证。建议本地模式明确不校验 sign，并用独立本地会话控制，不承诺与原生产鉴权互通。

### Headers

`FW/p002e/n.java:36-40` 默认 XY-Agent 为 URL 编码的 `product=<产品>&version=<版本>`（core.encode.a.g 是 URLEncoder，非加密）。调用该类 b() 后才增加 `X-SSO-Token`（来自 SsoBaseApi.n().e()）与 `X-Requested-With: XMLHttpRequest`，见 `:100-118`。SSO header 不是全部 API 必有。SsoBaseApi 构造自动调用 b()，见 `FW/p002e/SsoBaseApi.java:33-38`。

## 4. 响应信封与传输

`CORE/api/ApiResponse.java:109-117` 读取 success:boolean、errorCode:int、message:String。常量已核对：`java/sources/com/amap/api/maps/model/MyLocationStyle.java:11` 与 `CORE/api/verify/ErrorDialogParams.java:11`。`CORE/api/e/a.java:10-12` success=false 抛 ApiException。

- typed object：`data` 是对象，getData(Class)，ApiResponse.java:49-54,250-260。
- 默认列表：`data.itemList` 数组，getDataArray(Class)，同文件:53-54,137-151。
- 少数 getList(Class)：`data` 本身数组，同文件:66-67。必须按调用者区分，不能统一数组形状。
- primitive：可走 `data.value` 或 direct data primitive 回退，同文件:26-35,169-175,224-243。
- pagination：`data.itemList`, `hasMore:boolean`, `pageCount:int`, `total:long`, `cursor:String`；**hasMore 缺省为 true**，同文件:82-95。
- 登录配置特例是 `data.configs` 列表，`UI/login/api/LoginConfigApi.java:27-30`。

建议通用空页：`{"success":true,"errorCode":0,"message":"OK","data":{"itemList":[],"hasMore":false,"pageCount":0,"total":0,"cursor":""}}`。对象/primitive/login-config 按专用形状返回。未知 endpoint 应返回显式非成功 JSON 诊断，避免伪造空对象掩盖业务缺失。

响应可用 `Content-Type: application/json; charset=utf-8`，普通 JSON 原文：

- `CORE/http/a.java:259-263` Accept-Encoding 包含 gzip 和 tnpn4，不表示服务端必须加密。
- `CORE/http/a.java:299-319` 仅 Content-Type 包含 application/gzip-enc-stream 或 application/enc-stream 时解密；普通响应只在 Content-Encoding 含 gzip 时解压，否则原字节。`:353-358` 加密路径根据 X-Simple-Token 选择 JNI 或另一分支。
- `CORE/api/request/MucangRequest.java:108-122` 从 HTTP 异常中仍可取响应 body 解析（304特殊），但建议已实现路由正常200，失败也给完整JSON信封。
- `CORE/api/request/MucangRequest.java:100-105` 还有隐私确认前拒绝请求的客户端条件，服务端不能自行替代用户同意。
- `FW/p002e/intercept/GlobalResponseInterceptor.java:36-41,59-71` 处理 44/2/403 等失效状态并可能退出登录/切首页；错误码不可随意拿来表示本地404。

## 5. 登录与会话结构

`UI/login/api/XyLoginApi.java:32-37`：POST `/api/open/login/submit.htm`，表单字段 `loginType:String`、`deviceType:String`、`data:String`。data 的值是序列化 LoginData 对象的 JSON 字符串，**不是顶层 JSON 请求体**。loginType 来自 enum.toString()（例如 MOBILE、ID_CARD、QR_CODE、FACE、SWITCH_LOGIN），deviceType 来自 String.valueOf(enum)，机器人为 **ROBOT** 而不是数值3。`DeviceType.java:7-13` 另有数值 type 字段，但这里没有调用 getType。`RobotBusinessLoginApi` 的 login-notice 反而用 loginType.getTypeId()，两者要区分。

LoginData 子类真实字段：`AnyLoginData.value:String`；`IdCardLoginData.idCard:String,idCardType:enum`；`MobileLoginData.mobile:String`；`QrCodeLoginData.authToken:String`；`FaceLoginData.token:String`；`SwitchLoginData.xyToken:String`；`TaizhouLoginData.carNum:String`（各类位于 `UI/login/model`，字段声明约8-10行）。本地可使用合成身份，不需要真身份证/手机号或原会话。

返回 `data` 为 XyUserModel（`UI/login/model/XyUserModel.java:12-31`）：

- String: authToken, xyToken, avatar, driveLicenseType, idCardEncrypted, idCardIdentifier, idCardMask, idCardType, loginMode, mucangId, name, phoneEncrypted。
- long: courseId, expiredTime, loginId, studentId, tenantId。
- int: gender。
- AuthUser object: authUser。

`isCoach` 判断 loginMode==COACH，`isDebugUser` 判断 studentId<0（`:109-114`）。后者是客户端分支语义，不应随意伪装生产身份。`UI/login/LoginManager$onUserLogin$1.java:65-78` 在登录回调把 xyToken 写入 XyToken，并**新建 AuthUser**，从顶层 mucangId/authToken/name/avatar 填充后覆盖 authUser。因此这个主流程不要求 server 再返回完整 AuthUser。`UI/login/LoginManager.java:137-139` 也从保存用户恢复 xyToken/authToken/name。

`java/sources/cn/mucang/android/account/data/AuthUser.java:8-30` 的 authToken、mucangId、nickname 等都是 String；expiredTime、validDuration 是 long，gender 是 Gender enum，不同于 XyUserModel 的 intgender。避免将两个模型混用。

相关路由（RobotBusinessLoginApi 的完整文件是 `java/sources/cn/mucang/android/jiakaoyi/teachingk2/login/api/RobotBusinessLoginApi.java`，其他登录 API 在 `UI/login/api/`）：

| 方法/路径 | 参数/响应 |
|---|---|
| GET /api/open/login/logout.htm | success 即结果；XyLoginApi.java:40-41 |
| GET /api/open/user-config/get-login-config.htm | data.configs -> List<ConfigLoginItem>；LoginConfigApi.java:27-30 |
| GET /api/admin/user/constructors-login.htm | SSO header，data XyUserModel；BaseBusinessLoginApi.java:15-19 |
| POST /api/open/user/admin-login.htm | form loginInfo:String；data XyUserModel；RobotBusinessLoginApi.java:25-28 |
| POST /api/open/user/login-notice.htm | loginType(typeId字符串)、studentId(long转字符串)、mucangId、name、loginMode；RobotBusinessLoginApi.java:31-36 |
| GET /api/open/user/logout-notice.htm | logout:boolean,debugUser:boolean query；RobotBusinessLoginApi.java:39-46 |

## 6. 能直接用于服务端实现的实际路由形状

| 方法/路径 | 参数 | data 形状/证据 |
|---|---|---|
| GET /api/open/device/get-device-config.htm | query examSiteId:long | itemList:ConfigModel[]；ConfigModel code/value均String；DeviceConfigApi.java:27-30，model/ConfigModel.java:8-10 |
| POST /api/open/device/save-device-config.htm | query isFull:boolean；raw UTF-8 JSON bytes，octet-stream | 检查请求成功即可；DeviceConfigApi.java:33-38 |
| POST /api/open/device/record-sim-info.htm | form iccid,iccid2,imsi，nullable String | DeviceConfigApi.java:41-42 |
| GET /api/open/device/query-status.htm | 公共 query | ActivateModel对象；CacheDeviceApi.java:24 |
| GET /api/open/device/get-paas-info.htm | 公共 query | DeviceAgent对象；DeviceApi.java:21-22，CacheDeviceApi.java:30 |
| GET /api/open/device/get-device-info.htm | 公共 query | DeviceSettingInfo对象；DeviceApi.java:27 |
| POST /api/open/device/report.htm | form projects:String | success；DeviceApi.java:30-32 |
| POST /api/open/device/user-heartbeat.htm | userId:String,examSiteId:long字符串,changeStudent:TrainStatus.statusName,studentId:可选String,inExam:boolean字符串 | success；DeviceApi.java:35-46 |
| POST /api/open/device/settings.htm | form payFirst,forceEnd:boolean字符串 | Boolean data或data.value；DeviceApi.java:49-54 |
| GET /api/open/device/save-use-record.htm | query type:int | success；DeviceApi.java:61-62 |
| GET /api/open/config/get-config.htm | query key:String | typed data对象；RemoteConfigApi.java:18,27-35，按具体消费者还原值 |
| POST /api/open/owner/exam-site-map/collect-map.htm | query examSiteId:long；model.mapData String 的 UTF-8 gzip bytes，application/x-gzip | ExamSiteModel对象；GeneralBusinessApi.java:102-111。mapData 的语义/格式需单独核对，不能只按 Content-Type 断言顶层 JSON |

后两类业务复杂对象（地图、教学、设备激活）不能仅凭接口名推断成功条件；本报告只确认网络基础形状，父任务其他调查应提供具体 schema。这里未证明返回合成登录/配置就能进入完整教学。

## 7. 建议本地服务的最小工程契约

- 仅显式的本地 base URL 和路由；不建立原厂代理或自动回退。使用合成账号与独立 token，SQLite 持久化本地会话、配置与设备状态。
- 解析 URL query + body；请求类型严格区分表单、octet JSON、x-gzip JSON；限制长度并给可理解的格式错误。支持 `tnpn2` 前先明确拒绝它，配套本地 APK 设置关闭普通表单编码。
- 将 sign/_r/_v 保留作可选诊断字段，默认不把它们当本地认证依据；日志脱敏 authToken/xyToken/SSO 以及模拟身份字段。
- 路由按调用者返回 typed object、itemList、configs 或 primitive；空分页显式 hasMore=false。
- APK 覆盖脚本生成独立目录，不修改原 android 解包；验证目标方法只匹配一次，失败就停止。输出准确的被覆盖主机/方法清单。
- 本地服务自测通过仅证明协议 stub，不能宣称原厂服务端或完整教学系统已恢复。签名 native 细节、显式 tnpn2 API、硬件/地图状态机、在线资源内容仍是未知/独立工作项。

## 实现审查补证：真实登录调用顺序

- `java/sources/cn/mucang/jiakaoyi/uilib/login/LoginManager.java:367-379`：submit 返回用户后先调用 listener.h，再返回给保存 token 的回调。
- `java/sources/cn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener.java:362-370`：login-notice 必须返回 `RobotClassTimeModel` 对象（orderRecordId、orderRemainingMillis、orderStartTime、orderEndTime，均 long），不是布尔值；orderRecordId<=0 表示不进入课时订单处理。
- `java/sources/cn/mucang/jiakaoyi/uilib/login/LoginManager.java:48-51,385-394`：logout 先清本地 authToken/xyToken，再新建 API 发请求，因此后端不能要求退出请求必有 token。
- 本实现用本地设备会话和通知中的 studentId/mucangId 确认 pending login，无 token logout 撤销当前本地设备会话。以上策略是本地设计。
