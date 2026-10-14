package cn.mucang.android.jiakaoyi.framework.utils;

import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes2.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3645a;

    public static void a() {
        f3645a = false;
    }

    public static boolean b() {
        return MucangConfig.v() || f3645a;
    }

    public static void c() {
        f3645a = true;
    }
}
