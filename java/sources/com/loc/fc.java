package com.loc;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class fc extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, String> f12883a = null;
    Map<String, String> b = null;
    String c = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    byte[] f12884h = null;
    private String i = null;

    @Override // com.loc.bk
    public final Map<String, String> a() {
        return this.f12883a;
    }

    public final void a(Map<String, String> map) {
        this.f12883a = map;
    }

    public final void a(byte[] bArr) {
        this.f12884h = bArr;
    }

    @Override // com.loc.bk
    public final String b() {
        return this.c;
    }

    public final void b(String str) {
        this.c = str;
    }

    public final void b(Map<String, String> map) {
        this.b = map;
    }

    @Override // com.loc.q, com.loc.bk
    public final String c() {
        return !TextUtils.isEmpty(this.i) ? this.i : super.c();
    }

    public final void c(String str) {
        this.i = str;
    }

    @Override // com.loc.bk
    public final Map<String, String> d() {
        return this.b;
    }

    @Override // com.loc.bk
    public final byte[] e() {
        return this.f12884h;
    }
}
