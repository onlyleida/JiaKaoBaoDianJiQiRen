package cn.mucang.android.jiakaoyi.signal.com;

import cn.mucang.android.jiakaoyi.framework.utils.r0;

/* JADX INFO: loaded from: classes3.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final r0<Integer> f5323a = r0.f("ota__protocol_version", 1);

    public static int a() {
        return f5323a.b().intValue();
    }

    public static boolean b() {
        return f5323a.b().intValue() == 2;
    }

    public static void c(int i) {
        f5323a.j(Integer.valueOf(i));
        cn.mucang.android.jiakaoyi.framework.p002e.g.a("otaProtocolVersion", String.valueOf(i));
    }
}
