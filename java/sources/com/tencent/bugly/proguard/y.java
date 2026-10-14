package com.tencent.bugly.proguard;

import android.util.Log;
import com.mobile.auth.BuildConfig;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f13935a = "CrashReport";
    public static boolean b = false;
    private static String c = "CrashReportInfo";

    private static boolean a(int i, String str, Object... objArr) {
        if (!b) {
            return false;
        }
        if (str == null) {
            str = BuildConfig.COMMON_MODULE_COMMIT_ID;
        } else if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        if (i == 0) {
            Log.i(f13935a, str);
            return true;
        }
        if (i == 1) {
            Log.d(f13935a, str);
            return true;
        }
        if (i == 2) {
            Log.w(f13935a, str);
            return true;
        }
        if (i == 3) {
            Log.e(f13935a, str);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Log.i(c, str);
        return true;
    }

    public static boolean b(String str, Object... objArr) {
        return a(5, str, objArr);
    }

    public static boolean c(String str, Object... objArr) {
        return a(1, str, objArr);
    }

    public static boolean d(String str, Object... objArr) {
        return a(2, str, objArr);
    }

    public static boolean e(String str, Object... objArr) {
        return a(3, str, objArr);
    }

    public static boolean b(Class cls, String str, Object... objArr) {
        return a(1, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean b(Throwable th) {
        if (b) {
            return a(3, ab.a(th), new Object[0]);
        }
        return false;
    }

    public static boolean a(String str, Object... objArr) {
        return a(0, str, objArr);
    }

    public static boolean a(Class cls, String str, Object... objArr) {
        return a(0, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean a(Throwable th) {
        if (b) {
            return a(2, ab.a(th), new Object[0]);
        }
        return false;
    }
}
