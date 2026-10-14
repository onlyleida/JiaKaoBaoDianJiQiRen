# libtnpn / Android 11 x86 ARM bridge 崩溃定位

2026-10-14。静态 ELF / REA Ghidra 分析与已有 tombstone 对照；未执行 APK、未修改原库、未访问原厂服务器。

## 结论

崩溃时 guest 地址 `0xb8768718` 对应原 ELF 虚拟地址及文件偏移 `0x8f718`，位于 **OPENSSL_cpuid_setup + 0xe8**。这是 libtnpn 的 `.init_array` 加载期构造器中的 CPU 能力探测代码，并非 JNI_OnLoad。

该库明确支持 **`OPENSSL_armcap=0` 环境变量**：在函数入口 getenv 成功后，strtoul(...,NULL,0) 写入能力位并立即返回；全部 sigaction / sigsetjmp / NEON / AES / PMULL / SHA / tick 探测均被跳过。保留原 SO 和 native 签名/编解码逻辑，在第一次 System.loadLibrary("tnpn") 前设置环境变量，是目前最小且证据充分的兼容实验。能否排除整个 APK 后续崩溃仍需父任务实际运行验证。

## 1. 原件与地址

- 原库：`/Users/leida/Documents/Codex/2026-10-14/ne/work/JiaKaoBaoDianJiQiRen/android/lib/armeabi-v7a/libtnpn.so`
- SHA-256：`a644d6800f2732798185741da30d8ced39c6f0d7acb67192d384cee6e425dd44`
- ELF32 little-endian，ET_DYN，EM_ARM (40)，入口0。第一 PT_LOAD：file offset=0、vaddr=0、filesz=0x1fbbce、PF_R|PF_X；第二 PT_LOAD：off=0x1fc284、vaddr=0x1fd284。
- 已有证据：`/Users/leida/Documents/Codex/2026-10-14/ne/work/local-runtime-attempt2/tombstones/tombstone_00`。
- tombstone 第274行：libtnpn 首映射从 `0xb86d9000`、file offset 0；第276-277行有后续映射。
- `0xb8768718 - 0xb86d9000 = 0x8f718`。此偏移在第一 PT_LOAD 内，所以当前区间的 ELF vaddr 与原文件偏移相同。
- Ghidra 对该 ET_DYN 使用 **0x10000 分析装载基址**。其 `.text` 为0x70000，原 ELF `.text` 为0x60000。因此分析地址必须加0x10000：`0x8f718 -> 0x9f718`。
- REA `address_to_file_offset(0x9f718)` 实际返回587544，即0x8f718；read_bytes返回`000050e30800000a`，与原文件字节一致。

证据：REA overview `ev_249d232ca734fb76f7e3bb82f9d19ace52534cbbda5c521901d82148a3929e6c`；文件映射 `ev_78fe89bde9e0aadac07a35c4918bc22bb5bd84bcce6d70570536c056d35895e0`；字节 `ev_b85bb8a8bba5fdddff4b74de7892059319d8180efebbd331b16b07a6fe51ff0f`。

注意：首次把原地址直接输入 REA 的 `analyze_function(0x8f718)` 得到了另一个函数 RAND_DRBG_reseed（原地址0x7f558）的 dossier。该记录 `ev_ec2d76a4e9b7b325502387c87307a62e191c9a5b6cfd642d21a623338af37129` **不属于崩溃点，不能用于崩溃归因**。此偏差已由实际 load image/source mapping纠正，不是原符号表损坏。

## 2. 确认加载期构造器

使用 Python struct 直接解析原件 ELF，不依赖反编译名：

