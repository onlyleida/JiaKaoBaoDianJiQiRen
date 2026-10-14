package com.amap.api.mapcore.util;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class o6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11045a;
    private m5 b;
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11046d = "40C27E38DCAD404B5465362914090908";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o8 f11047e = new o8("40C27E38DCAD404B5465362914090908");

    public void a(Context context, boolean z, String str, String str2, String str3, String[] strArr) {
        try {
            m5.b bVar = new m5.b(str, str2, str);
            bVar.b(strArr);
            bVar.a(str3);
            m5 m5VarC = bVar.c();
            if (context != null && m5VarC != null) {
                Context applicationContext = context.getApplicationContext();
                this.f11045a = applicationContext;
                this.b = m5VarC;
                this.c = z;
                this.f11047e.f(applicationContext, m5VarC);
            }
        } catch (gb unused) {
        }
    }

    public void b(String str, String str2) {
        q6.a.f11105a.d(this.f11045a, str, str2, this.f11047e.b(this.f11045a), this.c, this.b);
    }
}
