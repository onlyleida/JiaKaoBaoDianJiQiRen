# APK 资源与设备配置：本地兼容服务端协议调查

分析范围：本仓库 内已从 APK 导出的 Java/C#。本调查只读代码，没有请求任何原厂接口、执行 APK、修改 APK 或生产代码。以下是客户端静态证据与本地服务端设计建议，二者分开标注。原始 APK SHA-256：`a52da069ad1fa88a35923b003b68f4d9c240679d4cde386985999dff133a7349`；先前 REA Android Evidence：`ev_5b07f78c61794632ac4d923c37738e52523644613aa8d451239d917fe35fed37`。本文精确路径/字段来自已导出源码，不是原厂响应抓包。

## 最先实现的共同协议

**客户端证据**：`java/sources/cn/mucang/android/core/api/ApiResponse.java:49-54,82-95,109-117,137-153,224-234,250-269` 与 `core/api/a.java:84-89`。

- JSON 顶层读取 `success:boolean`、`errorCode:int`、`message:string`。
- `getData(Model.class)` 解析 `data` 对象；`data:null` 得到 null。
- **`getDataArray(Model.class)` 和 `httpGetDataList` 解析 `data.itemList`，不是直接的 `data` 数组。** 必须给 `itemList:[]`；`data:null` 或缺少 `itemList` 会进入解析异常。
- 布尔型 `getData(false)` 同时支持 `data:true` 或 `data:{"value":true}`。只返回 `success:true,data:{}` 不能让 `settings.htm` 读到 true。
- 分页数据还读取 `hasMore/pageCount/total/cursor`；缺省 `hasMore` 会被视为 true，空列表应显式给 false。
- 所有以下接口都继承 `JBaseApi` 公共额外参数。`framework/p002e/g.java:32-88` 会加入（有值时）`authToken/deviceNum/serialNumber/hardwareId/latitude/longitude/areaCode/isHighPrecision/_loginMode/deviceSn/kemu/xyVersion/xyOtaVersion/xyBoxVersion/xyHardwareVersion/xyObdVersion/xyToken/_lang`。本地实现应容忍这些额外参数，设备数据以本地 `deviceNum` 隔离；不要把真实 token 写入调试日志。
- 本 APK 的 `JBaseApi` 正常主机路由是 `robot-teach.kakamobi.cn`（`framework/p002e/n.java:49-55,96-127`，`framework/utils/AppUtils.java:132-140`）；`BaseDeviceManagerApi` 路由是 `device-manager.kakamobi.cn`（`framework/p002e/BaseDeviceManagerApi.java:9-12`）。这里只作路由归属，不请求这些主机。
- **两个原始 JSON 上传接口使用 `application/octet-stream`**：`httpPost(path,byte[])` → `httpPost(...,false)` → `request/e/b.b`；见 `core/api/a.java:176-190`、`core/api/request/e/b.java:41-45`。服务端需要按该路由解析 UTF-8 JSON，不能仅依赖 application/json 的自动解析器。

建议统一成功响应示例（HTTP 200）：

```json
{"success":true,"errorCode":0,"message":"OK","data":{"itemList":[]}}
```

本地接口失败可以使用 HTTP 200 + `success:false,errorCode:<本地约定整数>,message:<明确原因>,data:null` 以进入 API 失败路径；错误码属于本地设计，本文不声称恢复了原厂错误码表。下载不存在的静态文件应 HTTP 404，不能返回 HTTP 200 的错误 JSON 冒充二进制资源。

## Unity 100 / 101 独立升级协议

**客户端证据**：`uilib/upgrade/c.java:17-33`；`uilib/upgrade/model/UpgradeParameter.java:6-10`；`teachingk2/p007unity/business/h.java:25-27,127-187,190-209`。本文证据采用短路径：`core/` = `java/sources/cn/mucang/android/core/`；`framework/` = `java/sources/cn/mucang/android/jiakaoyi/framework/`；`teachingk2/` = `java/sources/cn/mucang/android/jiakaoyi/teachingk2/`；`uilib/` = `java/sources/cn/mucang/jiakaoyi/uilib/`；以 `android/jiakaoyi/` 开头的路径相对于 `java/sources/cn/mucang/`。