- `.dynsym` index3256：OPENSSL_cpuid_setup，st_value=0x8f630，st_size=0x1f4，.text。
- `.init_array` ELF VA=0x2132f0，file offset=0x2122f0，size=4，原字节零。
- 对该唯一槽的 `.rel.dyn`：r_offset=0x2132f0，r_info=0x000cb802，即symbol3256 + R_ARM_ABS32，addend=0。动态链接后槽指向 OPENSSL_cpuid_setup。
- 动态 DT_INIT_ARRAY=0x2132f0，DT_INIT_ARRAYSZ=4；没有发现 JNI_OnLoad 动态符号。
- REA 也观察到分析 `.init_array` 地址0x2232f0指向0x9f630的DATA引用。
- JNI导出是静态名称绑定，例如 Riddle_s原地址0x60091、Riddle_d 0x60171、Riddle_e 0x6024d（低位1表示Thumb入口）；其余还有NativeDecoder导出。此次崩溃位置不在这些方法内。
- DT_NEEDED：liblog.so、libm.so、libdl.so、libc.so；OpenSSL实现位于libtnpn内部。

## 3. 实际控制流与环境变量

主要 REA dossier：**`ev_2f2f83b9c9aed883abb496185fde08fa91776929b50f3db5ad0122e7945e9ae8`**；provider Ghidra12.1.4；函数分析地址0x9f630。

以下地址统一使用原 ELF 地址（REA地址减0x10000）：

```text
0x8f63c..0x8f658  检查并设置一次性初始化标记
0x8f65c          取字符串 OPENSSL_armcap
0x8f660          getenv("OPENSSL_armcap")
0x8f664..668     若 NULL 才跳到完整探测分支0x8f68c
0x8f66c..674     strtoul(value,NULL,0)
0x8f678..680     将结果写入CPU能力位
0x8f684..688     返回

0x8f6cc          sigprocmask
0x8f6dc          sigaction(SIGILL,...)
0x8f6ec          第一次 sigsetjmp
0x8f6f8          _armv7_neon_probe
0x8f704..708     cap |= 1
0x8f714          第二次 sigsetjmp
0x8f718          cmp r0,#0             <-- guest地址候选落点
0x8f71c          beq 0x8f744
0x8f744          _armv8_pmull_probe
后续             AES/SHA1/SHA256探测及_armv7_tick
0x8f7dc..7ec     恢复信号处理器/掩码
```

`OPENSSL_armcap=0` 是有效非空字符串，strtoul给出0，走早返回；不是需要把变量删除，也不是字符串false。变量必须在库构造器第一次执行前可见；构造器已有一次性标记，所以事后再设置不能重跑/撤销已发生的探测。

## 4. 翻译器故障证据与仍未知的部分

运行环境来自 tombstone第2-4行：Android11 / google sdk_gphone_x86 generic_x86_arm，ABI x86。已有 logcat第1046行记录 NDK translation armv7l version0.2.2。

已观察：

- tombstone第8行 SIGSEGV / SEGV_MAPERR，fault=0xd24f21d8。
- 原生PC `eip=0xdcb51cf7`，第14行明确落在 **libndk_translation.so / TableOfTables<unsigned int, void const*>::GetPointer(unsigned int)+39**；随后是 ExecuteGuest、RunGuestCall。
- 第9-10行 eax=0xd24c4000，esi=0xb876，ecx=0x8718；栈第94-95、150-152行反复保存0xb8768718。
- `0xd24c4000 + 0xb876 * 4 = 0xd24f21d8`，恰等于fault地址。第690行该表基址映射只有0x20000字节，到0xd24e3fff；第691行确认fault落在未映射间隙。
- guest候选落点的ARM字节是`000050e3`，即cmp r0,#0，本身不读取该非法内存。

因此强推断是：ARM guest CPU探测/信号及setjmp相关控制流触发了 native bridge 地址映射表的失败，而非Riddle业务函数访问该地址。仅凭这份 x86 tombstone **不能证明**精确是哪次sigsetjmp返回、SIGILL恢复或翻译器内部状态错误，也不能证明原库在真ARM设备有同样崩溃。guest地址的身份来自寄存器拆分/栈与映射，不是此tombstone直接给出的完整ARM寄存器集。

## 5. 最小调试建议

父任务拟定方案：在独立本地APK覆盖层的 Riddle.<clinit> 中，原 System.loadLibrary("tnpn") 前调用 `android.system.Os.setenv("OPENSSL_armcap", "0", true)`，保留原loadLibrary、全部native方法和libtnpn字节。这个顺序符合已确认的构造器早返回机制；应用层调整不需要用假签名或空加密结果取代原native方法。

