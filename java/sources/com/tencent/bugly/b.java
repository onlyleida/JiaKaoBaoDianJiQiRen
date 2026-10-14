package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.m;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.y;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f13663a = true;
    public static List<a> b = new ArrayList();
    public static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static o f13664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f13665e;

    private static boolean a(com.tencent.bugly.crashreport.common.info.a aVar) {
        List<String> list = aVar.n;
        aVar.getClass();
        return list != null && list.contains("bugly");
    }

    public static synchronized void a(Context context) {
        a(context, null);
    }

    public static synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        if (f13665e) {
            y.d("[init] initial Multi-times, ignore this.", new Object[0]);
            return;
        }
        if (context == null) {
            Log.w(y.f13935a, "[init] context of init() is null, check it.");
            return;
        }
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
        if (a(aVarA)) {
            f13663a = false;
            return;
        }
        String strF = aVarA.f();
        if (strF == null) {
            Log.e(y.f13935a, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set.");
        } else {
            a(context, strF, aVarA.t, buglyStrategy);
        }
    }

    /* JADX WARN: Code duplicated, block: B:74:0x0204 A[Catch: all -> 0x0210, TRY_LEAVE, TryCatch #0 {all -> 0x0210, blocks: (B:72:0x01f4, B:74:0x0204), top: B:91:0x01f4, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0222 A[Catch: all -> 0x0239, TryCatch #1 {, blocks: (B:4:0x0009, B:6:0x000e, B:10:0x0019, B:14:0x0024, B:18:0x002e, B:20:0x0032, B:21:0x006e, B:23:0x00af, B:26:0x00b3, B:28:0x00c1, B:30:0x00cf, B:32:0x00d5, B:33:0x00eb, B:34:0x00fa, B:36:0x0100, B:38:0x010a, B:40:0x0110, B:41:0x0126, B:47:0x0156, B:53:0x016a, B:55:0x0174, B:57:0x017a, B:58:0x0190, B:59:0x019f, B:61:0x01a5, B:63:0x01ab, B:64:0x01c1, B:65:0x01cd, B:67:0x01d3, B:68:0x01df, B:42:0x013a, B:44:0x0145, B:46:0x014f, B:50:0x0163, B:52:0x0167, B:70:0x01ec, B:80:0x021a, B:81:0x021d, B:83:0x0222, B:85:0x0229, B:77:0x0211, B:79:0x0217, B:72:0x01f4, B:74:0x0204), top: B:93:0x0009, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0227  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x021a A[SYNTHETIC] */
    public static synchronized void a(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        int i;
        long appReportDelay;
        byte[] bArr;
        if (f13665e) {
            y.d("[init] initial Multi-times, ignore this.", new Object[0]);
            return;
        }
        if (context == null) {
            Log.w(y.f13935a, "[init] context is null, check it.");
            return;
        }
        if (str == null) {
            Log.e(y.f13935a, "init arg 'crashReportAppID' should not be null!");
            return;
        }
        f13665e = true;
        if (z) {
            c = true;
            y.b = true;
            y.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
            y.e("--------------------------------------------------------------------------------------------", new Object[0]);
            y.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
            y.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
            y.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
            y.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
            y.e("--------------------------------------------------------------------------------------------", new Object[0]);
            y.b("[init] Open debug mode of Bugly.", new Object[0]);
        }
        y.a(" crash report start initializing...", new Object[0]);
        y.b("[init] Bugly start initializing...", new Object[0]);
        y.a("[init] Bugly complete version: v%s", "4.0.4");
        Context contextA = ab.a(context);
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(contextA);
        aVarA.s();
        aa.a(contextA);
        f13664d = o.a(contextA, b);
        v.a(contextA);
        com.tencent.bugly.crashreport.common.strategy.a.a(contextA, b);
        m mVarA = m.a(contextA);
        if (a(aVarA)) {
            f13663a = false;
            return;
        }
        aVarA.a(str);
        y.a("[param] Set APP ID:%s", str);
        if (buglyStrategy != null) {
            String appVersion = buglyStrategy.getAppVersion();
            if (!TextUtils.isEmpty(appVersion)) {
                if (appVersion.length() > 100) {
                    String strSubstring = appVersion.substring(0, 100);
                    y.d("appVersion %s length is over limit %d substring to %s", appVersion, 100, strSubstring);
                    appVersion = strSubstring;
                }
                aVarA.i = appVersion;
                y.a("[param] Set App version: %s", buglyStrategy.getAppVersion());
            }
            try {
                if (buglyStrategy.isReplaceOldChannel()) {
                    String appChannel = buglyStrategy.getAppChannel();
                    if (!TextUtils.isEmpty(appChannel)) {
                        if (appChannel.length() > 100) {
                            String strSubstring2 = appChannel.substring(0, 100);
                            y.d("appChannel %s length is over limit %d substring to %s", appChannel, 100, strSubstring2);
                            appChannel = strSubstring2;
                        }
                        f13664d.a(556, "app_channel", appChannel.getBytes(), (n) null, false);
                        aVarA.k = appChannel;
                    }
                } else {
                    Map<String, byte[]> mapA = f13664d.a(556, (n) null, true);
                    if (mapA != null && (bArr = mapA.get("app_channel")) != null) {
                        aVarA.k = new String(bArr);
                    }
                }
                y.a("[param] Set App channel: %s", aVarA.k);
            } catch (Exception e2) {
                if (c) {
                    e2.printStackTrace();
                }
            }
            String appPackageName = buglyStrategy.getAppPackageName();
            if (!TextUtils.isEmpty(appPackageName)) {
                if (appPackageName.length() > 100) {
                    String strSubstring3 = appPackageName.substring(0, 100);
                    y.d("appPackageName %s length is over limit %d substring to %s", appPackageName, 100, strSubstring3);
                    appPackageName = strSubstring3;
                }
                aVarA.c = appPackageName;
                y.a("[param] Set App package: %s", buglyStrategy.getAppPackageName());
            }
            String deviceID = buglyStrategy.getDeviceID();
            if (deviceID != null) {
                if (deviceID.length() > 100) {
                    String strSubstring4 = deviceID.substring(0, 100);
                    y.d("deviceId %s length is over limit %d substring to %s", deviceID, 100, strSubstring4);
                    deviceID = strSubstring4;
                }
                aVarA.c(deviceID);
                y.a("[param] Set device ID: %s", deviceID);
            }
            String deviceModel = buglyStrategy.getDeviceModel();
            if (deviceModel != null) {
                aVarA.d(deviceModel);
                y.a("[param] Set device model: %s", deviceModel);
            }
            aVarA.f13692e = buglyStrategy.isUploadProcess();
            aa.f13806a = buglyStrategy.isBuglyLogUpload();
            for (i = 0; i < b.size(); i++) {
                try {
                    if (mVarA.a(b.get(i).id)) {
                        b.get(i).init(contextA, z, buglyStrategy);
                    }
                } catch (Throwable th) {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
            com.tencent.bugly.crashreport.biz.b.a(contextA, buglyStrategy);
            if (buglyStrategy != null) {
                appReportDelay = buglyStrategy.getAppReportDelay();
            } else {
                appReportDelay = 0;
            }
            com.tencent.bugly.crashreport.common.strategy.a.a().a(appReportDelay);
            y.b("[init] Bugly initialization finished.", new Object[0]);
            return;
        }
        while (i < b.size()) {
            if (mVarA.a(b.get(i).id)) {
                b.get(i).init(contextA, z, buglyStrategy);
            }
        }
        com.tencent.bugly.crashreport.biz.b.a(contextA, buglyStrategy);
        if (buglyStrategy != null) {
            appReportDelay = buglyStrategy.getAppReportDelay();
        } else {
            appReportDelay = 0;
        }
        com.tencent.bugly.crashreport.common.strategy.a.a().a(appReportDelay);
        y.b("[init] Bugly initialization finished.", new Object[0]);
        return;
        throw th;
    }

    public static synchronized void a(a aVar) {
        if (!b.contains(aVar)) {
            b.add(aVar);
        }
    }
}
