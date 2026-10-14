package com.tencent.bugly.crashreport.crash.jni;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.autonavi.base.amap.mapcore.tools.GLMapStaticValue;
import com.tencent.bugly.Bugly;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public class NativeCrashHandler implements com.tencent.bugly.crashreport.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static NativeCrashHandler f13793a = null;
    private static int b = 1;
    private static boolean m = false;
    private static boolean n = false;
    private static boolean p = true;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f13794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x f13795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NativeExceptionHandler f13796f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13797g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f13798h;
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private com.tencent.bugly.crashreport.crash.b o;

    @SuppressLint({"SdCardPath"})
    private NativeCrashHandler(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, x xVar, boolean z, String str) {
        this.c = ab.a(context);
        try {
            if (ab.a(str)) {
                str = context.getDir("bugly", 0).getAbsolutePath();
            }
        } catch (Throwable unused) {
            str = "/data/data/" + com.tencent.bugly.crashreport.common.info.a.a(context).c + "/app_bugly";
        }
        this.o = bVar;
        this.f13797g = str;
        this.f13794d = aVar;
        this.f13795e = xVar;
        this.f13798h = z;
        this.f13796f = new a(context, aVar, bVar, com.tencent.bugly.crashreport.common.strategy.a.a());
    }

    public static synchronized NativeCrashHandler getInstance(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar2, x xVar, boolean z, String str) {
        if (f13793a == null) {
            f13793a = new NativeCrashHandler(context, aVar, bVar, xVar, z, str);
        }
        return f13793a;
    }

    private native String getSoCpuAbi();

    public static boolean isShouldHandleInJava() {
        return p;
    }

    public static void setShouldHandleInJava(boolean z) {
        p = z;
        NativeCrashHandler nativeCrashHandler = f13793a;
        if (nativeCrashHandler != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(z);
            nativeCrashHandler.a(GLMapStaticValue.MAPRENDER_CAN_STOP_AND_FULLSCREEN_RENDEROVER, sb.toString());
        }
    }

    public boolean appendLogToNative(String str, String str2, String str3) {
        if ((this.i || this.j) && m && str != null && str2 != null && str3 != null) {
            try {
                if (this.j) {
                    return appendNativeLog(str, str2, str3);
                }
                Boolean bool = (Boolean) ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", null, new Class[]{String.class, String.class, String.class}, new Object[]{str, str2, str3});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                m = false;
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    protected native boolean appendNativeLog(String str, String str2, String str3);

    protected native boolean appendWholeNativeLog(String str);

    public void checkUploadRecordCrash() {
        this.f13795e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                if (!ab.a(NativeCrashHandler.this.c, "native_record_lock", 10000L)) {
                    y.a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
                    return;
                }
                if (!NativeCrashHandler.p) {
                    NativeCrashHandler.a(NativeCrashHandler.this, GLMapStaticValue.MAPRENDER_CAN_STOP_AND_FULLSCREEN_RENDEROVER, Bugly.SDK_IS_DEV);
                }
                CrashDetailBean crashDetailBeanA = b.a(NativeCrashHandler.this.c, NativeCrashHandler.this.f13797g, NativeCrashHandler.this.f13796f);
                if (crashDetailBeanA != null) {
                    y.a("[Native] Get crash from native record.", new Object[0]);
                    if (!NativeCrashHandler.this.o.a(crashDetailBeanA)) {
                        NativeCrashHandler.this.o.a(crashDetailBeanA, 3000L, false);
                    }
                    b.a(false, NativeCrashHandler.this.f13797g);
                }
                NativeCrashHandler.this.a();
                ab.b(NativeCrashHandler.this.c, "native_record_lock");
            }
        });
    }

    public void dumpAnrNativeStack() {
        a(19, "1");
    }

    public void enableCatchAnrTrace() {
        int i = Build.VERSION.SDK_INT;
        if (i > 31 || i <= 19) {
            return;
        }
        b |= 2;
    }

    public boolean filterSigabrtSysLog() {
        return a(998, "true");
    }

    public synchronized String getDumpFilePath() {
        return this.f13797g;
    }

    public String getLogFromNative() {
        if ((!this.i && !this.j) || !m) {
            return null;
        }
        try {
            return this.j ? getNativeLog() : (String) ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "getNativeLog", null, null, null);
        } catch (UnsatisfiedLinkError unused) {
            m = false;
            return null;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public NativeExceptionHandler getNativeExceptionHandler() {
        return this.f13796f;
    }

    protected native String getNativeKeyValueList();

    protected native String getNativeLog();

    public String getRunningCpuAbi() {
        try {
            return getSoCpuAbi();
        } catch (Throwable unused) {
            y.d("get so cpu abi failed，please upgrade bugly so version", new Object[0]);
            return "";
        }
    }

    public boolean isEnableCatchAnrTrace() {
        return (b & 2) == 2;
    }

    public synchronized boolean isUserOpened() {
        return this.l;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a  */
    /* JADX WARN: Code duplicated, block: B:16:0x002f A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x000b, B:8:0x0018, B:10:0x0024, B:14:0x002b, B:16:0x002f), top: B:22:0x0005 }] */
    public synchronized void onStrategyChanged(StrategyBean strategyBean) {
        boolean z;
        if (strategyBean != null) {
            boolean z2 = strategyBean.f13699e;
            if (z2 != this.k) {
                y.d("server native changed to %b", Boolean.valueOf(z2));
            }
            if (com.tencent.bugly.crashreport.common.strategy.a.a().c().f13699e || !this.l) {
                z = false;
            } else {
                z = true;
            }
            if (z != this.k) {
                y.a("native changed to %b", Boolean.valueOf(z));
                b(z);
            }
        } else {
            if (com.tencent.bugly.crashreport.common.strategy.a.a().c().f13699e) {
                z = false;
            } else {
                z = false;
            }
            if (z != this.k) {
                y.a("native changed to %b", Boolean.valueOf(z));
                b(z);
            }
        }
        throw th;
    }

    public boolean putKeyValueToNative(String str, String str2) {
        if ((this.i || this.j) && m && str != null && str2 != null) {
            try {
                if (this.j) {
                    return putNativeKeyValue(str, str2);
                }
                Boolean bool = (Boolean) ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", null, new Class[]{String.class, String.class}, new Object[]{str, str2});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                m = false;
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    protected native boolean putNativeKeyValue(String str, String str2);

    protected native String regist(String str, boolean z, int i);

    public void removeEmptyNativeRecordFiles() {
        b.c(this.f13797g);
    }

    protected native String removeNativeKeyValue(String str);

    public synchronized void setDumpFilePath(String str) {
        this.f13797g = str;
    }

    public boolean setNativeAppChannel(String str) {
        return a(12, str);
    }

    public boolean setNativeAppPackage(String str) {
        return a(13, str);
    }

    public boolean setNativeAppVersion(String str) {
        return a(10, str);
    }

    protected native void setNativeInfo(int i, String str);

    @Override // com.tencent.bugly.crashreport.a
    public boolean setNativeIsAppForeground(boolean z) {
        return a(14, z ? "true" : Bugly.SDK_IS_DEV);
    }

    public boolean setNativeLaunchTime(long j) {
        try {
            return a(15, String.valueOf(j));
        } catch (NumberFormatException e2) {
            if (y.a(e2)) {
                return false;
            }
            e2.printStackTrace();
            return false;
        }
    }

    public boolean setNativeUserId(String str) {
        return a(11, str);
    }

    public synchronized void setUserOpened(boolean z) {
        c(z);
        boolean zIsUserOpened = isUserOpened();
        com.tencent.bugly.crashreport.common.strategy.a aVarA = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (aVarA != null) {
            zIsUserOpened = zIsUserOpened && aVarA.c().f13699e;
        }
        if (zIsUserOpened != this.k) {
            y.a("native changed to %b", Boolean.valueOf(zIsUserOpened));
            b(zIsUserOpened);
        }
    }

    public synchronized void startNativeMonitor() {
        if (!this.j && !this.i) {
            boolean z = !ab.a(this.f13794d.l);
            String str = "Bugly-ext";
            com.tencent.bugly.crashreport.common.info.a aVar = this.f13794d;
            String str2 = aVar.l;
            if (z) {
                str = str2;
            } else {
                aVar.getClass();
            }
            boolean zA = a(str, z);
            this.j = zA;
            if (zA || this.i) {
                a(this.f13798h);
                if (m) {
                    setNativeAppVersion(this.f13794d.i);
                    setNativeAppChannel(this.f13794d.k);
                    setNativeAppPackage(this.f13794d.c);
                    setNativeUserId(this.f13794d.g());
                    setNativeIsAppForeground(this.f13794d.a());
                    setNativeLaunchTime(this.f13794d.f13690a);
                }
                return;
            }
            return;
        }
        a(this.f13798h);
    }

    protected native void testCrash();

    public void testNativeCrash() {
        if (this.j) {
            testCrash();
        } else {
            y.d("[Native] Bugly SO file has not been load.", new Object[0]);
        }
    }

    protected native String unregist();

    static /* synthetic */ boolean a(NativeCrashHandler nativeCrashHandler, int i, String str) {
        return nativeCrashHandler.a(GLMapStaticValue.MAPRENDER_CAN_STOP_AND_FULLSCREEN_RENDEROVER, str);
    }

    private synchronized void c() {
        if (!this.k) {
            y.d("[Native] Native crash report has already unregistered.", new Object[0]);
            return;
        }
        try {
            if (unregist() != null) {
                y.a("[Native] Successfully closed native crash report.", new Object[0]);
                this.k = false;
                return;
            }
            try {
                ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[]{Boolean.TYPE}, new Object[]{Boolean.FALSE});
                this.k = false;
                y.a("[Native] Successfully closed native crash report.", new Object[0]);
                return;
            } catch (Throwable unused) {
                y.c("[Native] Failed to close native crash report.", new Object[0]);
                this.j = false;
                this.i = false;
                return;
            }
        } catch (Throwable unused2) {
            y.c("[Native] Failed to close native crash report.", new Object[0]);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0080 A[Catch: all -> 0x008e, TryCatch #3 {all -> 0x008e, blocks: (B:22:0x0076, B:24:0x0080, B:25:0x0082, B:27:0x008c), top: B:79:0x0076 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x008c A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #3 {all -> 0x008e, blocks: (B:22:0x0076, B:24:0x0080, B:25:0x0082, B:27:0x008c), top: B:79:0x0076 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0092 A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:41:0x00f5, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:75:0x0017, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x009a A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:41:0x00f5, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:75:0x0017, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a5 A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:41:0x00f5, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:75:0x0017, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ad A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:41:0x00f5, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:75:0x0017, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00c8 A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:41:0x00f5, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:75:0x0017, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00f5 A[Catch: all -> 0x00fc, TRY_LEAVE, TryCatch #1 {all -> 0x00fc, blocks: (B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:41:0x00f5, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:75:0x0017, outer: #0 }] */
    private synchronized void a(boolean z) {
        StringBuilder sb;
        String str;
        String runningCpuAbi;
        if (this.k) {
            y.d("[Native] Native crash report has already registered.", new Object[0]);
            return;
        }
        if (this.j) {
            try {
                String strRegist = regist(this.f13797g, z, b);
                if (strRegist != null) {
                    y.a("[Native] Native Crash Report enable.", new Object[0]);
                    y.c("[Native] Check extra jni for Bugly NDK v%s", strRegist);
                    String strReplace = "2.1.1".replace(".", "");
                    String strReplace2 = "2.3.0".replace(".", "");
                    String strReplace3 = strRegist.replace(".", "");
                    try {
                        if (strReplace3.length() != 2) {
                            if (strReplace3.length() == 1) {
                                sb = new StringBuilder();
                                sb.append(strReplace3);
                                str = "00";
                            }
                            if (Integer.parseInt(strReplace3) >= Integer.parseInt(strReplace)) {
                                m = true;
                            }
                            if (Integer.parseInt(strReplace3) >= Integer.parseInt(strReplace2)) {
                                n = true;
                            }
                            if (n) {
                                y.a("[Native] Info setting jni can be accessed.", new Object[0]);
                            } else {
                                y.d("[Native] Info setting jni can not be accessed.", new Object[0]);
                            }
                            if (m) {
                                y.a("[Native] Extra jni can be accessed.", new Object[0]);
                            } else {
                                y.d("[Native] Extra jni can not be accessed.", new Object[0]);
                            }
                            this.f13794d.m = strRegist;
                            if (!this.f13794d.f13693f.contains("-".concat(strRegist))) {
                                com.tencent.bugly.crashreport.common.info.a aVar = this.f13794d;
                                aVar.f13693f = aVar.f13693f.concat("-").concat(this.f13794d.m);
                            }
                            y.a("comInfo.sdkVersion %s", this.f13794d.f13693f);
                            this.k = true;
                            runningCpuAbi = getRunningCpuAbi();
                            if (!TextUtils.isEmpty(runningCpuAbi)) {
                                this.f13794d.g(runningCpuAbi);
                            }
                            return;
                        }
                        sb = new StringBuilder();
                        sb.append(strReplace3);
                        str = "0";
                        if (Integer.parseInt(strReplace3) >= Integer.parseInt(strReplace)) {
                            m = true;
                        }
                        if (Integer.parseInt(strReplace3) >= Integer.parseInt(strReplace2)) {
                            n = true;
                        }
                    } catch (Throwable unused) {
                    }
                    sb.append(str);
                    strReplace3 = sb.toString();
                    if (n) {
                        y.a("[Native] Info setting jni can be accessed.", new Object[0]);
                    } else {
                        y.d("[Native] Info setting jni can not be accessed.", new Object[0]);
                    }
                    if (m) {
                        y.a("[Native] Extra jni can be accessed.", new Object[0]);
                    } else {
                        y.d("[Native] Extra jni can not be accessed.", new Object[0]);
                    }
                    this.f13794d.m = strRegist;
                    if (!this.f13794d.f13693f.contains("-".concat(strRegist))) {
                        com.tencent.bugly.crashreport.common.info.a aVar2 = this.f13794d;
                        aVar2.f13693f = aVar2.f13693f.concat("-").concat(this.f13794d.m);
                    }
                    y.a("comInfo.sdkVersion %s", this.f13794d.f13693f);
                    this.k = true;
                    runningCpuAbi = getRunningCpuAbi();
                    if (!TextUtils.isEmpty(runningCpuAbi)) {
                        this.f13794d.g(runningCpuAbi);
                    }
                    return;
                }
            } catch (Throwable unused2) {
                y.c("[Native] Failed to load Bugly SO file.", new Object[0]);
            }
        } else if (this.i) {
            try {
                Class cls = Integer.TYPE;
                Class[] clsArr = {String.class, String.class, cls, cls};
                Object[] objArr = new Object[4];
                objArr[0] = this.f13797g;
                objArr[1] = com.tencent.bugly.crashreport.common.info.b.a(this.c, false);
                objArr[2] = Integer.valueOf(z ? 1 : 5);
                objArr[3] = 1;
                String str2 = (String) ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler2", null, clsArr, objArr);
                if (str2 == null) {
                    com.tencent.bugly.crashreport.common.info.a.b();
                    str2 = (String) ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler", null, new Class[]{String.class, String.class, cls}, new Object[]{this.f13797g, com.tencent.bugly.crashreport.common.info.b.a(this.c, false), Integer.valueOf(com.tencent.bugly.crashreport.common.info.a.G())});
                }
                if (str2 != null) {
                    this.k = true;
                    this.f13794d.m = str2;
                    Boolean bool = (Boolean) ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "checkExtraJni", null, new Class[]{String.class}, new Object[]{str2});
                    if (bool != null) {
                        m = bool.booleanValue();
                    }
                    ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[]{Boolean.TYPE}, new Object[]{Boolean.TRUE});
                    ab.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "setLogMode", null, new Class[]{cls}, new Object[]{Integer.valueOf(z ? 1 : 5)});
                    String runningCpuAbi2 = getRunningCpuAbi();
                    if (!TextUtils.isEmpty(runningCpuAbi2)) {
                        this.f13794d.g(runningCpuAbi2);
                    }
                    return;
                }
            } catch (Throwable unused3) {
            }
        }
        this.j = false;
        this.i = false;
    }

    private synchronized void b(boolean z) {
        try {
            if (z) {
                startNativeMonitor();
            } else {
                c();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized NativeCrashHandler getInstance() {
        return f13793a;
    }

    public void testNativeCrash(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        sb.append(z);
        a(16, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z2);
        a(17, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z3);
        a(18, sb3.toString());
        testNativeCrash();
    }

    private synchronized void c(boolean z) {
        if (this.l != z) {
            y.a("user change native %b", Boolean.valueOf(z));
            this.l = z;
        }
    }

    private static boolean a(String str, boolean z) {
        boolean z2;
        try {
            y.a("[Native] Trying to load so: %s", str);
            if (z) {
                System.load(str);
            } else {
                System.loadLibrary(str);
            }
            try {
                y.a("[Native] Successfully loaded SO: %s", str);
                return true;
            } catch (Throwable th) {
                th = th;
                z2 = true;
                y.d(th.getMessage(), new Object[0]);
                y.d("[Native] Failed to load so: %s", str);
                return z2;
            }
        } catch (Throwable th2) {
            th = th2;
            z2 = false;
        }
    }

    protected final void a() {
        long jB = ab.b() - c.f13760g;
        long jB2 = ab.b() + 86400000;
        File file = new File(this.f13797g);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    int i = 0;
                    int i2 = 0;
                    for (File file2 : fileArrListFiles) {
                        long jLastModified = file2.lastModified();
                        if (jLastModified < jB || jLastModified >= jB2) {
                            y.a("[Native] Delete record file: %s", file2.getAbsolutePath());
                            i++;
                            if (file2.delete()) {
                                i2++;
                            }
                        }
                    }
                    y.c("[Native] Number of record files overdue: %d, has deleted: %d", Integer.valueOf(i), Integer.valueOf(i2));
                }
            } catch (Throwable th) {
                y.a(th);
            }
        }
    }

    private boolean a(int i, String str) {
        if (this.j && n) {
            try {
                setNativeInfo(i, str);
                return true;
            } catch (UnsatisfiedLinkError unused) {
                n = false;
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }
}