相关源码与Smali：

- `work/JiaKaoBaoDianJiQiRen/java/sources/cn/mucang/android/core/jni/Riddle.java:4-6`。
- `work/JiaKaoBaoDianJiQiRen/android/smali/cn/mucang/android/core/jni/Riddle.smali:7-16`，原clinit `.locals 1`，调用Os.setenv需要足够寄存器。
- 还有第二个加载点：`work/JiaKaoBaoDianJiQiRen/java/sources/cn/mucang/android/video/jni/NativeDecoder.java:11`，对应 `android/smali_classes4/cn/mucang/android/video/jni/NativeDecoder.smali:22`。如果某运行路径先触发NativeDecoder，单改Riddle不会提前设置环境变量；当前启动可先验证Riddle方案，后续覆盖这个边界或在更早的共享Application初始化设置。

推荐验收：同一原SO SHA256、同一模拟器/API镜像，重新冷启动本地APK，确认此次libtnpn构造器崩溃消失，继续采集新logcat/tombstone和启动画面；能启动不等于完整教学已验证。若仍崩溃，先确认环境变量是否在第一次加载前生效，再对新的guestPC独立定位，不盲目删除native逻辑。

此调查只改变了工作目录中的报告与REA导出证据。没有构建、安装、启动或推送APK。

## Evidence 导出

`/Users/leida/Documents/Codex/2026-10-14/ne/work/tnpn-native-evidence.json`

主要使用上列正确dossier、overview、source-mapping和字节Evidence。导出可能含早期其他调查记录；每个记录需按subject SHA256和evidence_id选择。错误地址的首个dossier已明确标记不得用于本次归因。

## 6. 备用方案：入口 ARM bx lr（仅静态准备，未应用）

父任务反馈：Riddle.<clinit> 的 Os.setenv 实验仍在同一 guest offset 0x8f718 崩溃；目前运行38591436410正测试进程启动前的 debuggable + wrap.sh 环境注入。以上是父任务提供的运行状态，此子调查未运行这两种变体。若 wrapper 成功，不需要采用下列 native 补丁。

本节重新从**原始SO**读取 ELF，并复用上一节保存的完整 OPENSSL_cpuid_setup REA dossier。只在Python内存副本中计算拟议校验值，未写出修改版SO。

### 补丁位置、字节及完整校验值

| 项目 | 值 |
|---|---|
| 原文件大小 | 2,188,028 bytes |
| 入口原ELF VA | 0x8f630 |
| 原文件offset | 0x8f630（所在PT_LOAD vaddr=file offset） |
| Ghidra地址 | 0x9f630 |
| 原4字节 | `30 48 2d e9`，机器字0xe92d4830，`push {r4,r5,r11,lr}` |
| 建议4字节 | `1e ff 2f e1`，机器字0xe12fff1e，`bx lr` |
| 原SHA256 | `a644d6800f2732798185741da30d8ced39c6f0d7acb67192d384cee6e425dd44` |
| 仅上述4字节替换的预计SHA256 | `f17274ba5aa69a4b86323e47068d24ea557413f4c2940dd62252600e5a9623f6` |

`.dynsym` index3256的st_info=0x12（GLOBAL/FUNC）、st_value=0x8f630、st_size=0x1f4、section13。入口地址低位0且4字节对齐，原指令也确认为ARM，**不能写成Thumb bx lr的2字节编码**。

### 能力位初值为0的ELF证据

动态符号表未包含公开的 `OPENSSL_armcap_P` 名称；因此这里准确地指称“OPENSSL_cpuid_setup写入的ARM能力位全局”，不把惯用OpenSSL源码名字当成该原件的已观察导出名。

`0x8f678` 从literal0x8f800载入0x183e58；`0x8f67c` 使用ARM PC+8寻址，目标GOT槽为 `0x8f67c + 8 + 0x183e58 = 0x2134dc`。该槽对应file offset0x2124dc，原值为 **0x2192a4**。`.rel.dyn`对应项r_info=0x17（symbol0 / R_ARM_RELATIVE），加载后槽指向load_bias+0x2192a4。同一函数的常规探测分支也经同一槽写入cap。

