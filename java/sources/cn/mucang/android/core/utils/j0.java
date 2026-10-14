package cn.mucang.android.core.utils;

import android.content.SharedPreferences;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public class j0 {
    private static String a(String str) {
        if (a0.e()) {
            return str;
        }
        String strB = a0.b();
        if (!n0.e(strB) && strB.startsWith(MucangConfig.getContext().getPackageName())) {
            strB = strB.replace(MucangConfig.getContext().getPackageName(), "").replace(":", "_");
        }
        return str + strB;
    }

    public static SharedPreferences b(String str) {
        return MucangConfig.getContext().getSharedPreferences(a(str), 0);
    }

    public static float c(String str, String str2, float f2) {
        if (n0.e(str) || n0.e(str2)) {
            return f2;
        }
        try {
            return b(str).getFloat(str2, f2);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
            return f2;
        }
    }

    public static int d(String str, String str2, int i) {
        if (n0.e(str) || n0.e(str2)) {
            return i;
        }
        try {
            return b(str).getInt(str2, i);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
            return i;
        }
    }

    public static long e(String str, String str2, long j) {
        if (n0.e(str) || n0.e(str2)) {
            return j;
        }
        try {
            return b(str).getLong(str2, j);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
            return j;
        }
    }

    public static String f(String str, String str2, String str3) {
        if (n0.e(str) || n0.e(str2)) {
            return str3;
        }
        try {
            return b(str).getString(str2, str3);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
            return str3;
        }
    }

    public static boolean g(String str, String str2, boolean z) {
        if (n0.e(str) || n0.e(str2)) {
            return z;
        }
        try {
            return b(str).getBoolean(str2, z);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
            return z;
        }
    }

    public static void h(String str, String str2, float f2) {
        if (n0.e(str) || n0.e(str2)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = b(str).edit();
            editorEdit.putFloat(str2, f2);
            m(editorEdit);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
        }
    }

    public static void i(String str, String str2, int i) {
        if (n0.e(str) || n0.e(str2)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = b(str).edit();
            editorEdit.putInt(str2, i);
            m(editorEdit);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
        }
    }

    public static void j(String str, String str2, long j) {
        if (n0.e(str) || n0.e(str2)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = b(str).edit();
            editorEdit.putLong(str2, j);
            m(editorEdit);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
        }
    }

    public static void k(String str, String str2, String str3) {
        if (n0.e(str) || n0.e(str2)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = b(str).edit();
            editorEdit.putString(str2, str3);
            m(editorEdit);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
        }
    }

    public static void l(String str, String str2, boolean z) {
        if (n0.e(str) || n0.e(str2)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = b(str).edit();
            editorEdit.putBoolean(str2, z);
            m(editorEdit);
        } catch (ClassCastException e2) {
            t.c("默认替换", e2);
        }
    }

    public static void m(SharedPreferences.Editor editor) {
        editor.apply();
    }
}
