package g.d.a.b.a;

import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static void a(String str, String str2) {
        Log.e(str, str2);
    }

    public static <T> void b(String str, String str2, T... tArr) {
        if (str2 != null) {
            Log.e(str, c(str2, tArr));
        }
    }

    private static <T> String c(String str, T[] tArr) {
        try {
            return String.format(Locale.ENGLISH, str.replaceAll("\\{\\}", "%s"), tArr);
        } catch (IllegalFormatException | PatternSyntaxException e2) {
            return "log message error : " + e2.getMessage();
        }
    }

    public static void d(String str, String str2) {
        Log.i(str, str2);
    }

    public static <T> void e(String str, String str2, T... tArr) {
        if (str2 != null) {
            Log.i(str, c(str2, tArr));
        }
    }
}