原 `.bss` 为 **SHT_NOBITS (8)**，SHF_ALLOC|SHF_WRITE，VA=0x216b50，size=0x2f50，范围 **[0x216b50,0x219aa0)**，包含0x2192a4。它位于第二PT_LOAD的p_memsz超过p_filesz的零填充区：第二段p_vaddr=0x1fd284，p_filesz=0x198c0，p_memsz=0x1c81c；file-backed部分到0x216b44，内存到0x219aa0。因此新加载时该cap值由ELF零填充得到0；不是把原文件中相同数字偏移的4字节误当BSS初值。REA对应名字是DAT_002292a4（分析地址比原VA高0x10000）。相邻一次性初始化标记为原VA0x2192a8 / REA DAT_002292a8，同在BSS。

### 返回ABI与功能边界

- 在**第一条指令**替换为ARM bx lr，尚未push或调整SP，因此不会留下未配对栈帧；不会改写callee-saved寄存器；LR原样决定返回地址/ARM-Thumb互操作状态。
- 原函数签名为void；构造器以及其普通调用者不依赖返回值。直接返回不需要设置r0。
- 完整函数dossier中已观察的副作用仅为：一次性标记、读取OPENSSL_armcap、写入能力位、临时信号掩码/SIGILL处理器、通过sigsetjmp执行CPU探测，最后恢复信号状态。未发现JNI注册、授权/签名验证、算法密钥或其他业务初始化。
- 新进程中cap保留为0，效果对应原函数本来支持的 `OPENSSL_armcap=0` 能力结果。它会关闭相关NEON/AES/PMULL/SHA加速和tick能力，属于CPU能力选择/计时探测的兼容调整，不是替换Riddle签名/加密函数。
- **不完全逐指令等价**：入口返回也跳过一次性标记赋1，该标记一直为0；后续显式调用setup同样立即返回。它还忽略所有OPENSSL_armcap环境值。已见函数内标记只用于抑制重复探测，但本调查没有对所有代码中的潜在运行时全局写入做全程序证明。
- cap为0的推断依赖新加载的BSS；不要把该补丁当作对“已运行且cap曾被置位的进程”的实时清零操作。重建/重装后冷启动是适当验证方式。
- 原库其余字节、native方法、算法实现和静态导出仍应完整保留。静态证据不能证明模拟器所有后续代码均兼容或密码计算输出等价；还需实际加载、签名/编解码调用和界面进度验证。

实施门槛建议：若父任务决定采用，只在独立本地覆盖副本上同时核对原完整SHA256、文件大小、offset处原4字节；修改后核对预计完整SHA256并记录仅4字节变化。不要在未知版本库上按固定offset盲改，不应覆盖原件。此子调查未应用该补丁，也未重开REA native session。

## 7. 重签名后 exit(1)：Riddle 证书允许列表

补充日期2026-10-15。父任务反馈portable CPU变体已经越过上述SIGSEGV，随后反复clean exit(1)。本节仅分析原libtnpn静态调用链，不把父任务的运行反馈误作由此子任务采集的native断点证据；静态发现与该现象高度一致，但首次queued-work mutex异常是否是exit清理副作用尚未证明。

### Riddle.c() 是检查入口，不是通用初始化

应用 `java/sources/cn/mucang/android/core/config/p.java:59-63,81-85` 在Application.onCreate早期调用Riddle.c；唯一找到的对应Smali调用为 `android/smali/cn/mucang/android/core/config/p.smali:153`。

原SO导出 `Java_cn_mucang_android_core_jni_Riddle_c` 的ELF st_value=0x61379（Thumb标记），实际代码offset0x61378长4字节；REA地址0x71378是一条Thumb b.w，经Thumb/ARM veneer跳入 `block01_f7_m1`。共同检查函数真实ELF地址0x6134c（REA0x7134c）：

```text
if (result == 2)
    result = block01_f7_m4(JNIEnv);
if (result != 1)
    exit(1);
return 1;
```

