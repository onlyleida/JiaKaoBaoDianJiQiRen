package com.amap.api.mapcore.util;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class t2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f11188a;

    static {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 80; i++) {
            sb.append("=");
        }
        f11188a = sb.toString();
    }

    public static void a() {
        d(f11188a);
        d("当前使用的自定义地图样式文件和目前版本不匹配，请到官网(lbs.amap.com)更新新版样式文件");
        d(f11188a);
    }

    public static void b(Context context, String str) {
        d(f11188a);
        if (context != null) {
            c("key:" + c5.j(context));
        }
        d(str);
        d(f11188a);
    }

    static void c(String str) {
        if (str.length() >= 78) {
            d("|" + str.substring(0, 78) + "|");
            c(str.substring(78));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("|");
        sb.append(str);
        for (int i = 0; i < 78 - str.length(); i++) {
            sb.append(" ");
        }
        sb.append("|");
        d(sb.toString());
    }

    private static void d(String str) {
        Log.i("authErrLog", str);
    }
}
