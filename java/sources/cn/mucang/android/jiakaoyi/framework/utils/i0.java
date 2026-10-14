package cn.mucang.android.jiakaoyi.framework.utils;

import android.content.SharedPreferences;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class i0 {
    public static boolean a(String str) {
        return cn.mucang.android.core.utils.j0.b("jky_base_sp").contains(str);
    }

    public static boolean b(String str, boolean z) {
        return cn.mucang.android.core.utils.j0.b("jky_base_sp").getBoolean(str, z);
    }

    public static float c(String str, float f2) {
        return cn.mucang.android.core.utils.j0.b("jky_base_sp").getFloat(str, f2);
    }

    public static int d(String str, int i) {
        return cn.mucang.android.core.utils.j0.b("jky_base_sp").getInt(str, i);
    }

    public static Set<String> e() {
        return cn.mucang.android.core.utils.j0.b("jky_base_sp").getAll().keySet();
    }

    public static long f(String str, long j) {
        return cn.mucang.android.core.utils.j0.b("jky_base_sp").getLong(str, j);
    }

    public static String g(String str, String str2) {
        return cn.mucang.android.core.utils.j0.b("jky_base_sp").getString(str, str2);
    }

    public static boolean h(String str) {
        SharedPreferences.Editor editorEdit = cn.mucang.android.core.utils.j0.b("jky_base_sp").edit();
        editorEdit.remove(str);
        return editorEdit.commit();
    }

    public static void i(String str, boolean z) {
        SharedPreferences.Editor editorEdit = cn.mucang.android.core.utils.j0.b("jky_base_sp").edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }

    public static void j(String str, float f2) {
        SharedPreferences.Editor editorEdit = cn.mucang.android.core.utils.j0.b("jky_base_sp").edit();
        editorEdit.putFloat(str, f2);
        editorEdit.apply();
    }

    public static void k(String str, int i) {
        SharedPreferences.Editor editorEdit = cn.mucang.android.core.utils.j0.b("jky_base_sp").edit();
        editorEdit.putInt(str, i);
        editorEdit.apply();
    }

    public static void l(String str, long j) {
        SharedPreferences.Editor editorEdit = cn.mucang.android.core.utils.j0.b("jky_base_sp").edit();
        editorEdit.putLong(str, j);
        editorEdit.apply();
    }

    public static void m(String str, String str2) {
        SharedPreferences.Editor editorEdit = cn.mucang.android.core.utils.j0.b("jky_base_sp").edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }
}