`result`为原ELF VA0x21600c/file offset0x21500c处的32位全局，原值**2**。检查返回1表示匹配，0表示所有已安装签名均未匹配；结果被缓存。这里的exit参数明确是整数1。

**只跳过Java Riddle.c调用不够**：`Java_cn_mucang_android_core_jni_Riddle_s`（ELF0x60090/REA0x70090）在真实计算前也直接调用相同block01_f7_m1。Riddle_d与Riddle_e已检查的入口没有这次共同证书检查，仍有各自其他逻辑；没有据此声称所有native功能已完整分析。

### 实际检查字段：完整签名证书DER的十六进制

`block01_f7_m4`（ELF0x610c0/REA0x710c0）调用顺序如下。JNI名称存于int数组，由block01_f7_m2取每个int的低字节并补NUL；以下名称已按原字节解码，不是仅由变量名字猜测：

1. `cn/mucang/android/core/config/MucangConfig.getContext(): android.app.Application`。
2. `android.content.Context.getPackageName(): String` 和 `getPackageManager(): PackageManager`。
3. `PackageManager.getPackageInfo(packageName, 0x40): PackageInfo`。
4. 读取 `PackageInfo.signatures: android.content.pm.Signature[]`。
5. 逐个调用 `Signature.toCharsString(): String`，通过JNI GetStringUTFChars取得C字符串。
6. 用strcmp依次和RELEASE_SIGN_1、RELEASE_SIGN_2、DEBUG_SIGN比较；任意一个完全相等就返回1，全部不相等返回0。

三个原常量都是可解析X.509 DER证书的**小写hex字符串**。本地替换内容应为本次签名证书的完整`DER.hex()`，不是SHA256/SHA1指纹、证书主题、PEM文本或原始二进制DER。该函数没有观察到DEX、APK ZIP、资源或文件hash完整性检查。

### DEBUG_SIGN 无额外 debuggable 条件

**在已完整分析的共同检查函数和证书比较函数内，DEBUG_SIGN与两条RELEASE_SIGN是平级的第三个允许值，不受manifest debuggable、BuildConfig.DEBUG、包名分支或环境变量开关保护。**

具体控制流（REA地址）：0x712b4 strcmp(RELEASE_SIGN_1)后0x712b8相等跳0x712ea；不相等继续0x712c0 strcmp(RELEASE_SIGN_2)，0x712c4相等跳同一点；再不相等就0x712c6..0x712d0直接取得DEBUG_SIGN并strcmp，0x712d4相等也跳同一点。0x712ea..0x712fa释放UTF字符串并返回1。这三次比较之间无额外debug判定。外层只检查缓存result是否为2/1，不提供debug条件。

因此把独立本地变体的DEBUG_SIGN替换成本次调试证书即可允许它；不需要把Application标记为debuggable才能让这个比较生效。名称DEBUG_SIGN仅说明开发者原始命名，不能当作条件证据。边界：这是对当前两个函数的完整控制流结论，不声称应用别处不存在任何debug检查。

### 常量位置与容量

原库SHA256仍为 `a644d6800f2732798185741da30d8ced39c6f0d7acb67192d384cee6e425dd44`。

| 名称 | 指针变量ELF VA / file offset | 指向的字符串ELF VA=file offset | ASCII字符数 | DER字节数 |
|---|---|---|---:|---:|
| RELEASE_SIGN_1 | 0x216000 / 0x215000 | 0x1baa1b | 1166 | 583 |
| RELEASE_SIGN_2 | 0x216004 / 0x215004 | 0x1baeaa | 1870 | 935 |
| DEBUG_SIGN | 0x216008 / 0x215008 | **0x1bb5f9** | **1754** | **877** |

DEBUG_SIGN变量本身仅4字节（dynsym index3087，GLOBAL/OBJECT），不能把证书写到指针变量位置。其字符串NUL在**0x1bbcd3**，下一字节**0x1bbcd4**已经是`mc_video_decoder`字符串。可原位使用的范围是 **[0x1bb5f9,0x1bbcd4)**，共1755字节，包含终止NUL。`0x216008`有R_ARM_RELATIVE重定位；GOT槽0x2134c0有对应DEBUG_SIGN的动态重定位；原位替换字符串无需改这些指针或重定位。

