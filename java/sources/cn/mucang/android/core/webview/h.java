package cn.mucang.android.core.webview;

import android.net.Uri;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.q0;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static boolean a(Uri uri) {
        return cn.mucang.android.core.webview.protocol.e.a.k(e(uri, "mc-web-finish"), false);
    }

    public static String b(Uri uri) {
        try {
            return "123.click.kakamobi.cn".equals(q0.a(uri.toString())) ? uri.getPath().substring(1) : "";
        } catch (Exception e2) {
            t.c("e", e2);
            return "";
        }
    }

    public static String c(Uri uri) {
        return e(uri, "shareKey");
    }

    public static String d(Uri uri) {
        return e(uri, "shareType");
    }

    private static String e(Uri uri, String str) {
        return (uri == null || n0.e(str) || !uri.isHierarchical()) ? "" : uri.getQueryParameter(str);
    }

    public static boolean f(Uri uri) {
        String strE = e(uri, "mc-web-call-app");
        return n0.e(strE) || Boolean.parseBoolean(strE);
    }

    public static boolean g(Uri uri) {
        return !"call".equals(e(uri, "mc-web-tel"));
    }
}
