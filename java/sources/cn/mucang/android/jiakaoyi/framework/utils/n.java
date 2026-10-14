package cn.mucang.android.jiakaoyi.framework.utils;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f3630a;

    public static boolean a() {
        if (f3630a == null) {
            f3630a = Boolean.valueOf(i0.b("debugKeyBlueTooth", false));
        }
        return f3630a.booleanValue();
    }

    public static void b(boolean z) {
    }

    public static void c(boolean z) {
        f3630a = Boolean.valueOf(z);
        i0.i("debugKeyBlueTooth", z);
    }
}
