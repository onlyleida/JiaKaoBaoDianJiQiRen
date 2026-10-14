package cn.mucang.android.core.utils;

import android.content.res.Resources;
import cn.mucang.android.core.config.MucangConfig;
import com.google.android.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Resources f2646a;
    private static String b;

    public static Resources a() {
        if (f2646a == null) {
            f2646a = MucangConfig.getContext().getResources();
        }
        return f2646a;
    }

    public static final int b(String str) {
        return c(str, TtmlNode.ATTR_ID);
    }

    private static final int c(String str, String str2) {
        Resources resources = f2646a;
        return resources != null ? resources.getIdentifier(str, str2, d()) : a().getIdentifier(str, str2, d());
    }

    private static final String d() {
        if (b == null) {
            b = MucangConfig.r();
        }
        return b;
    }

    public static final int e(String str) {
        return c(str, "string");
    }
}
