package f.a.a.a.activity;

import android.content.Context;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f14452a;

    public static c a(String str) {
        try {
            return f14452a.e(str);
        } catch (Exception e2) {
            t.c("Exception", e2);
            return null;
        }
    }

    public static void b(Context context) {
        e eVar = new e(context);
        f14452a = eVar;
        eVar.l("http://virtual.nav.mucang.cn", new d());
        g.c();
        ActivityStarterMultiProcessSupport.a();
    }

    public static boolean c(String str) {
        try {
            return f14452a.f(str);
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return false;
        }
    }

    public static boolean d(Context context, String str, boolean z) {
        try {
            return f14452a.g(context, str, z);
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return false;
        }
    }

    public static boolean e(String str) {
        try {
            return f14452a.h(str);
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return false;
        }
    }

    public static boolean f(String str, boolean z) {
        try {
            return f14452a.i(str, z);
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return false;
        }
    }

    public static boolean g(String str, c cVar) {
        try {
            return f14452a.l(str, cVar);
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return false;
        }
    }

    public static void h(c cVar) {
        try {
            f14452a.m(cVar);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }

    public static void i(c cVar) {
        try {
            f14452a.n(cVar);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }
}
