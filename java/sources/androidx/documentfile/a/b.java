package androidx.documentfile.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class b {
    public static boolean a(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String strD = d(context, uri);
        int iG = g(context, uri, "flags", 0);
        if (TextUtils.isEmpty(strD)) {
            return false;
        }
        if ((iG & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(strD) || (iG & 8) == 0) {
            return (TextUtils.isEmpty(strD) || (iG & 2) == 0) ? false : true;
        }
        return true;
    }

    private static void b(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static String c(Context context, Uri uri) {
        return i(context, uri, "_display_name", null);
    }

    private static String d(Context context, Uri uri) {
        return i(context, uri, "mime_type", null);
    }

    public static boolean e(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(d(context, uri));
    }

    public static boolean f(Context context, Uri uri) {
        String strD = d(context, uri);
        return ("vnd.android.document/directory".equals(strD) || TextUtils.isEmpty(strD)) ? false : true;
    }

    private static int g(Context context, Uri uri, String str, int i) {
        return (int) h(context, uri, str, i);
    }

    private static long h(Context context, Uri uri, String str, long j) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            return (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) ? j : cursorQuery.getLong(0);
        } catch (Exception e2) {
            Log.w("DocumentFile", "Failed query: " + e2);
            return j;
        } finally {
            b(cursorQuery);
        }
        b(cursorQuery);
    }

    private static String i(Context context, Uri uri, String str, String str2) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            return (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) ? str2 : cursorQuery.getString(0);
        } catch (Exception e2) {
            Log.w("DocumentFile", "Failed query: " + e2);
            return str2;
        } finally {
            b(cursorQuery);
        }
        b(cursorQuery);
    }
}
