package com.loc;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class be extends bk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f12559a;
    private Map<String, String> b;

    public be(byte[] bArr, Map<String, String> map) {
        this.f12559a = bArr;
        this.b = map;
        a(bk.a.SINGLE);
        a(bk.c.HTTPS);
    }

    @Override // com.loc.bk
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.loc.bk
    public final String b() {
        return "https://adiu.amap.com/ws/device/adius";
    }

    @Override // com.loc.bk
    public final Map<String, String> d() {
        return this.b;
    }

    @Override // com.loc.bk
    public final byte[] e() {
        return this.f12559a;
    }
}
