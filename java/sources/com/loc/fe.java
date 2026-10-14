package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class fe extends bg {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Map<String, String> f12889h;
    String i;
    String j;
    byte[] k;
    byte[] l;
    boolean m;
    String n;
    Map<String, String> o;
    boolean p;
    private String q;

    public fe(Context context, v vVar) {
        super(context, vVar);
        this.f12889h = null;
        this.q = "";
        this.i = "";
        this.j = "";
        this.k = null;
        this.l = null;
        this.m = false;
        this.n = null;
        this.o = null;
        this.p = false;
    }

    @Override // com.loc.bk
    public final Map<String, String> a() {
        return this.f12889h;
    }

    public final void a(Map<String, String> map) {
        this.o = map;
    }

    @Override // com.loc.bg
    public final byte[] a_() {
        return this.k;
    }

    @Override // com.loc.bk
    public final String b() {
        return this.i;
    }

    public final void b(String str) {
        this.n = str;
    }

    public final void b(Map<String, String> map) {
        this.f12889h = map;
    }

    public final void b(boolean z) {
        this.m = z;
    }

    public final void b(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            if (bArr != null) {
                try {
                    byteArrayOutputStream2.write(bg.a(bArr));
                    byteArrayOutputStream2.write(bArr);
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        th.printStackTrace();
                        if (byteArrayOutputStream != null) {
                            try {
                                return;
                            } catch (IOException e2) {
                                return;
                            }
                        }
                        return;
                    } finally {
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                    }
                }
            }
            this.l = byteArrayOutputStream2.toByteArray();
            try {
                byteArrayOutputStream2.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.loc.bg
    public final byte[] b_() {
        return this.l;
    }

    @Override // com.loc.q, com.loc.bk
    public final String c() {
        return this.j;
    }

    public final void c(String str) {
        this.i = str;
    }

    public final void c(boolean z) {
        this.p = z;
    }

    public final void c(byte[] bArr) {
        this.k = bArr;
    }

    @Override // com.loc.bg, com.loc.bk
    public final Map<String, String> d() {
        return this.o;
    }

    public final void d(String str) {
        this.j = str;
    }

    public final void e(String str) {
        if (TextUtils.isEmpty(str)) {
            this.q = "";
        } else {
            this.q = str;
        }
    }

    @Override // com.loc.bk
    public final String g() {
        return this.q;
    }

    @Override // com.loc.bk
    public final String h() {
        return "loc";
    }

    @Override // com.loc.bg
    public final boolean i() {
        return this.m;
    }

    @Override // com.loc.bg
    public final String j() {
        return this.n;
    }

    @Override // com.loc.bg
    protected final boolean k() {
        return this.p;
    }
}
