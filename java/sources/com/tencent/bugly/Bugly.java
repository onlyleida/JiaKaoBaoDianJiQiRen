package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.y;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class Bugly {
    public static final String SDK_IS_DEV = "false";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f13653a = false;
    public static Context applicationContext = null;
    private static String[] b = {"BuglyCrashModule", "BuglyRqdModule", "BuglyBetaModule"};
    private static String[] c = {"BuglyRqdModule", "BuglyCrashModule", "BuglyBetaModule"};
    public static boolean enable = true;
    public static Boolean isDev;

    public static synchronized String getAppChannel() {
        byte[] bArr;
        com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
        if (aVarB == null) {
            return null;
        }
        if (TextUtils.isEmpty(aVarB.k)) {
            o oVarA = o.a();
            if (oVarA == null) {
                return aVarB.k;
            }
            Map<String, byte[]> mapA = oVarA.a(556, (n) null, true);
            if (mapA != null && (bArr = mapA.get("app_channel")) != null) {
                return new String(bArr);
            }
        }
        return aVarB.k;
    }

    public static void init(Context context, String str, boolean z) {
        init(context, str, z, null);
    }

    public static boolean isDev() {
        if (isDev == null) {
            isDev = Boolean.valueOf(Boolean.parseBoolean(SDK_IS_DEV.replace("@", "")));
        }
        return isDev.booleanValue();
    }

    public static synchronized void init(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        if (f13653a) {
            return;
        }
        f13653a = true;
        Context contextA = ab.a(context);
        applicationContext = contextA;
        if (contextA == null) {
            Log.e(y.f13935a, "init arg 'context' should not be null!");
            return;
        }
        if (isDev()) {
            b = c;
        }
        for (String str2 : b) {
            try {
                if (str2.equals("BuglyCrashModule")) {
                    b.a(CrashModule.getInstance());
                } else if (!str2.equals("BuglyBetaModule") && !str2.equals("BuglyRqdModule")) {
                    str2.equals("BuglyFeedbackModule");
                }
            } catch (Throwable th) {
                y.b(th);
            }
        }
        b.f13663a = enable;
        b.a(applicationContext, str, z, buglyStrategy);
    }
}