原DEBUG证书DER SHA256为 `c9911ef8e4a38b748d914688866a82e68577d0a1ec89450e9f39dc2c24059695`，仅用作原常量身份核对，不能把该hash当比较字符串。其DER已通过本机OpenSSL x509只读解析。

### 保留校验的本地重签名方案

优先方案是替换该独立本地变体的DEBUG_SIGN槽，保留Riddle.c和Riddle.s共同检查，保留两条原发布证书和所有签名/编解码算法：

1. 在prepare阶段生成或明确复用调试keystore及alias。与现有build.py约定一致时是输出项目`.cache/reconstruction-debug.p12`、alias `reconstruction`。
2. 用keytool exportcert导出同一alias的DER，不带-rfc；或用其他严格DER证书导出方式。取得完整DER后转小写hex。
3. 检查hex仅含0-9a-f、长度为偶数且不超过1754；检查该DER证书与即将用于APK签名的证书完全相同。
4. 只在独立覆盖SO中，把0x1bb5f9开始的1755字节替换为 `cert_hex_ascii + NUL + 零填充`；短于原长度补零，**超过容量则失败，不能截断或覆盖下一字符串**。可生成较短subject的调试证书以适应容量。
5. build必须复用同一keystore与alias，不能另一个CI步骤重新生成密钥。校验最终APK签名证书DER与槽内容匹配，而不只确认apksigner显示签名有效。
6. 记录原/新整库SHA256、精确修改区间与签名证书SHA256；若同一副本还有CPU兼容4字节修改，两种差异分开列出。

这比将共同门改成恒成功更能保留原校验语义。替换DEBUG_SIGN意味着该**本地变体**的第三个允许证书由原开发证书换成本次调试证书；原厂认证、服务端权限、硬件/教学状态没有因此获得或恢复。此子任务未修改任何APK源或SO。

### 本次证据档案与可复核ID

档案：`/Users/leida/Documents/Codex/2026-10-14/ne/work/tnpn-certificate-gate-records.json`，包含9个原REA工具调用返回的完整structuredContent Evidence record，保留各自subject、provider、analysis_profile、raw_result、normalized_result、limitations和ID。

会话在本次整理要求前已经按要求关闭；关闭后再调用REA canonical export返回0条，因此没有把空导出误当成功证据。此档案从本会话保留的**原完整工具结果**封装，无重新反编译，也未伪称为REA canonical bundle；顶层format为`retained-rea-tool-evidence-records`。可直接读取records数组审查，但不保证REA inspect-evidence-bundle接受这个封装。之前CPU分析canonical bundle仍保存在`work/tnpn-native-evidence.json`。

| 主题 | Evidence ID |
|---|---|
| Riddle.c导出跳转 | ev_fc3927d99d99f913343674130c8767a3a0cbf1ce86090c9d74600c8f0fe6121d |
| Thumb/ARM veneer | ev_87fcb6dbbab75270fa148184fdcf7f63b85a5cadfc56eaa167579f8df977f8e7 |
| 共同门/缓存/exit(1) | ev_d67bad063f00afffaa4d7adae78d0dd7819b48e1cdc34beb785869fed3c314b4 |
| 证书比较完整函数 | ev_7e6e70ee5f072e6c803eda0066c942b0507183a23026710c88241509159f1d50 |
| int数组字符串还原函数 | ev_46af91cf50e1c03efed68bc63909f80c496dad6b2857d1b734159c6584f93749 |
| MucangConfig上下文取得 | ev_c6a1f1a72594d96e9b629b020a011a08178c2c2ce5405db27cade32033562f67 |
| Riddle.s入口也检查 | ev_d21cbd06bf0424653a7662673b63423d6107f422b94261644a52df49f34adb80 |
| Riddle.d入口边界 | ev_c8758db678e80833b1b6c04f7dd9b309d2e9fd65710496b892d50339847b7424 |
| Riddle.e入口边界 | ev_66515a61bd03b37be16f559d647ad1fbb17128c725f284e5355f476d8a21b5d7 |
