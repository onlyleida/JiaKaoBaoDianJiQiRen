package cn.mucang.android.jiakaoyi.framework.utils;

import android.os.Environment;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.base.model.ModuleVersionInfo;
import cn.mucang.android.jiakaoyi.framework.consts.BoxVersion;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileLock;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0007J\b\u0010\u001b\u001a\u00020\u001cH\u0007J\b\u0010\u001d\u001a\u00020\u001eH\u0007J\b\u0010\u001f\u001a\u00020\u0006H\u0007J\n\u0010 \u001a\u0004\u0018\u00010\u0011H\u0007J\n\u0010!\u001a\u0004\u0018\u00010\u0006H\u0007J\b\u0010\"\u001a\u00020\u001eH\u0007J\n\u0010#\u001a\u0004\u0018\u00010\u0013H\u0007J\b\u0010$\u001a\u00020\u001eH\u0007J\b\u0010%\u001a\u00020\u001eH\u0007J\n\u0010&\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u001eH\u0007J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u001eH\u0007J\b\u0010*\u001a\u00020\u001eH\u0007J\b\u0010+\u001a\u00020\u0015H\u0007J\b\u0010,\u001a\u00020\u0018H\u0007J\u0018\u0010-\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0007J$\u0010.\u001a\u00020\u00182\b\u0010/\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u000101H\u0007J\u0010\u00102\u001a\u00020\u00182\u0006\u00103\u001a\u00020\u0013H\u0007J\u0010\u00104\u001a\u00020\u00182\u0006\u00105\u001a\u00020\u001eH\u0007J\u0012\u00106\u001a\u00020\u00182\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u00107\u001a\u00020\u00182\u0006\u00108\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0016¨\u00069"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/DeviceUtils;", "", "()V", "DEVICE_ID_FILE", "Ljava/io/File;", "KEY_SAFE_SPEED_CHECK", "", "KEY__AI_VERSION_INFO", "KEY__DEVICE_NUMBER", "KEY__DTU_ICCID", "KEY__DTU_IMEI", "KEY__DTU_PHONE_NUMBER", "KEY__DTU_VERSION", "KEY__HARDWARE_INFO", "KEY__MODULE_VERSION_INFO", "deviceNumber", "info", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "modulesVersionInfo", "Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;", "safeSpeedCheck", "", "Ljava/lang/Boolean;", "doSaveDeviceId2File", "", TtmlNode.ATTR_ID, "fullId", "getAppType", "", "getBoxVersion", "", "getDeviceNumber", "getHardwareInfo", "getHardwareNumber", "getHardwareVersion", "getModuleVersionInfo", "getObdVersion", "getOtaVersion", "getSerialNumber", "getSubModelHardwareVersion", "type", "getSubModelVersion", "getThrottleHardwareVersion", "isSafeSpeedCheck", "resetObdVersion", "saveDeviceIdToFile", "saveHardwareInfo", "hardwareInfo", "onBoxChange", "Lkotlin/Function0;", "saveModulesVersions", "moduleVersions", "setBoxVersion", "version", "setDeviceNumber", "setSafeSpeedCheck", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeviceUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DeviceUtils f3637a = new DeviceUtils();
    private static final File b = new File(Environment.getExternalStorageDirectory(), "zcvn");
    private static HardwareInfo c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ModuleVersionInfo f3638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f3639e;

    private DeviceUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public static final synchronized void a(String id, String fullId) {
        kotlin.jvm.internal.r.e(id, "id");
        kotlin.jvm.internal.r.e(fullId, "fullId");
        ?? sb = new StringBuilder();
        sb.append(id);
        sb.append(',');
        sb.append(fullId);
        String string = sb.toString();
        FileLock fileLock = null;
        try {
            try {
                try {
                    sb = new FileOutputStream(b).getChannel();
                    try {
                        FileLock fileLockLock = sb.lock();
                        Charset charset = Charsets.f15811a;
                        if (string == null) {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                        }
                        byte[] bytes = string.getBytes(charset);
                        kotlin.jvm.internal.r.d(bytes, "(this as java.lang.String).getBytes(charset)");
                        sb.write(ByteBuffer.wrap(bytes));
                        if (fileLockLock != null) {
                            fileLockLock.release();
                            sb = sb;
                        }
                        cn.mucang.android.core.utils.o.a(sb);
                    } catch (Exception unused) {
                        cn.mucang.android.core.utils.t.h("debugDeviceId", "写文件异常");
                        if (0 != 0) {
                            fileLock.release();
                            sb = sb;
                        }
                        cn.mucang.android.core.utils.o.a(sb);
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                sb = 0;
            } catch (Throwable th) {
                th = th;
                sb = 0;
                if (0 != 0) {
                    try {
                        fileLock.release();
                    } catch (Exception unused4) {
                    }
                }
                cn.mucang.android.core.utils.o.a(sb);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static final synchronized int b() {
        int iIntValue;
        HardwareInfo hardwareInfoD = d();
        Integer numValueOf = hardwareInfoD == null ? null : Integer.valueOf(hardwareInfoD.boxVersion);
        if (numValueOf == null) {
            iIntValue = (AppUtils.k() ? BoxVersion.VersionRobot : BoxVersion.Version1).id;
        } else {
            iIntValue = numValueOf.intValue();
        }
        return iIntValue;
    }

    public static final synchronized String c() {
        if (cn.mucang.android.core.utils.n0.g(f3639e)) {
            String str = f3639e;
            kotlin.jvm.internal.r.c(str);
            return str;
        }
        String strG = i0.g("key.deviceNumber", "");
        f3639e = strG;
        kotlin.jvm.internal.r.c(strG);
        return strG;
    }

    public static final synchronized HardwareInfo d() {
        HardwareInfo hardwareInfo = c;
        if (hardwareInfo != null) {
            return hardwareInfo;
        }
        String strG = i0.g("key.hardwareInfo", "");
        HardwareInfo hardwareInfo2 = cn.mucang.android.core.utils.n0.g(strG) ? (HardwareInfo) JSON.parseObject(strG, HardwareInfo.class) : null;
        c = hardwareInfo2;
        return hardwareInfo2;
    }

    public static final synchronized String e() {
        HardwareInfo hardwareInfoD;
        hardwareInfoD = d();
        return hardwareInfoD == null ? null : hardwareInfoD.hardwareNumber;
    }

    public static final synchronized int f() {
        HardwareInfo hardwareInfoD;
        hardwareInfoD = d();
        return hardwareInfoD == null ? 0 : hardwareInfoD.hardwareVersion;
    }

    public static final ModuleVersionInfo g() {
        ModuleVersionInfo moduleVersionInfo = f3638d;
        if (moduleVersionInfo != null) {
            return moduleVersionInfo;
        }
        String strG = i0.g("key.moduleVersionInfo", "");
        ModuleVersionInfo moduleVersionInfo2 = cn.mucang.android.core.utils.n0.g(strG) ? (ModuleVersionInfo) JSON.parseObject(strG, ModuleVersionInfo.class) : null;
        f3638d = moduleVersionInfo2;
        return moduleVersionInfo2;
    }

    public static final synchronized int h() {
        HardwareInfo hardwareInfoD;
        hardwareInfoD = d();
        return hardwareInfoD == null ? 1 : hardwareInfoD.obdVersion;
    }

    public static final synchronized int i() {
        HardwareInfo hardwareInfoD;
        hardwareInfoD = d();
        return hardwareInfoD == null ? 1 : hardwareInfoD.otaVersion;
    }

    public static final synchronized String j() {
        HardwareInfo hardwareInfoD;
        hardwareInfoD = d();
        return hardwareInfoD == null ? null : hardwareInfoD.serialNumber;
    }

    public static final synchronized int k(int i) {
        int i2;
        HardwareInfo hardwareInfoD = d();
        i2 = 0;
        switch (i) {
            case 1:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.hardwareVersion;
                }
                break;
            case 2:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.hardwareVersion;
                }
                break;
            case 3:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.signalHardwareVersion;
                }
                break;
            case 4:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.ultrasonic1HardwareVersion;
                }
                break;
            case 5:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.ultrasonic2HardwareVersion;
                }
                break;
            case 6:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.micSafeHardwareVersion;
                }
                break;
            case 7:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.throttleHardwareVersion;
                }
                break;
            case 8:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.gearHardwareVersion;
                }
                break;
        }
        return i2;
    }

    public static final synchronized int l(int i) {
        int i2;
        HardwareInfo hardwareInfoD = d();
        i2 = 0;
        switch (i) {
            case 3:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.signalFirmwareVersion;
                }
                break;
            case 4:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.ultrasonic1FirmwareVersion;
                }
                break;
            case 5:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.ultrasonic2FirmwareVersion;
                }
                break;
            case 6:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.micSafeFirmwareVersion;
                }
                break;
            case 7:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.throttleFirmwareVersion;
                }
                break;
            case 8:
                if (hardwareInfoD != null) {
                    i2 = hardwareInfoD.gearFirmwareVersion;
                }
                break;
        }
        return i2;
    }

    public static final int m() {
        return l(7);
    }

    public static final synchronized void o() {
        HardwareInfo hardwareInfoD = d();
        if (hardwareInfoD != null) {
            hardwareInfoD.obdVersion = 1;
        }
        s(hardwareInfoD, null, 2, null);
    }

    public static final void p(final String id, final String fullId) {
        kotlin.jvm.internal.r.e(id, "id");
        kotlin.jvm.internal.r.e(fullId, "fullId");
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.b
            @Override // java.lang.Runnable
            public final void run() {
                DeviceUtils.q(id, fullId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(String id, String fullId) {
        kotlin.jvm.internal.r.e(id, "$id");
        kotlin.jvm.internal.r.e(fullId, "$fullId");
        a(id, fullId);
    }

    public static final synchronized void r(HardwareInfo hardwareInfo, Function0<kotlin.v> function0) {
        if (hardwareInfo == null) {
            return;
        }
        if (c == null) {
            c = d();
        }
        HardwareInfo hardwareInfo2 = c;
        if (hardwareInfo2 != null) {
            kotlin.jvm.internal.r.c(hardwareInfo2);
            if (hardwareInfo2.boxVersion != 0) {
                HardwareInfo hardwareInfo3 = c;
                kotlin.jvm.internal.r.c(hardwareInfo3);
                if (hardwareInfo3.boxVersion != hardwareInfo.boxVersion && function0 != null) {
                    function0.invoke();
                }
            }
        }
        if (AppUtils.k()) {
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xySccHw", String.valueOf(hardwareInfo.signalHardwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xySccSw", String.valueOf(hardwareInfo.signalFirmwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyUlt1Hw", String.valueOf(hardwareInfo.ultrasonic1HardwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyUlt1Sw", String.valueOf(hardwareInfo.ultrasonic1FirmwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyUlt2Hw", String.valueOf(hardwareInfo.ultrasonic2HardwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyUlt2Sw", String.valueOf(hardwareInfo.ultrasonic2FirmwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xySafeHw", String.valueOf(hardwareInfo.micSafeHardwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xySafeSw", String.valueOf(hardwareInfo.micSafeFirmwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyThrHw", String.valueOf(hardwareInfo.throttleHardwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyThrSw", String.valueOf(hardwareInfo.throttleFirmwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyGearHw", String.valueOf(hardwareInfo.gearHardwareVersion));
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("xyGearSw", String.valueOf(hardwareInfo.gearFirmwareVersion));
        }
        i0.m("key.hardwareInfo", JSON.toJSONString(hardwareInfo));
        c = hardwareInfo;
    }

    public static /* synthetic */ void s(HardwareInfo hardwareInfo, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        r(hardwareInfo, function0);
    }

    public static final void t(ModuleVersionInfo moduleVersions) {
        kotlin.jvm.internal.r.e(moduleVersions, "moduleVersions");
        if (f3638d == null) {
            f3638d = g();
        }
        i0.m("key.moduleVersionInfo", JSON.toJSONString(f3638d));
        f3638d = moduleVersions;
    }

    public static final synchronized void u(int i) {
        HardwareInfo hardwareInfoD = d();
        if (hardwareInfoD != null) {
            hardwareInfoD.boxVersion = i;
        }
        s(hardwareInfoD, null, 2, null);
    }

    public static final synchronized void v(String str) {
        i0.m("key.deviceNumber", str);
        f3639e = str;
    }

    public static final synchronized void w(boolean z) {
        i0.i("key.speed.check", z);
    }
}
