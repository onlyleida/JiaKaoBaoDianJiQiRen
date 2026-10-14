package cn.mucang.android.account.utils;

import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f2250a = "auth";
    private static String b;

    public static String a() {
        if (n0.g(b)) {
            return b;
        }
        Bundle bundleM = o0.m();
        String strValueOf = bundleM != null ? String.valueOf(bundleM.get("wechat_share_appKey")) : "";
        if (n0.e(strValueOf)) {
            return "";
        }
        if (strValueOf.startsWith("mc_")) {
            strValueOf = strValueOf.substring(3);
        }
        b = strValueOf;
        return strValueOf;
    }

    public static boolean b() {
        return MucangConfig.getContext().getResources().getBoolean(R.bool.account__show_bind_third_after_login);
    }

    public static void onEvent(String str) {
        l0.a(f2250a, str);
    }
}
