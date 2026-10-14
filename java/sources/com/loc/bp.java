package com.loc;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class bp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int f12630a = 1000;
    static boolean b = false;
    static int c = 20;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static int f12631d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static WeakReference<bm> f12632e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f12633f = 10;

    static class a extends cj {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f12634a;
        private Context b;
        private bo c;

        a(Context context, int i) {
            this.b = context;
            this.f12634a = i;
        }

        a(Context context, bo boVar) {
            this(context, 1);
            this.c = boVar;
        }

        @Override // com.loc.cj
        public final void a() {
            int i = this.f12634a;
            if (i == 1) {
                try {
                    synchronized (bp.class) {
                        try {
                            String string = Long.toString(System.currentTimeMillis());
                            bm bmVarA = bs.a(bp.f12632e);
                            bs.a(this.b, bmVarA, ak.i, bp.f12630a, 2097152, Constants.VIA_SHARE_TYPE_INFO);
                            if (bmVarA.f12625e == null) {
                                bmVarA.f12625e = new ax(new az(new ba(new az())));
                            }
                            bn.a(string, this.c.a(), bmVarA);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    am.b(th2, "ofm", "aple");
                    return;
                }
            }
            if (i == 2) {
                try {
                    bm bmVarA2 = bs.a(bp.f12632e);
                    bs.a(this.b, bmVarA2, ak.i, bp.f12630a, 2097152, Constants.VIA_SHARE_TYPE_INFO);
                    bmVarA2.f12628h = 14400000;
                    if (bmVarA2.f12627g == null) {
                        bmVarA2.f12627g = new bw(new bv(this.b, new ca(), new ax(new az(new ba())), new String(af.a(10)), k.f(this.b), n.v(this.b), n.k(this.b), n.h(this.b), n.a(), Build.MANUFACTURER, Build.DEVICE, n.y(this.b), k.c(this.b), Build.MODEL, k.d(this.b), k.b(this.b), n.g(this.b), n.a(this.b), String.valueOf(Build.VERSION.SDK_INT)));
                    }
                    if (TextUtils.isEmpty(bmVarA2.i)) {
                        bmVarA2.i = "fKey";
                    }
                    Context context = this.b;
                    bmVarA2.f12626f = new ce(context, bmVarA2.f12628h, bmVarA2.i, new cc(context, bp.b, bp.f12633f * 1024, bp.c * 1024, "offLocKey", bp.f12631d * 1024));
                    bn.a(bmVarA2);
                } catch (Throwable th3) {
                    am.b(th3, "ofm", "uold");
                }
            }
        }
    }

    public static synchronized void a(int i, boolean z, int i2, int i3) {
        f12630a = i;
        b = z;
        if (i2 < 10 || i2 > 100) {
            i2 = 20;
        }
        c = i2;
        if (i2 / 5 > f12633f) {
            f12633f = i2 / 5;
        }
        f12631d = i3;
    }

    public static void a(Context context) {
        ci.a().b(new a(context, 2));
    }

    public static synchronized void a(bo boVar, Context context) {
        ci.a().b(new a(context, boVar));
    }
}
