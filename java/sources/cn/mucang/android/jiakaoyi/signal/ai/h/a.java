package cn.mucang.android.jiakaoyi.signal.ai.h;

import cn.mucang.android.jiakaoyi.framework.p002e.g;
import cn.mucang.android.jiakaoyi.framework.utils.r0;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final r0<Integer> f5213a = r0.f("ai__protocol_version", 1);

    public static boolean a() {
        return f5213a.b().intValue() == 1;
    }

    public static boolean b() {
        return f5213a.b().intValue() == 2;
    }

    public static void c(int i) {
        f5213a.j(Integer.valueOf(i));
        g.a("aiProtocolVersion", String.valueOf(i));
    }
}