| 项目 | 精确契约 |
|---|---|
| HTTP | POST `/api/open/upgrade/check-upgrade.htm`，BaseDeviceManagerApi |
| 请求 | 原始 JSON 数组。Unity 路径每次仅提交一个元素；如 `[{"hardwareVersion":0,"stable":false,"type":100,"version":0}]`。`UpgradeParameter` 有这 4 个字段，当前 Unity 调用仅显式赋 type/version，其余是 Java 默认值。解析应允许硬件字段缺省。 |
| 返回 | `data.itemList` 数组，元素为 `UpgradeInfoModel`；Unity 只取第一条，不按 type 再搜索，因此返回顺序必须对应请求。 |
| 最小有效资源字段 | `type:int,version:int,filePath:string,md5:string`。客户端要求远端 version > 本地 version，filePath 非空。 |
| 完整模型字段 | `filePath:string,force:boolean,hardwarePlatform:int,hardwareVer:int,id:long,isFileAvailable:boolean,md5:string,modelCode:int,modelName:string,notice:boolean,noticeContent:string,noticeTitle:string,type:int,uid:string,version:int,versionName:string`。`downloadFilePath` 标为 transient，是本地下载状态。 |
| 空 / 无更新 | `{"success":true,"errorCode":0,"message":"OK","data":{"itemList":[]}}` |

完整模型证据：`android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel.java:10-27`。不要把请求 `hardwareVersion` 和响应 `hardwareVer` 混为同名。

**客户端行为**：下载保存到 `getExternalFilesDir(null)/_u_prefix_<type>_<version>`，MD5 非空时校验文件；成功缓存 `_key_res_info_<type>` 对应的 `{type,version,path}`（`UpgradeLocalInfo`）。`h.i()` 必须同时找到 100 和 101 的本地文件才返回 pathMap；100 为普通路径，101 加 `file://`。没有更新但已有本地文件会继续使用旧资源；既无更新又无本地文件则回调“文件不存在”。因此空 itemList 是协议正确的“没有可提供资源”，**不会实现缺失 Unity 教学模块的冷启动**。

**资源语义证据**：`unity-csharp/Assembly-CSharp/StartMamager.cs` 以 pathMap["100"] 执行 `Assembly.LoadFrom` 并寻找 `CTxAppManager`，将 pathMap["101"] 传给其 `SetInfo`。100 需要真正兼容的托管程序集，101 需要它期待的 UI 内容；本次 APK 已导出的文件中未获得这两个外部资源，加载器源码也未包含其实际内容。`ResourceManager.Resource.Unity.type == 3` 是另一套场地资源类型，**不能用 3 替代升级 type 100/101**。

**本地服务端设计**：本地资源目录没有已导入的有效 100/101 时，返回空 itemList，并在服务端状态页标明 `missing_external_resource`。有真实导入文件时，才提供本地静态 URL、真实 MD5、正版本号；只对请求版本更低者返回更新。不要制造空 DLL 或空 ZIP 后宣称资源已补齐。

## 场地资源清单与瓦片

**客户端证据**：`android/jiakaoyi/teachingk2/res/ResApi.java:17-30`。

| HTTP | 参数 | data 形态 |
|---|---|---|
| GET `/api/open/owner/resource-manager/query-new.htm` | `examSiteId:long,type:int,version:int`；当 type=1 且当前教学方案 id>0 时追加 `programmeId:long` | `ResModel` 对象或 null |
| GET `/api/open/owner/map-tile/get-by-map.htm` | `examSiteId:long,mapMd5:string` | `ExamSiteModel` 对象或 null，消费者使用 mapTileUrl/mapTileMd5 |

`ResModel` 精确字段：`fileMd5:string,fileSize:long,forceUpdate:boolean,posMapCode:string,type:int,url:string,version:int`，见 `teachingk2/model/ResModel.java:8-15`。与 Unity 升级模型的 `md5/filePath/force` 命名不同。

枚举清单证据：`teachingk2/res/ResourceManager.java:48-62`：

| type | 名称 | 本地目录根 |
|---:|---|---|
| 1 | 教学数据 Teaching | teaching |
| 2 | 科二地图 MapData | map |
| 3 | Unity 场地资源 | unity |
| 4 | 电子栅栏 MapFence | fence |
| 5 | 特殊区域 Special | special |
| 9 | 自动接驳 AutoShuttle | autoShuttle |
| 14 | GPS 遮挡区域 Gps | gps |
| 20 | 瓦片地图 TileMap | tile |
| 21 | 科三地图 MapDataK3 | mapK3 |
| 22 | 大车科二地图 MapDataB2 | mapB2 |
| 24 | 科二区域 AreaK2 | areaK2 |
| 25 | 科三区域 AreaK3 | areaK3 |
| 26 | 坡顶区域 PoDingArea | podingArea |
| 30 | 第二语言 Language | language |

