package com.loc;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f12504a = "/a/";
    static final String b = "b";
    static final String c = "c";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f12505d = "d";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f12506e = "s";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f12507f = "g";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f12508g = "h";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f12509h = "e";
    public static final String i = "f";
    public static final String j = "j";
    public static final String k = "k";
    private static long l;
    private static Vector<v> m = new Vector<>();

    public static String a(Context context, String str) {
        return context.getSharedPreferences("AMSKLG_CFG", 0).getString(str, "");
    }

    static List<v> a() {
        Vector<v> vector;
        try {
            synchronized (Looper.getMainLooper()) {
                vector = m;
            }
            return vector;
        } catch (Throwable th) {
            th.printStackTrace();
            return m;
        }
    }

    public static void a(final Context context) {
        try {
            if (System.currentTimeMillis() - l < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                return;
            }
            l = System.currentTimeMillis();
            ci.a().b(new cj() { // from class: com.loc.ak.1
                @Override // com.loc.cj
                public final void a() {
                    try {
                        an.b(context);
                        an.d(context);
                        an.c(context);
                        br.a(context);
                        bp.a(context);
                    } catch (RejectedExecutionException unused) {
                    } catch (Throwable th) {
                        am.b(th, "Lg", "proL");
                    }
                }
            });
        } catch (Throwable th) {
            am.b(th, "Lg", "proL");
        }
    }

    @TargetApi(9)
    public static void a(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("AMSKLG_CFG", 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public static void a(v vVar) {
        try {
            synchronized (Looper.getMainLooper()) {
                try {
                    if (vVar == null) {
                        return;
                    }
                    if (m.contains(vVar)) {
                        return;
                    }
                    m.add(vVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
    }

    static boolean a(String[] strArr, String str) {
        if (strArr != null && str != null) {
            try {
                String[] strArrSplit = str.split("\n");
                int length = strArrSplit.length;
                int i2 = 0;
                while (true) {
                    boolean z = true;
                    if (i2 < length) {
                        String strTrim = strArrSplit[i2].trim();
                        if (TextUtils.isEmpty(strTrim) || !strTrim.startsWith("at ") || !strTrim.contains("uncaughtException")) {
                            z = false;
                        }
                        if (z) {
                            return false;
                        }
                        i2++;
                    } else {
                        for (String str2 : strArrSplit) {
                            if (b(strArr, str2.trim())) {
                                return true;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public static void b(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("AMSKLG_CFG", 0).edit();
        editorEdit.remove(str);
        editorEdit.apply();
    }

    static boolean b(String[] strArr, String str) {
        if (strArr != null && str != null) {
            try {
                for (String str2 : strArr) {
                    str = str.trim();
                    if (str.startsWith("at ")) {
                        if (str.contains(str2 + ".") && str.endsWith(")") && !str.contains("uncaughtException")) {
                            return true;
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public static String c(Context context, String str) {
        return context.getFilesDir().getAbsolutePath() + f12504a + str;
    }
}
