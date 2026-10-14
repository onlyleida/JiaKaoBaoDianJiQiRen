package cn.mucang.android.core.utils;

import android.os.Build;
import android.os.Bundle;
import cn.mucang.android.channel.McChannelInfo;
import cn.mucang.android.channel.McChannelUtil;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.core.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Bundle f2665a;
    private static final McChannelInfo b = l();

    public static int a() {
        return Build.VERSION.SDK_INT;
    }

    public static int b() {
        return MucangConfig.getContext().getResources().getInteger(R.integer.core__api_version);
    }

    public static String c() {
        String strF = o0.f();
        return n0.e(strF) ? "【卡卡移动】" : strF;
    }

    public static String d() {
        return n0.c(c0.e("product_category"));
    }

    public static String e() {
        return n0.c(c0.e("product"));
    }

    private static Bundle f() {
        if (f2665a == null) {
            f2665a = o0.m();
        }
        return f2665a;
    }

    public static String g() {
        return o0.i();
    }

    public static String h() {
        McChannelInfo mcChannelInfo = b;
        if (mcChannelInfo != null && n0.g(mcChannelInfo.a())) {
            return mcChannelInfo.a();
        }
        Bundle bundleF = f();
        if (bundleF == null) {
            return null;
        }
        return String.valueOf(bundleF.getString("qudao"));
    }

    public static String i() {
        Bundle bundleF = f();
        if (bundleF == null) {
            return null;
        }
        return String.valueOf(bundleF.getString("renyuan"));
    }

    public static String j() {
        return o0.s();
    }

    public static String k() {
        String strU = o0.u();
        return n0.e(strU) ? "1.0.0" : strU;
    }

    private static McChannelInfo l() {
        try {
            return McChannelUtil.a(new File(MucangConfig.getContext().getPackageResourcePath()));
        } catch (Throwable unused) {
            return null;
        }
    }
}
