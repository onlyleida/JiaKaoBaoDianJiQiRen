# 运行所需的外部内容

本页基于包内代码的静态分析；不能将这些代码路径视为已观察到的线上响应。用户确认没有已正常运行该软件的安卓设备，当前只整理 APK 内可恢复的部分。

## 启动与硬件

`java/sources/cn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity.java` 的 `init()`、`t()` 组织隐私、网络、本地配置、权限、应用升级、通信和固件检查。`provider/TeachBaseProvider.java` 进一步安排 GPS、AI 固件、设备身份、Unity 资源检查。

`provider/RobotSignalProvider.java` 选择机器人连接器。`java/sources/cn/mucang/android/jiakaoyi/signal/com/n.java` 声明主控、GPS、AI 通道地址 `192.168.118.30:8088`、`192.168.118.60:8088`、`192.168.118.116:8086`。普通模拟器没有这些设备；把启动检查删除或伪造为通过并不能恢复真实教学能力。

`TeachSplashActivity.k()` 在初始化阶段就安排配置上传和登录状态检查，因此本次首屏测试应使用关闭网络的专用模拟器。`ui/splash/impl/j1.java` 网络检查超时会阻塞，`impl/f1.java` 等待有效通信，`impl/g1.java` 需要硬件信息及服务端车辆绑定。

## Unity 动态逻辑和界面

`unity-csharp/Assembly-CSharp/StartMamager.cs` 向 Android 请求消息 100，读取 `pathMap["100"]`、`pathMap["101"]`，用 `Assembly.LoadFrom()` 加载逻辑程序集并查找 `CTxAppManager`，再传入 UI 资源路径。

`java/sources/cn/mucang/android/jiakaoyi/teachingk2/p007unity/business/h.java` 请求服务端版本、下载 URL、MD5，下载到 `getExternalFilesDir(null)` 下：

```text
_u_prefix_100_<version>   Unity 动态逻辑
_u_prefix_101_<version>   Unity UI 资源
```

这些文件没有随提供的 APK 一起交付。未来如取得正常设备的应用专用外部文件目录，可补充分析这些文件。仓库保留了 APK 内的 Unity 启动程序集、其他全部 DLL 和 `assets/bin/Data`，不能从下载器代码推导出未提供资源的实际字节。

## 场地资源与后台

`teachingk2/res/ResourceManager.java`、`ResApi.java`、`ResDirUtils.java` 还会按 `examSiteId/type/version` 获取教学数据、地图、电子栅栏、区域、第二语言等，保存到应用 files 目录的 `res/<examSiteId>/<resource>/<version>/`。服务端程序、有效账号、车辆绑定和各场地数据不在客户端 APK 中。

## 重新签名

重建脚本使用新生成的调试密钥，原厂签名私钥不在 APK 中。后续原生调查确认 libtnpn 的 Riddle.c / Riddle.s 会比对证书，失败则 exit(1)。模拟器 overlay 已将原 DEBUG_SIGN 槽替换成本构建证书，保留验证和其他发布证书，详见 reports/tnpn-native-findings.md。高德 SDK 代码读取证书 SHA-1 并参与请求校验；重新签名后的服务兼容性必须实测。

## 建议入口

主包均位于 `java/sources/cn/mucang/android/jiakaoyi/teachingk2/`：

- `TeachK2Application.java`：应用初始化和提供者注册。
- `ui/splash/TeachSplashActivity.java`：启动链。
- `autoteach/manager/AssistTeachManager.java`：自动教学管理。
- `collect/K2TeachCollectActivity.java`：场地采集。
- `provider/RobotSignalProvider.java`、`provider/TeachSafeProvider.java`：机器人信号与教学安全接口。
- `ota/RobotFirmWareManagerActivity.java`：固件管理。
- `unity/e/e0.java`、`p007unity/business/h.java`：Unity 路径桥接与资源下载。

REA 初始 APK Evidence ID：`ev_5b07f78c61794632ac4d923c37738e52523644613aa8d451239d917fe35fed37`。完整记录位于 `reports/rea-android-evidence.json`。
