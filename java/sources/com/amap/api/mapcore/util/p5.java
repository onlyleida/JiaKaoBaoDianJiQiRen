package com.amap.api.mapcore.util;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class p5 {
    private static p5 c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11078a;
    private final String b = w5.d(n5.t("RYW1hcF9kZXZpY2VfYWRpdQ"));

    public p5(Context context) {
        this.f11078a = context.getApplicationContext();
    }

    public static p5 a(Context context) {
        if (c == null) {
            synchronized (p5.class) {
                if (c == null) {
                    c = new p5(context);
                }
            }
        }
        return c;
    }

    public void b(String str) {
        q5.b(this.f11078a).d(this.b);
        q5.b(this.f11078a).g(str);
    }
}
