package f.a.a.a.k;

import android.content.Context;
import android.content.SharedPreferences;
import com.mobile.auth.gatewayauth.Constant;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f14455a = new a();

    public static a a() {
        return f14455a;
    }

    private boolean d(String str) {
        return (str == null || str.contains(Marker.ANY_MARKER)) ? false : true;
    }

    public String b(Context context) {
        return context.getSharedPreferences("clue_user_info", 0).getString(Constant.PROTOCOL_WEBVIEW_NAME, null);
    }

    public String c(Context context) {
        return context.getSharedPreferences("clue_user_info", 0).getString("phone", null);
    }

    public void e(Context context, String str) {
        context.getSharedPreferences("clue_user_info", 0).edit().putString(Constant.PROTOCOL_WEBVIEW_NAME, str).apply();
    }

    public void f(Context context, String str) {
        if (d(str)) {
            context.getSharedPreferences("clue_user_info", 0).edit().putString("phone", str).apply();
        }
    }

    public void g(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("clue_user_info", 0).edit();
        editorEdit.putString(Constant.PROTOCOL_WEBVIEW_NAME, str);
        if (d(str2)) {
            editorEdit.putString("phone", str2);
        }
        editorEdit.apply();
    }
}
