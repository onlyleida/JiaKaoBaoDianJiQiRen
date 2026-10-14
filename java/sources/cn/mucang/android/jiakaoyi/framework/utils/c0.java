package cn.mucang.android.jiakaoyi.framework.utils;

/* JADX INFO: loaded from: classes2.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f3606a;

    public static boolean a() {
        if (f3606a == null) {
            f3606a = Boolean.valueOf(i0.b("debugNeedEncrypted", true));
        }
        return f3606a.booleanValue();
    }

    public static void b(boolean z) {
        f3606a = Boolean.valueOf(z);
        i0.i("debugNeedEncrypted", z);
    }
}
