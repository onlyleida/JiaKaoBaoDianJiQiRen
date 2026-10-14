package f.a.a.a;

import android.content.SharedPreferences;
import cn.mucang.android.core.utils.j0;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static boolean a() {
        return b().getBoolean("click_log_edit_mode_on", false);
    }

    private static SharedPreferences b() {
        return j0.b("_core_pref");
    }

    public static long c() {
        return b().getLong("server_task_next_request_time", 0L);
    }

    public static boolean d() {
        return j0.g("_core_pref", "key_auto_fill_user_data", true);
    }

    public static boolean e() {
        return b().getBoolean("encode_base_params", true);
    }

    public static void f(boolean z) {
        SharedPreferences.Editor editorEdit = b().edit();
        editorEdit.putBoolean("click_log_edit_mode_on", z);
        j0.m(editorEdit);
    }

    public static void g(boolean z) {
        SharedPreferences.Editor editorEdit = b().edit();
        editorEdit.putBoolean("encode_base_params", z);
        j0.m(editorEdit);
    }

    public static void h(long j) {
        b().edit().putLong("server_task_next_request_time", j).apply();
    }
}
