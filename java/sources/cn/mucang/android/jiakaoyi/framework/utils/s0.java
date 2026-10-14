package cn.mucang.android.jiakaoyi.framework.utils;

/* JADX INFO: loaded from: classes2.dex */
public class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3643a = -1;

    public static int a() {
        if (f3643a == -1) {
            f3643a = i0.d("keyWiperDelayTime", 2000);
        }
        return f3643a;
    }
}