`TeachBaseProvider.getResourceList()` 返回除 TileMap(20)、MapDataB2(22) 外的所有枚举（`teachingk2/provider/TeachBaseProvider.java:94-104`）；其他 Provider 可以有自己的选择，不应把这个列表说成全部客户端都固定请求。

**消费者证据与格式限制**：

- `ResourceManager.java:160-168` 将教学、科二地图、大车地图，以及缺少地图路径时的 Unity 视为能够中断加载的关键资源。其大方法有 JADX 控制流警告和重复分支，因此不以某个反编译 if 的细节推断精确版本更新策略；API wrapper 和模型本身清晰。
- 普通资源缓存路径由 `ResDirUtils.java:47-69` 建立：`<externalFilesDir，或filesDir>/res/<examSiteId>/<fileRoot>/<version>/<hash(host+path)>`；瓦片目录层使用 MD5 替代 version。URL query 不进入正常 URL 的文件名 hash，别仅靠 query 区分不同资源内容。
- `res/processor/k.java:63-84`：教学文件是逐行 `StepType_<JSON数组>`，StepType 必须由 `Step.findWithType` 识别；不是整个文件的普通 JSON 数组。教学内图片/视频 URL 还会单独下载（同文件:27-53）。
- `res/processor/h.java:70-75` → `uilib/mapupdate/g.java:15-45`：科二地图文件先 GZIP 解压，之后处理地图文本；空地图会报错（h.java:33-46）。
- `res/processor/c.java:20-36`：电子栅栏文件是 GZIP 包装 JSON 数组，元素为 PolygonModelWrap，包含 GPS 多边形。
- `res/processor/l.java:19-45`：瓦片文件要满足 MD5，再作为 ZIP 解包，并读取 `tile/*.json` 为 TileParam。
- `res/processor/m.java:7-10` 的 Unity(3)处理器是空实现；这不证明 Unity 场地资源任意内容都可用，其他下游仍可能直接读取文件。
- `framework/utils/Downloader.java:49-57` 校验原始下载字节 MD5（忽略大小写）；MD5 非空且不匹配会删掉文件。静态服务应返回文件原始字节和 Content-Length，不能对 GZIP 资源自动二次解压。

**本地服务端设计**：以 `(examSiteId,type,programmeId)` 注册真实本地资源和版本；有更高版本时返回资源对象，已是最新或未导入时返回 `data:null`。无资源示例：

```json
{"success":true,"errorCode":0,"message":"No local resource configured","data":null}
```

这是显式的无更新/无资源响应，可能使客户端在冷启动报告加载失败；它比虚构下载地址更可诊断。协议层可运行不等于教学/地图业务已可用。

## 场地目录（资源查询的关联入口）

静态证据：`uilib/api/GeneralBusinessApi.java:22-137`。均 BaseDeviceManagerApi。

| HTTP | 参数/请求体 | data |
|---|---|---|
| GET `/api/open/owner/exam-site-map/get-map.htm` | examSiteId, returnMapData:boolean | ExamSiteModel 或 null |
| GET `/api/open/owner/exam-site-map/list.htm` | onlyPublic:boolean + 分页 cursor/pageSize | 分页 data.itemList<ExamSiteModel> |
| GET `/api/open/owner/exam-site/list-public-site.htm` | areaCode + 分页 cursor/pageSize | 分页 data.itemList<ExamSiteModel> |
| POST `/api/open/owner/exam-site-map/create-map-and-site.htm` | form: cityCode,driveSchoolName,examSiteName,examSiteId,canPublic；可带 mapDataMd5,mapDataUrl 或 updateMap；gpsBaseId>0 才附 | 非 null ExamSiteModel |
| POST `/api/open/owner/exam-site-map/update.htm` | form: cityCode,driveSchoolName,examSiteName,examSiteId,canPublic,mapDataMd5,mapDataUrl，可带gpsBaseId | 只读 success |
| POST `/api/open/owner/exam-site-map/delete.htm` | form: examSiteId | 只读 success |
| POST `/api/open/owner/exam-site-map/set-origin-gps.htm` | form: examSiteId,originLatitude,originLongitude,originAltitude | 只读 success |
| POST `/api/open/owner/exam-site-map/collect-map.htm` | query examSiteId；body 为 model.mapData UTF-8 字节，经过 gzip；Content-Type application/x-gzip | 非 null ExamSiteModel |

