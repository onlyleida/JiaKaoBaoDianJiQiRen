package com.amap.api.mapcore.util;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class s7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11175a;
    private m5 b;
    private String c;

    public s7(Context context, m5 m5Var, String str) {
        this.f11175a = context.getApplicationContext();
        this.b = m5Var;
        this.c = str;
    }

    private static String a(Context context, m5 m5Var, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("\"sdkversion\":\"");
            sb.append(m5Var.g());
            sb.append("\",\"product\":\"");
            sb.append(m5Var.a());
            sb.append("\",\"nt\":\"");
            sb.append(g5.G(context));
            sb.append("\",\"details\":");
            sb.append(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return sb.toString();
    }

    byte[] b() {
        return n5.o(a(this.f11175a, this.b, this.c));
    }
}
