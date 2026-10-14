package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class t7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int f11201a = 1000;
    static boolean b = false;
    private static WeakReference<p7> c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static int f11202d = 20;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f11203e = 10;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f11204a;
        final /* synthetic */ s7 b;

        a(Context context, s7 s7Var) {
            this.f11204a = context;
            this.b = s7Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                synchronized (t7.class) {
                    try {
                        String string = Long.toString(System.currentTimeMillis());
                        p7 p7VarA = w7.a(t7.c);
                        w7.e(this.f11204a, p7VarA, c6.f10615f, t7.f11201a, 2097152, Constants.VIA_SHARE_TYPE_INFO);
                        if (p7VarA.f11082e == null) {
                            p7VarA.f11082e = new v6(new x6(new y6(new x6())));
                        }
                        q7.d(string, this.b.b(), p7VarA);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                e6.r(th2, "ofm", "aple");
            }
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f11205a;

        b(Context context) {
            this.f11205a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p7 p7VarA = w7.a(t7.c);
                w7.e(this.f11205a, p7VarA, c6.f10615f, t7.f11201a, 2097152, Constants.VIA_SHARE_TYPE_INFO);
                p7VarA.f11085h = 14400000;
                if (p7VarA.f11084g == null) {
                    p7VarA.f11084g = new a8(new z7(this.f11205a, new f8(), new v6(new x6(new y6())), new String(y5.a(10)), c5.j(this.f11205a), g5.a0(this.f11205a), g5.R(this.f11205a), g5.M(this.f11205a), g5.q(), Build.MANUFACTURER, Build.DEVICE, g5.c0(this.f11205a), c5.g(this.f11205a), Build.MODEL, c5.h(this.f11205a), c5.e(this.f11205a)));
                }
                if (TextUtils.isEmpty(p7VarA.i)) {
                    p7VarA.i = "fKey";
                }
                Context context = this.f11205a;
                p7VarA.f11083f = new j8(context, p7VarA.f11085h, p7VarA.i, new h8(context, t7.b, t7.f11203e * 1024, t7.f11202d * 1024, "offLocKey"));
                q7.c(p7VarA);
            } catch (Throwable th) {
                e6.r(th, "ofm", "uold");
            }
        }
    }

    @Deprecated
    public static synchronized void b(int i, boolean z) {
        f11201a = i;
        b = z;
    }

    public static void c(Context context) {
        e6.s().submit(new b(context));
    }

    public static synchronized void d(s7 s7Var, Context context) {
        e6.s().submit(new a(context, s7Var));
    }
}
