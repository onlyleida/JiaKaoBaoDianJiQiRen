package g.b.a.a.c;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f14551a = false;
    private static boolean b;
    private static boolean c;

    static {
        boolean zIsLoggable = Log.isLoggable("OcsBase", 3);
        b = zIsLoggable;
        c = zIsLoggable;
    }

    public static void a(Context context) {
        if (context != null) {
            boolean z = Settings.System.getInt(context.getContentResolver(), "log_switch_type", 0) != 0;
            f14551a = z;
            c = z || b;
            Log.i("OcsBase", "AFLog, sIsLogOn = " + f14551a + ", sIsDebugTagOn = " + b);
        }
    }

    public static void b(String str) {
        if (c) {
            Log.d("OcsBase", str);
        }
    }

    public static void c(String str, String str2) {
        if (c) {
            Log.v("OcsBase.".concat(String.valueOf(str)), str2);
        }
    }

    public static void d(String str, String str2) {
        if (c) {
            Log.d("OcsBase.".concat(String.valueOf(str)), str2);
        }
    }

    public static void e(String str, String str2) {
        Log.i("OcsBase.".concat(String.valueOf(str)), str2);
    }

    public static void f(String str, String str2) {
        Log.e("OcsBase.".concat(String.valueOf(str)), str2);
    }
}
