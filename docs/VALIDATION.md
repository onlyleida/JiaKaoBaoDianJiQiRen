# 验证记录

日期：2026-10-14。输入为用户提供的 `jiakaoyi_coach_080359.apk.1.1`，SHA256：`a52da069ad1fa88a35923b003b68f4d9c240679d4cde386985999dff133a7349`。

## 已通过

| 检查 | 结果 | 证据 |
| --- | --- | --- |
| 原包签名 | apksigner 校验通过，v1/v2 有效；不是开发者身份认证 | `reports/original-signature.txt` |
| Smali 重建 | Apktool 3.0.3 成功重建全部 6 个 DEX | `scripts/build.py`，`reports/rebuilt-build-verification.json` |
| 类覆盖 | 33,298 个类定义；每个 DEX 的类描述符、方法引用和字段引用集合均与原包一致 | `reports/rebuilt-dex-identities.json` |
| Android 资源表 | 11,480 个 ID/类型/名称一致；忽略重编译后的文件路径和 public 标记后，配置与表值全部一致 | `reports/rebuilt-resource-coverage.json` |
| APK 成员追踪 | 3,408 个成员均已记录，无未映射成员；DEX、XML/资源表解码，其他载荷保留 | `reports/apk-entry-coverage.json` |
| 原样载荷 | 490 个非资源表/DEX/签名的成员与原包 SHA256 一致，包括 309 个 assets 和 42 个 `.so` | `reports/rebuilt-build-verification.json` |
| 托管程序集 | 105/105 个 DLL 已导出 C#，0 次导出失败；334 条显式 DLL 引用存在且为相对路径 | `reports/managed-full-export.json` |
| 对齐与签名 | zipalign 检查成功、apksigner 验证通过 | `reports/rebuilt-alignment.txt`，`reports/rebuilt-signature.txt` |

签名 APK：`jiakaoyi-coach-11.6.5-rebuilt-debug.apk`，111,990,129 字节。

SHA256：`a9e04523d27a7ffc58d87e7988fa49463764a9cf4ea12935e223f3986d1b2acb`。

上述校验不证明所有方法语义、SDK 服务、硬件交互或教学业务均已运行。资源文件可能经 AAPT2 重定位/重编码，重建包不是原包的逐字节副本。

## 安装与运行

在本次新建、已关闭网络的 Android 14 / API 34 ARM64 模拟器中，安装返回 `INSTALL_FAILED_NO_MATCHING_ABIS`。该模拟器的 `ro.product.cpu.abilist` 为 `arm64-v8a`，而原包的 42 个库全部为 `armeabi-v7a`。测试没有修改或使用用户现有 AVD。

随后下载了 Google 官方 Android 11 / API 30 ARM64 r16 镜像，并核对官方 SHA1 `0e66987d6b4db2e278af83d453ce5d74a7e6ced3`。镜像的 `build.prop` 同样声明 `ro.product.cpu.abilist=arm64-v8a`、`ro.product.cpu.abilist32=`，因此没有启动这个同样不兼容的镜像。

**最终运行结论：重建和签名成功，尚未验证安装成功或启动首屏。** 本次唯一安装尝试在 API 34 的纯 64 位环境被系统拒绝，目标 App 未执行。需要另有支持 `armeabi-v7a` 的安卓设备或系统；用户目前没有原运行设备。没有通过伪造 ABI 或删除原生库掩盖兼容问题。记录见 `reports/runtime-validation.json`。

Android 官方说明 API 31 及以上的模拟器系统镜像仅支持 64 位，见 [Support 64-bit architectures](https://developer.android.com/games/optimize/64-bit)。更早的 ARM64 镜像也必须检查其实际 ABI 列表，不能仅凭 Android 版本认定支持 ARM32。

## 保留的边界

Java 导出不是经过修复的可编译源码；C# 项目没有源码构建验证；原生库保留二进制。原厂签名私钥、服务端和包外 Unity/场地资源未取得。运行依赖见 [RUNTIME_DEPENDENCIES.md](RUNTIME_DEPENDENCIES.md)。