分页 query 由 `core/api/g/a.java:12-22` 补充：非空 `cursor`、正数 `pageSize`；此处 list.pageSize=20，public-site.pageSize=100。空列表建议 `data:{"itemList":[],"hasMore":false,"pageCount":0,"total":0,"cursor":""}`。创建/收集接口显式断言非 null，不能回 `success:true,data:null` 假装写入成功；应实现真实本地持久化或明确失败。

`ExamSiteModel` 全部字段（`uilib/model/ExamSiteModel.java:6-45`）：

- double：altitude,latitude,longitude,originAltitude,originLatitude,originLongitude。
- long：driveSchoolId,examSiteId,gpsBaseId,mapId,skinId,voicePackageId。
- int：mapStatus。
- boolean：canAdd,canPublic,comprehensive,enable,official。
- string：boundaryMd5,boundaryUrl,cityCode,cityName,driveSchoolName,examSiteName,examSysName,gpsBaseName,mapData,mapDataMd5,mapDataUrl,mapTileMd5,mapTileUrl,owner,ownerName,provinceCode,provinceName,qrCode,skinName,version,voicePackageName。

地图原点缺省为 0 时 `hasOriginGps()` 为 false（同文件:90-91）。场地 version 是 string，资源 version 是 int，勿合并类型。

## 场地皮肤与语音包配置

证据：`uilib/api/ResConfigApi.java:18-33`；`uilib/model/ResConfigInfo.java:10-16`。

| HTTP | 参数 | data |
|---|---|---|
| GET `/api/open/owner/group-config/get-group-config.htm` | groupId:long,type:int | ResConfigInfo 或 null |
| POST `/api/open/owner/group-config/update.htm` | form: groupId,type,configId,configName | 调用者只读取 success |

模型：`configId:long` 默认 -1、`version:int` 默认 -1、`owner:string` 默认空串、`type:int` 默认0、`name:string?`、`url:string?`。

消费者确认 `type=1` 是皮肤（`ExamSiteResUpdateHelper$checkUpdateSkin$1.java:90-102` 写 skinName/skinId/keyExamSkinType）；`type=2` 是语音包（`ExamSiteResUpdateHelper.java:52-88` 下载 zip 并解包）。某些日志把 type=1 也称“语音包”，不应据日志混淆类型。groupId 在这些消费者中传 examSiteId。

缺配置可返回 `success:true,data:null`；调用者明确允许 null。有语音包时需有效 ZIP，不要返回只含配置、却无实际下载文件的假成功。update 应在本地持久化 `(groupId,type)` 对应 configId/configName 后返回 success。

## 设备配置读写

证据：`uilib/api/DeviceConfigApi.java:27-42`；`uilib/model/ConfigModel.java:8-25`；`teachingk2/config/LocalConfigManager.java:44-87,163-193,253-265`；`LocalConfigManager$getConfig$1.java:119-136`。

| HTTP | 参数/体 | 返回 |
|---|---|---|
| GET `/api/open/device/get-device-config.htm` | examSiteId，默认来自当前场地或0 | data.itemList：`[{"code":"11002","value":"false"}]` |
| POST `/api/open/device/save-device-config.htm` | query isFull:boolean；原始 JSON 数组的 UTF-8 字节，application/octet-stream；元素 code/value 都是字符串 | 调用者未消费 data；必须成功完成请求才更新本地配置 |
| POST `/api/open/device/record-sim-info.htm` | form: iccid,iccid2,imsi，可为 null/缺省 | 只读取 success |

读取时空 itemList 有可靠降级路径：客户端逐项遍历 LocalConfig，服务端未提供或 value=null 时保留 `localConfig.getValue()`（本地已保存或默认值），而不是将所有值重置为 false。读取失败在部分启动路径可能最多重试10次；正确的空 itemList 能避免无用重试。

**本地服务端设计**：配置值作为字符串存储，允许空字符串，不自动把 "false" 转 JSON false。`isFull=false` 合并 code，`isFull=true` 替换该设备的整组配置——这两个持久化语义是本地设计，客户端只提供该标记，没有原厂服务端证据。保存接口没有在本方法中显式附 examSiteId，要明确本地写入范围；建议设备级配置并允许 GET 对场地覆盖层进行合并，而不要凭空要求客户端每次写入提供 examSiteId。

