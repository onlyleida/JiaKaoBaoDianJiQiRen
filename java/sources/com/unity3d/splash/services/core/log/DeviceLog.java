package com.unity3d.splash.services.core.log;

import android.util.Log;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class DeviceLog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f14403a = true;
    private static boolean b = true;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f14404d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f14405e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final HashMap f14406f;

    public enum UnityAdsLogLevel {
        INFO,
        DEBUG,
        WARNING,
        ERROR
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14407a;

        static {
            int[] iArr = new int[UnityAdsLogLevel.values().length];
            f14407a = iArr;
            try {
                iArr[UnityAdsLogLevel.INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14407a[UnityAdsLogLevel.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14407a[UnityAdsLogLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14407a[UnityAdsLogLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        HashMap map = new HashMap();
        f14406f = map;
        if (map.size() == 0) {
            map.put(UnityAdsLogLevel.INFO, new b("i"));
            map.put(UnityAdsLogLevel.DEBUG, new b("d"));
            map.put(UnityAdsLogLevel.WARNING, new b("w"));
            map.put(UnityAdsLogLevel.ERROR, new b("e"));
        }
        if (new File("/data/local/tmp/UnityAdsForceDebugMode").exists()) {
            f14405e = true;
        }
    }

    private static String a(String str) {
        return (str == null || str.length() == 0) ? "DO NOT USE EMPTY MESSAGES, use DeviceLog.entered() instead" : str;
    }

    private static com.unity3d.splash.services.core.log.a b(UnityAdsLogLevel unityAdsLogLevel, String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        b bVarG = g(unityAdsLogLevel);
        if (bVarG == null) {
            return null;
        }
        int i = 0;
        boolean z = false;
        while (i < stackTrace.length) {
            StackTraceElement stackTraceElement = stackTrace[i];
            if (stackTraceElement.getClassName().equals(DeviceLog.class.getName())) {
                z = true;
            }
            if (!stackTraceElement.getClassName().equals(DeviceLog.class.getName()) && z) {
                break;
            }
            i++;
        }
        StackTraceElement stackTraceElement2 = i < stackTrace.length ? stackTrace[i] : null;
        if (stackTraceElement2 != null) {
            return new com.unity3d.splash.services.core.log.a(bVarG, str, stackTraceElement2);
        }
        return null;
    }

    public static void c(String str) {
        if (f14404d || f14405e) {
            if (str.length() <= 3072) {
                k(UnityAdsLogLevel.DEBUG, a(str));
                return;
            }
            c(str.substring(0, 3072));
            if (str.length() < 30720) {
                c(str.substring(3072));
            }
        }
    }

    public static void d() {
        c("ENTERED METHOD");
    }

    public static void e(String str) {
        k(UnityAdsLogLevel.ERROR, a(str));
    }

    public static void f(String str, Exception exc) {
        String str2 = "";
        if (str != null) {
            str2 = "" + str;
        }
        if (exc != null) {
            str2 = str2 + ": " + exc.getMessage();
        }
        if (exc != null && exc.getCause() != null) {
            str2 = str2 + ": " + exc.getCause().getMessage();
        }
        k(UnityAdsLogLevel.ERROR, str2);
    }

    private static b g(UnityAdsLogLevel unityAdsLogLevel) {
        return (b) f14406f.get(unityAdsLogLevel);
    }

    public static void h(String str) {
        k(UnityAdsLogLevel.INFO, a(str));
    }

    public static void i(int i) {
        if (i >= 8) {
            f14403a = true;
            b = true;
            c = true;
            f14404d = true;
            return;
        }
        if (i >= 4) {
            f14403a = true;
            b = true;
            c = true;
            f14404d = false;
            return;
        }
        if (i >= 2) {
            f14403a = true;
            b = true;
            c = false;
            f14404d = false;
            return;
        }
        if (i > 0) {
            f14403a = true;
            b = false;
            c = false;
            f14404d = false;
            return;
        }
        f14403a = false;
        b = false;
        c = false;
        f14404d = false;
    }

    public static void j(String str) {
        k(UnityAdsLogLevel.WARNING, a(str));
    }

    private static void k(UnityAdsLogLevel unityAdsLogLevel, String str) {
        boolean z;
        int i = a.f14407a[unityAdsLogLevel.ordinal()];
        if (i == 1) {
            z = c;
        } else if (i == 2) {
            z = f14404d;
        } else if (i != 3) {
            z = i != 4 ? true : f14403a;
        } else {
            z = b;
        }
        if (f14405e ? true : z) {
            l(b(unityAdsLogLevel, str));
        }
    }

    private static void l(com.unity3d.splash.services.core.log.a aVar) {
        Method method;
        if (aVar == null || aVar.a() == null) {
            return;
        }
        try {
            method = Log.class.getMethod(aVar.a().b(), String.class, String.class);
        } catch (Exception e2) {
            Log.e("UnityAds", "Writing to log failed!", e2);
            method = null;
        }
        if (method != null) {
            try {
                method.invoke(null, aVar.a().a(), aVar.b());
            } catch (Exception e3) {
                Log.e("UnityAds", "Writing to log failed!", e3);
            }
        }
    }
}
