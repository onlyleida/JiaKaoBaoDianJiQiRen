package cn.mucang.android.core.utils;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes.dex */
public class q0 {
    public static String a(String str) {
        try {
            return Uri.parse(str).getHost();
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return "";
        }
    }

    public static String b(String str, String str2) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e2) {
            t.c("默认替换", e2);
            return str;
        }
    }
}