可复用的已知 code 示例：11001 TimingLogin、11002 OpenK3、11004 EnableNonPerceiveLogin、11005 ShowLanguage、10001 GearType、10002 BackGearType、10003 EnableGps、10004 EnableSundial、10005 B2HeadType、10006 ClassDevice、20005 ShowMap、20009 AutoTeach、20013 AutoAssist、30001 SpeedBrake、40012 EnableAi、50001 VoiceGrade、60003 PushQuality、70001 FaceLoginFromAi、70002 SundialCameraFromAi。完整54项常量见 `teachingk2/config/LocalConfig.java:98-155`；该类有 JADX enum 恢复警告，但常量代码字符串在静态初始化中清楚可见。空配置优先保留 APK 默认行为，不额外开启自动驾驶或设备控制。

## 设备信息、状态写入

证据：`uilib/api/DeviceApi.java:20-62`。均 JBaseApi。

| HTTP | 参数 | data / 判定 |
|---|---|---|
| GET `/api/open/device/get-paas-info.htm` | 公共设备参数 | DeviceAgent 对象；方法要求非 null |
| GET `/api/open/device/get-device-info.htm` | 公共设备参数 | DeviceSettingInfo 对象或 null |
| POST `/api/open/device/report.htm` | form: projects:string | success |
| POST `/api/open/device/user-heartbeat.htm` | form: userId:string,examSiteId:long,changeStudent:string,inExam:boolean；studentId 可选 | success |
| POST `/api/open/device/settings.htm` | form: payFirst:boolean,forceEnd:boolean | data:true 或 data:{value:true}；不能只有 success |
| GET `/api/open/device/save-use-record.htm` | type:int | success；虽然 GET，客户端语义是记录事件 |

`changeStudent` 明确取 `start/going/finish` 三个字符串（`uilib/record/TrainStatus.java:8-11`），不是枚举整数。

DeviceAgent 字段（`uilib/model/DeviceAgent.java:6-9`）：`agentId:long,tenantId:long,passEnabled:boolean`。注意拼写 **passEnabled**（双 s），不是 paasEnabled。未配置设备的此接口应明确失败，或返回明确命名的本地调试对象；不要返回 success+null 触发客户端非空断言。零值对象可被模型解析，但不应描述为原厂授权成功。

DeviceSettingInfo 字段（`uilib/model/DeviceSettingInfo.java:6-21`）：

- boolean：canReceive,charge,enableSundialEntrance,faceLoginFlag,forceEnd,lightCostTime,needLogin,needScan,payFirst,stopCost,updateExam。
- string：deviceNum,revenueType。
- nullable Long：id。
- int：stopFreeTime。

`DeviceSettingUtils.java:39-59` 证实 get-device-info 返回 null 或异常时回退已缓存配置；若从未缓存，则仍可为 null。无设备配置时 `success:true,data:null` 合理；调试服务也可显式保存本地设备对象。设置 payFirst/forceEnd 后应更新该对象并回 data true，下一次 GET 能读回。

`projects` 是不透明字符串，调用者负责序列化；本地可以记录收到的文本和时间。心跳/使用记录仅持久化到本地日志/数据库，不触发真实扣费、远程设备控制或原厂上报。这是本地服务设计，而非 APK 对原厂行为的证明。

## 教学项目列表

证据：`teachingk2/login/api/ConfigApi.java:12-16`；`teachingk2/login/model/BaseOperatorModel.java:8-12`。

GET `/api/open/train-program-config/list.htm`，无该方法显式业务参数，返回 `data.itemList<BaseOperatorModel>`。

字段：`background:string?,programId:int,programName:string?,status:int`。缺省可返回空 itemList。`RobotAccount$getBaseOperator$1.java:49-59` 接受返回列表；`p007unity/models/train/UnityTrainListModel.java:8-9` 将这些模型列表传向 Unity。这里未发现 status 的完整含义或 programId 的有效业务值表，不应凭空定义 status=1 即启用或伪造可运行教学项目。可以将整个数组作为本地 fixture，可由调试者填写。

## 实现优先级与尚未证明的内容

可立即实现并做协议测试：共同 envelope；设备配置空列表/读写往返；设备信息对象保存；settings 布尔 data；心跳/报告记录；教学项目 fixture；资源目录登记/MD5计算/静态文件下载；无资源的空 itemList/null 响应。

客户端证据没有提供：原厂数据库、完整教学方案数据、场地地图内容、100/101 外部 Unity 二进制、原厂错误码语义、服务端签名校验策略。本文没有动态验证 APK 是否能完成登录/启动/教学；本地 HTTP 契约通过测试也不能代替这些业务验证。

后续需要联调确认：启动实际访问的主机是否全部重定向；token/设备号生成与客户端拦截器；ResourceManager 中受反编译警告影响的精确恢复路径；对有效地图/教学资源进行格式校验。没有本地文件时不联机补下载原厂资源。
