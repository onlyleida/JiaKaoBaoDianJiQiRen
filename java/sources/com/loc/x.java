package com.loc;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static x f13054a;
    private final Context b;
    private final String c = ae.a(w.c("RYW1hcF9kZXZpY2VfYWRpdQ"));

    private x(Context context) {
        this.b = context.getApplicationContext();
    }

    public static x a(Context context) {
        if (f13054a == null) {
            synchronized (x.class) {
                if (f13054a == null) {
                    f13054a = new x(context);
                }
            }
        }
        return f13054a;
    }

    public final synchronized void a() {
        try {
            if (n.c() == null) {
                n.a(ab.a());
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(String str) {
        y.a(this.b).a(this.c);
        y.a(this.b).b(str);
    }
}
