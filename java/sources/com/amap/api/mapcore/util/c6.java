package com.amap.api.mapcore.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes5.dex */
public class c6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f10612a = "/a/";
    static final String b = "b";
    static final String c = "c";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f10613d = "d";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f10614e = "e";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f10615f = "f";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f10616g = "j";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f10617h;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10618a;

        a(Context context) {
            this.f10618a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                f6.o(this.f10618a);
                f6.q(this.f10618a);
                f6.p(this.f10618a);
                v7.b(this.f10618a);
                t7.c(this.f10618a);
            } catch (RejectedExecutionException unused) {
            } catch (Throwable th) {
                e6.r(th, "Lg", "proL");
            }
        }
    }

    public static String a(Context context, String str) {
        return context.getSharedPreferences("AMSKLG_CFG", 0).getString(str, "");
    }

    public static void b(Context context) {
        try {
            if (System.currentTimeMillis() - f10617h < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                return;
            }
            f10617h = System.currentTimeMillis();
            ExecutorService executorServiceS = e6.s();
            if (executorServiceS != null && !executorServiceS.isShutdown()) {
                executorServiceS.submit(new a(context));
            }
        } catch (Throwable th) {
            e6.r(th, "Lg", "proL");
        }
    }

    @TargetApi(9)
    public static void c(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("AMSKLG_CFG", 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    static boolean d(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("at ") && str.contains("uncaughtException");
    }

    static boolean e(String[] strArr, String str) {
        if (strArr != null && str != null) {
            try {
                String[] strArrSplit = str.split("\n");
                for (String str2 : strArrSplit) {
                    if (d(str2.trim())) {
                        return false;
                    }
                }
                for (String str3 : strArrSplit) {
                    if (h(strArr, str3.trim())) {
                        return true;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    static List<m5> f(Context context) {
        List<m5> listB = null;
        try {
            synchronized (Looper.getMainLooper()) {
                listB = new m6(context, false).b();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return listB;
    }

    public static void g(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("AMSKLG_CFG", 0).edit();
        editorEdit.remove(str);
        editorEdit.apply();
    }

    static boolean h(String[] strArr, String str) {
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

    public static String i(Context context, String str) {
        return context.getFilesDir().getAbsolutePath() + f10612a + str;
    }
}
