package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class v7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f11277a = false;
    static int b = 20;
    private static int c = 20;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference<p7> f11278d;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f11279a;
        final /* synthetic */ u7 b;

        a(Context context, u7 u7Var) {
            this.f11279a = context;
            this.b = u7Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                synchronized (v7.class) {
                    try {
                        v7.f(this.f11279a, this.b.b());
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                e6.r(th2, "stm", "as");
            }
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f11280a;

        b(Context context) {
            this.f11280a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p7 p7VarA = w7.a(v7.f11278d);
                w7.e(this.f11280a, p7VarA, c6.f10614e, 1000, 307200, "2");
                if (p7VarA.f11084g == null) {
                    p7VarA.f11084g = new x7(new b8(this.f11280a, new y7(new d8(new f8()))));
                }
                p7VarA.f11085h = 3600000;
                if (TextUtils.isEmpty(p7VarA.i)) {
                    p7VarA.i = "cKey";
                }
                if (p7VarA.f11083f == null) {
                    Context context = this.f11280a;
                    p7VarA.f11083f = new j8(context, p7VarA.f11085h, p7VarA.i, new g8(30, p7VarA.f11080a, new h8(context, v7.f11277a, v7.c * 1024, v7.b * 1024, "staticUpdate")));
                }
                q7.c(p7VarA);
            } catch (Throwable th) {
                e6.r(th, "stm", "usd");
            }
        }
    }

    public static void b(Context context) {
        e6.s().submit(new b(context));
    }

    public static synchronized void d(u7 u7Var, Context context) {
        e6.s().submit(new a(context, u7Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Context context, byte[] bArr) throws IOException {
        p7 p7VarA = w7.a(f11278d);
        w7.e(context, p7VarA, c6.f10614e, 1000, 307200, "2");
        if (p7VarA.f11082e == null) {
            p7VarA.f11082e = new t6();
        }
        try {
            q7.d(Integer.toString(new Random().nextInt(100)) + Long.toString(System.nanoTime()), bArr, p7VarA);
        } catch (Throwable th) {
            e6.r(th, "stm", "wts");
        }
    }
}
