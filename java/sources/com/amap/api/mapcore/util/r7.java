package com.amap.api.mapcore.util;

import android.content.Context;
import com.tencent.connect.common.Constants;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class r7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static WeakReference<p7> f11142a;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f11143a;
        final /* synthetic */ Context b;

        a(String str, Context context) {
            this.f11143a = str;
            this.b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (r7.class) {
                try {
                    String strB = k5.b(n5.o(this.f11143a));
                    p7 p7VarA = w7.a(r7.f11142a);
                    w7.e(this.b, p7VarA, c6.f10616g, 50, 102400, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
                    if (p7VarA.f11082e == null) {
                        p7VarA.f11082e = new v6(new y6(new x6()));
                    }
                    q7.d(strB, n5.o(" \"timestamp\":\"" + n5.c(System.currentTimeMillis(), "yyyyMMdd HH:mm:ss") + "\",\"details\":" + this.f11143a), p7VarA);
                } catch (Throwable th) {
                    e6.r(th, "mam", "ap");
                }
            }
        }
    }

    public static void a(String str, Context context) {
        e6.s().submit(new a(str, context));
    }
}
