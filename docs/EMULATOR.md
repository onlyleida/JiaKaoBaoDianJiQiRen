# 模拟器兼容构建

该变体用于本地界面和接口调试，原始 `android/` 文件不修改。它与原包、普通重建包和仅重定向后端的包分别保存。默认保留原语音 SDK 初始化；API 30 的语音降级属于未成功启动的诊断分支。完整教学仍需要 APK 外的 Unity 100/101 资源及车辆硬件；本地接口空响应不能补出这些二进制。

## 已定位的问题和处理范围

| 运行障碍 | 兼容变体的处理 |
|---|---|
| API 30 ARM 转译执行 libtnpn 的 OpenSSL CPU 探测时 SIGSEGV | 只将文件偏移 0x8f630 的 ARM 指令改为 `bx lr`，保持初始 CPU 能力位为 0，使用通用算法路径 |
| 重签名后 Riddle.c / Riddle.s 校验证书失败，调用 exit(1) | 保留校验流程和两张原发布证书；将 DEBUG_SIGN 数据槽换为本构建签名证书的完整 DER hex |
| Application 初始化讯飞 libmsc 后，后台线程在 ARM 转译中 SIGSEGV | 采用已验证能保留原语音初始化的 API 28。实验性 `--disable-speech` 可在 API 30 停用两个入口并以错误 24007 回调释放 TTS 队列；该降级仍无法解决 API 30 后续 PAG 动画崩溃 |
| 原网络探测依赖厂商 ping 主机 | 该变体改为 ping 127.0.0.1；这只表示本地连通，不能代表互联网或业务服务正常 |
| 启动等待车辆信号盒 | 将原软件已有 `debugKeyBlueTooth` 的缺省值设为 true；原调试页仍可改变此偏好；真实硬件未验证 |

业务 API 使用 `prepare_local_apk.py` 的 23 个主机覆盖和普通表单传输设置，连接 `http://127.0.0.1:8765`。第三方 SDK、WebView 等不等于全部已重定向；云端测试在安装前用 guest IPv4/IPv6 防火墙阻止非回环流量，并通过 `adb reverse` 连接本地后端。

## 重建

需要 Python 3.9+、JDK 21、Android SDK build-tools 35.0.0 和 platforms;android-28（编译新增 Java 页面）。设置好 JAVA_HOME、PATH、ANDROID_HOME 后，在仓库根目录执行：

```sh
python3 server/prepare_emulator_apk.py --output .cache/my-emulator-build --local-workbench
python3 .cache/my-emulator-build/scripts/build.py \
  --payload-overrides .cache/my-emulator-build/reports/payload-overrides.json
```

输出位于 `.cache/my-emulator-build/dist/jiakaoyi-coach-11.6.5-rebuilt-debug.apk`。输出目录必须是新目录。prepare 生成私有调试密钥和公开 DER 证书，build 必须使用同一输出目录里的密钥；不要删除密钥后另行签名。密钥不会进入 Git 或 Release，最终 APK 的证书 SHA256 必须与 native 允许证书一致，否则构建校验失败。

校验记录包含原/改后 SO SHA256、两个 native 修改范围、Smali 差异、最终签名证书和 APK SHA256。除声明的 native 修改外，原包保留载荷逐项校验；六个 DEX 重新组装。

## 运行和证据

推荐执行仓库的手动工作流 `Run ARM compatibility APK`，选择 API 28。它创建一次性 Linux Android 9 x86/ARM32 转译模拟器、启动本地服务、安装 APK、完成可识别的隐私及录屏确认，以 1280×720 逻辑显示区域验证原生设置和语音设置页面，并保存截图、完整 logcat、tombstone、后端请求记录。

```sh
gh workflow run runtime-emulator-apk.yml --ref main -f api=28
```

工作流成功只表示证据收集完成。检查 `stable_process_observed`、连续 PID、进程死亡记录和真实截图；不得用一次 PID 采样或绿色 CI 判断正常启动。原生设置页面通过 root ADB 显式调试入口打开，与正常启动进入 Unity 教学首页分别记录。

本机现有 ARM64-only 镜像无法安装此 APK 的 ARM32 库。运行前实际检查 `ro.product.cpu.abilist` 必须包含 `armeabi-v7a`，不要仅凭 Android 版本或电脑为 Apple Silicon 推断兼容。

具体运行结果见 [VALIDATION.md](VALIDATION.md)。原生分析和原始证据见 `reports/tnpn-native-findings.md`、`reports/tnpn-native-evidence.json.gz`、`reports/tnpn-certificate-gate-records.json.gz`。


## 当前可用范围

2026-10-15 运行38597306444已核对真实截图：原生设置页、点击后的语音设置页和返回操作通过，同一进程没有退出或崩溃。正常启动仍在type100 Unity包加载阶段停止；这些包不在已提取的APK中。设置页是调试入口，不能当作恢复完整教学首页。

安装包：[API28 模拟器兼容 APK](https://github.com/onlyleida/JiaKaoBaoDianJiQiRen/releases/download/apk-11.6.5-rebuild/jiakaoyi-coach-11.6.5-emulator-api28-debug.apk)。SHA256以同名`.sha256`及`reports/emulator-runtime-review.json`为准。


## 本地调试工作台

`--local-workbench` 在隔离副本中新增纯 Android 页面：原启动检查仍会尝试下载 Unity；仅在 100/101 加载失败时进入工作台，既不调用成功回调，也不制造占位资源。工作台提供服务/资源状态、独立接口登录/检查/退出、原生设置和原生登录页、重试原启动。默认测试码为 `12345678`，此接口会话不代表原版教学登录完成。

Java 源码位于 `local-workbench/LocalWorkbenchActivity.java`；JDK 21 编译为 Java 8 字节码，SDK d8 转成单独的 `classes7.dex`，打包后校验哈希。原六份 DEX 仍由 Smali 重建。常规构建未声明该页面时不会编译/注入此 DEX。原生登录页只有带工作台返回标记时才使用 finish 返回；其他入口保留原退出行为。

本地服务启动后执行 `adb -s YOUR_DEVICE_SERIAL reverse tcp:8765 tcp:8765`，再从应用图标正常启动。无法连接时，工作台给出服务启动与连接提示。资源状态按最新登记文件的实际长度及 SHA256 核对；文件存在仍不代表格式和运行兼容。

导入真正兼容的文件使用 server/README.md 的资源命令。APK 内 Unity 对象的进一步核验见 `reports/unity-external-modules-findings.md`：内置包仅有加载场景，不能还原缺失原版教学。新增工作台的运行结果以最新截图和审阅报告为准。
