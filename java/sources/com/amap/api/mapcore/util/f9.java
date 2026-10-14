package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class f9 {
    public static int a(Context context, String str, String str2) {
        try {
            return context.getSharedPreferences(str, 0).getInt(str2, 200);
        } catch (Throwable th) {
            b9.b(th, "SpUtil", "getPrefsInt");
            return 200;
        }
    }

    public static String b(Context context) {
        return context == null ? "00:00:00:00:00:00" : c(context, "pref", "smac", "00:00:00:00:00:00");
    }

    private static String c(Context context, String str, String str2, String str3) {
        try {
            return context.getSharedPreferences(str, 0).getString(str2, str3);
        } catch (Throwable th) {
            b9.b(th, "SpUtil", "getPrefsInt");
            return str3;
        }
    }

    public static void d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        SharedPreferences.Editor editorG = g(context, "pref");
        f(editorG, "smac", str);
        e(editorG);
    }

    private static void e(SharedPreferences.Editor editor) {
        if (editor == null) {
            return;
        }
        editor.apply();
    }

    private static void f(SharedPreferences.Editor editor, String str, String str2) {
        try {
            editor.putString(str, str2);
        } catch (Throwable th) {
            b9.b(th, "SpUtil", "setPrefsStr");
        }
    }

    private static SharedPreferences.Editor g(Context context, String str) {
        return context.getSharedPreferences(str, 0).edit();
    }

    public static boolean h(Context context, String str, String str2) {
        try {
            return context.getSharedPreferences(str, 0).getBoolean(str2, true);
        } catch (Throwable th) {
            b9.b(th, "SpUtil", "getPrefsBoolean");
            return true;
        }
    }
}
