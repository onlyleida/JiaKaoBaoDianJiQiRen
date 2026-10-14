package com.loc;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class bo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f12629a;
    private v b;
    private String c;

    public bo(Context context, v vVar, String str) {
        this.f12629a = context.getApplicationContext();
        this.b = vVar;
        this.c = str;
    }

    private static String a(Context context, v vVar, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("\"sdkversion\":\"");
            sb.append(vVar.c());
            sb.append("\",\"product\":\"");
            sb.append(vVar.a());
            sb.append("\",\"nt\":\"");
            sb.append(n.d(context));
            sb.append("\",\"details\":");
            sb.append(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return sb.toString();
    }

    final byte[] a() {
        return w.a(a(this.f12629a, this.b, this.c));
    }
}
