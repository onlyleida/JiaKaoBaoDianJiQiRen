# 驾考宝典 AI 教练 11.6.5：反编译与 APK 重建

这是从用户提供的 `jiakaoyi_coach_080359.apk.1.1` 提取的完整包内代码与资源，以及经过实际执行的 APK 重建脚本。

**已完成 Smali/资源重建、APK 签名和内容校验。Java/C# 导出用于阅读，APK 构建使用保留的 Smali、DLL 和原生库。原厂 Android Studio/Unity 工程、原签名私钥以及服务端程序不能从这个 APK 恢复。**

| 项目 | 内容 |
| --- | --- |
| 包名 | `cn.mucang.android.jiakaoyi.teachingk2` |
| 版本 | `11.6.5` / `110605` |
| Android | minSdk 21 / targetSdk 30 |
| 原生架构 | 仅 `armeabi-v7a`，运行设备必须支持 32 位 ARM |
| 原包 SHA256 | `a52da069ad1fa88a35923b003b68f4d9c240679d4cde386985999dff133a7349` |
| DEX | 6 个，33,298 个类定义，重建前后数量一致 |
| Java | 17,450 个正常模式文件，另有 124 个问题文件的 simple 模式输出 |
| C# | 包内 105/105 个程序集已导出，共 15,202 个 `.cs` 文件 |
| 原生库 | 42 个 `.so` 原样保留；未还原为可编译 C/C++ 工程 |
| 内置资源 | 309 个 assets 文件；完整 Android res、Unity 数据、模型、音频、图片和字体 |

## 下载与运行

重建 APK 和 SHA256 文件放在 [Releases](https://github.com/onlyleida/JiaKaoBaoDianJiQiRen/releases)。这是使用本地调试证书重新签名的测试安装包，和原厂签名不同，不能直接覆盖原厂安装。请使用独立测试设备或干净模拟器，不要为了安装而删除已有设备数据。

```sh
adb -s YOUR_DEVICE_SERIAL install jiakaoyi-coach-11.6.5-rebuilt-debug.apk
adb -s YOUR_DEVICE_SERIAL shell am start -n cn.mucang.android.jiakaoyi.teachingk2/cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TeachSplashActivity
```

先用 `adb -s YOUR_DEVICE_SERIAL shell getprop ro.product.cpu.abilist` 确认其中包含 `armeabi-v7a`。仅 ARM64 的系统不能加载这些 32 位原生库。**本机模拟器因 ABI 不匹配拒绝安装，尚未验证安装成功或启动成功。** 详细结果见 [docs/VALIDATION.md](docs/VALIDATION.md)。

完整教学流程依赖机器人硬件通信、设备绑定、后台服务和另行下载的 Unity/场地资源。用户目前没有已运行设备，因此本仓库交付范围为 **原 APK 内的全部内容及可重建安装包**，不能据此宣称完整教学功能已经运行。详细缺失项与代码位置见 [docs/RUNTIME_DEPENDENCIES.md](docs/RUNTIME_DEPENDENCIES.md)。

## 从仓库重建 APK

需要 Python 3、JDK（已用 21 验证）、Android SDK Build-Tools 35.0.0。脚本自动下载并校验 Apktool 3.0.3；也可以通过 `--apktool /path/to/apktool_3.0.3.jar` 使用已有 JAR。

```sh
git clone https://github.com/onlyleida/JiaKaoBaoDianJiQiRen.git
cd JiaKaoBaoDianJiQiRen
export JAVA_HOME=/path/to/jdk-21
export ANDROID_HOME=/path/to/android-sdk
python3 scripts/build.py
```

macOS 的 SDK 通常位于 `$HOME/Library/Android/sdk`。也可传入 `--sdk`、`--java-home`、`--build-tools` 和 `--output-dir`。默认产物在 `dist/`：签名 APK、SHA256、打包日志和验证报告。

仓库 Actions 中的 `Build reconstructed APK` 可以手动运行同一脚本，并将结果附到现有 `apk-11.6.5-rebuild` Release。工作流没有定时或 push 触发器。每次使用新调试密钥，云端 APK 与本地 APK 的证书和 SHA256 可不同；下载文件以同名 `.sha256` 和 Release 内的 `ci-build-verification.json` 为准。

脚本重新汇编全部 6 份 Smali、编译 Android 资源、打包所有 assets/lib/unknown 文件，完成 zipalign、调试签名与 apksigner 验证，再对照原包清单逐项校验 490 个原样保留文件。调试密钥在 `.cache/` 本地生成，不提交 Git；不同机器新生成的密钥不同。产物包含时间与签名差异，不保证每次构建的 APK 哈希相同。

## 目录

| 路径 | 用途 |
| --- | --- |
| `android/` | 实际构建输入：清单、Smali、res、assets、lib、unknown、原包签名材料 |
| `java/sources/` | JADX 常规反编译代码，便于阅读和定位业务 |
| `java-fallback/` | 124 个有反编译问题的文件的 simple 模式补充 |
| `unity-csharp/` | 全部 105 个托管程序集的 C# 参考代码与项目文件 |
| `scripts/build.py` | 实际验证过的打包、签名、内容校验脚本 |
| `reports/` | 原包/重建包覆盖率、签名、工具结果和完整 REA 证据 |
| `docs/` | 验证范围、运行依赖和入口索引 |

修改可运行代码时，以 `android/smali*/` 为准；修改图片、声音、文字等资源时，以 `android/res/` 和 `android/assets/` 为准。修改 Java/C# 阅读导出不会自动改变重建 APK。C# 项目中的 DLL 引用已改为仓库内相对路径，但这些项目尚未作为源码工程构建验证。

## 反编译边界

- 正常 JADX 导出中，124 个文件含错误标记、195 处方法占位；对应 simple 模式补充仍有 4 处方法占位。原始指令完整保留在 Smali，实际重建不使用这些 Java 占位代码。对应关系见 `reports/java-decompilation-issues.json`。
- 全部托管 DLL 已成功导出 C#，常见 ILSpy 错误标记扫描未命中；这不等于恢复了原始 Unity 工程或验证了每个方法语义。
- 原生 `.so`、Unity 资源数据、机器学习模型保留原二进制。源文件名、注释、混淆前名称、Unity 编辑器工程及资产导入设置通常不在 APK 中。
- 原厂证书与重建证书不同，地图等依赖包名/证书绑定的服务仍需另行验证。
- 仓库中的第三方代码与资源保留其原有权利归属；本次提取和重建没有改变其许可条件。

工具：REA 6.4.0、JADX 1.5.6 / headless 0.7.1、Apktool 3.0.3、ILSpy 11.1.0.9782、Android Build-Tools 35.0.0。
