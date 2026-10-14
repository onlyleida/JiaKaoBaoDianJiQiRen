package cn.mucang.android.jiakaoyi.framework.utils;

/* JADX INFO: loaded from: classes2.dex */
public class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f3634a;

    public static void a() {
        i0.h(w.a());
        f3634a = null;
    }

    public static String b() {
        if (cn.mucang.android.core.utils.n0.g(f3634a)) {
            return f3634a;
        }
        String strG = i0.g(w.a(), "");
        f3634a = strG;
        return strG;
    }

    public static void c(String str) {
        f3634a = str;
        i0.m(w.a(), str);
    }
}
