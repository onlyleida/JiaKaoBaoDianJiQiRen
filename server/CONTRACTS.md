# 已实现接口与证据

当前共 40 条显式业务路由。本文的“实现”指本地契约和所列行为，未验证 APK 完整启动；未列出的请求返回 HTTP 501 + success:false。

公共信封/编码/签名/Smali 覆盖见 [基础协议证据](evidence/protocol.md)，资源和配置模型见 [资源证据](evidence/resources.md)。下表源码路径相对于仓库根。列表固定 data.itemList；login-config 为 data.configs；login-notice 为课时对象；settings 为布尔 data。

| 方法 | 路径 | 请求体 | 本地行为 | 首个静态调用证据 |
|---|---|---|---|---|
| POST | `/api/open/behavior/uploadData` | form | persist upload only; no billing/control/grading | [UserRecordApi.java:104](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L104) |
| POST | `/api/open/brake/record-reason.htm` | form | persist upload only; no billing/control/grading | [DeviceReportApi.java:34](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/safe/api/DeviceReportApi.java#L34) |
| POST | `/api/open/device/bind-car.htm` | form | persist plateNum | [CarBindApi.java:15](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindApi.java#L15) |
| GET | `/api/open/device/get-device-config.htm` | none | device-scoped string config list | [DeviceConfigApi.java:28](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceConfigApi.java#L28) |
| GET | `/api/open/device/get-device-info.htm` | none | persistent local device settings | [DeviceApi.java:27](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceApi.java#L27) |
| GET | `/api/open/device/get-paas-info.htm` | none | PaaS disabled local fixture | [CacheDeviceApi.java:30](../java/sources/cn/mucang/jiakaoyi/uilib/api/CacheDeviceApi.java#L30) |
| GET | `/api/open/device/query-device-info.htm` | none | persistent local car binding | [CarBindApi.java:21](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindApi.java#L21) |
| POST | `/api/open/device/record-sim-info.htm` | form | persist upload only; no billing/control/grading | [DeviceConfigApi.java:42](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceConfigApi.java#L42) |
| POST | `/api/open/device/report.htm` | form | persist upload only; no billing/control/grading | [DeviceApi.java:32](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceApi.java#L32) |
| POST | `/api/open/device/save-device-config.htm` | json | merge/replace string configs | [DeviceConfigApi.java:35](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceConfigApi.java#L35) |
| GET | `/api/open/device/save-use-record.htm` | none | persist event despite GET method | [DeviceApi.java:62](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceApi.java#L62) |
| POST | `/api/open/device/settings.htm` | form | persist payFirst/forceEnd; boolean data | [DeviceApi.java:54](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceApi.java#L54) |
| POST | `/api/open/device/user-heartbeat.htm` | form | persist upload only; no billing/control/grading | [DeviceApi.java:46](../java/sources/cn/mucang/jiakaoyi/uilib/api/DeviceApi.java#L46) |
| POST | `/api/open/exam-record/save-exam-result.htm` | json | persist upload only; no billing/control/grading | [UploadRecordApi.java:22](../java/sources/cn/mucang/jiakaoyi/uilib/record/UploadRecordApi.java#L22) |
| POST | `/api/open/fault-code/upload.htm` | text | persist upload only; no billing/control/grading | [DeviceReportApi.java:41](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/safe/api/DeviceReportApi.java#L41) |
| GET | `/api/open/login-time/report.htm` | none | persist event despite GET method | [UserRecordApi.java:76](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L76) |
| GET | `/api/open/login/logout.htm` | none | revoke local session | [XyLoginApi.java:41](../java/sources/cn/mucang/jiakaoyi/uilib/login/api/XyLoginApi.java#L41) |
| POST | `/api/open/login/submit.htm` | form | MOBILE_OR_IDCARD local-demo login | [XyLoginApi.java:35](../java/sources/cn/mucang/jiakaoyi/uilib/login/api/XyLoginApi.java#L35) |
| GET | `/api/open/owner/exam-site-map/get-map.htm` | none | exam site fixture or null | [GeneralBusinessApi.java:73](../java/sources/cn/mucang/jiakaoyi/uilib/api/GeneralBusinessApi.java#L73) |
| GET | `/api/open/owner/exam-site-map/list.htm` | none | paged exam site fixtures | [GeneralBusinessApi.java:81](../java/sources/cn/mucang/jiakaoyi/uilib/api/GeneralBusinessApi.java#L81) |
| GET | `/api/open/owner/exam-site/list-public-site.htm` | none | paged public site fixtures | [GeneralBusinessApi.java:97](../java/sources/cn/mucang/jiakaoyi/uilib/api/GeneralBusinessApi.java#L97) |
| GET | `/api/open/owner/group-config/get-group-config.htm` | none | local group config or null | [ResConfigApi.java:19](../java/sources/cn/mucang/jiakaoyi/uilib/api/ResConfigApi.java#L19) |
| POST | `/api/open/owner/group-config/update.htm` | form | persist group config choice | [ResConfigApi.java:33](../java/sources/cn/mucang/jiakaoyi/uilib/api/ResConfigApi.java#L33) |
| GET | `/api/open/owner/map-tile/get-by-map.htm` | none | matching map tile fixture or null | [ResApi.java:30](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/res/ResApi.java#L30) |
| GET | `/api/open/owner/resource-manager/query-new.htm` | none | site resource or null | [ResApi.java:18](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/res/ResApi.java#L18) |
| GET | `/api/open/owner/teach-level-config/list.htm` | none | fixture list; no grading/statistics calculation | [GradeApi.java:14](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/grade/GradeApi.java#L14) |
| POST | `/api/open/train-deduct/get-error-area-list.htm` | form | fixture list; no grading/statistics calculation | [UserRecordApi.java:52](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L52) |
| POST | `/api/open/train-deduct/get-error-point-list.htm` | form | fixture list; no grading/statistics calculation | [UserRecordApi.java:34](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L34) |
| POST | `/api/open/train-deduct/get-error-stat-list.htm` | form | fixture list; no grading/statistics calculation | [UserRecordApi.java:62](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L62) |
| GET | `/api/open/train-program-config/list.htm` | none | fixture list; no grading/statistics calculation | [ConfigApi.java:14](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/login/api/ConfigApi.java#L14) |
| GET | `/api/open/train-record/get-user-train-list.htm` | none | fixture list; no grading/statistics calculation | [UserRecordApi.java:42](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L42) |
| GET | `/api/open/train-step/get-user-train-list.htm` | none | fixture list; no grading/statistics calculation | [UserRecordApi.java:70](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L70) |
| POST | `/api/open/upgrade/check-upgrade.htm` | json | registered Unity 100/101 only | [c.java:19](../java/sources/cn/mucang/jiakaoyi/uilib/upgrade/c.java#L19) |
| GET | `/api/open/user-config/get-login-config.htm` | none | local account login only | [LoginConfigApi.java:28](../java/sources/cn/mucang/jiakaoyi/uilib/login/api/LoginConfigApi.java#L28) |
| POST | `/api/open/user-mission/upload-robot-data.htm` | form | persist upload only; no billing/control/grading | [UserRecordApi.java:95](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L95) |
| POST | `/api/open/user-train-course/saveData.htm` | form | persist upload only; no billing/control/grading | [UserRecordApi.java:87](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/record/UserRecordApi.java#L87) |
| POST | `/api/open/user/admin-login.htm` | form | local loginInfo fixture only | [RobotBusinessLoginApi.java:26](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/login/api/RobotBusinessLoginApi.java#L26) |
| GET | `/api/open/user/check-logout.htm` | none | validate local session | [RobotBusinessLoginApi.java:22](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/login/api/RobotBusinessLoginApi.java#L22) |
| POST | `/api/open/user/login-notice.htm` | form | confirm pending local login; class time object | [RobotBusinessLoginApi.java:34](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/login/api/RobotBusinessLoginApi.java#L34) |
| GET | `/api/open/user/logout-notice.htm` | none | record notice, optionally revoke | [RobotBusinessLoginApi.java:41](../java/sources/cn/mucang/android/jiakaoyi/teachingk2/login/api/RobotBusinessLoginApi.java#L41) |

`json` 指路由按 UTF-8 JSON 解析，兼容 APK 的 application/octet-stream；`text` 按 UTF-8 文本存储；`none` 只使用 query。表单参数与公共 query 合并。

只在本地确认已经持久化上报才返回成功；上传接口没有实现教学评分、统计、计费或硬件控制。训练历史/统计查询读取 fixtures，不会自动从上传数据推导结果。组配置必须先导入真实本地资源才允许选择；瓦片登记需要地图 MD5。

本地新增 HTTP：GET `/__local/health`；GET/HEAD `/files/<sha256>`。命令行 `inspect` 读取 SQLite，不提供网络管理写入接口。

失败约定：400 参数/格式错误，401 本地凭据/会话错误，404 文件缺失，405 方法不符，409 组资源未导入，413 超过 8 MiB，415 不支持 tnpn2 等编码，416 Range 无效，501 未实现，500 本地异常。均返回 JSON 错误信封，错误码通常为 90000+HTTP状态，仅会话失效使用客户端已识别的 44。它们不是恢复的原厂错误码表。

`sign/_r/_v/X-SSO-Token` 不作为本地鉴权依据，也不触发原厂请求。当前鉴权范围只覆盖本地登录/通知/会话；设备配置和资源 API 为调试用途开放。
