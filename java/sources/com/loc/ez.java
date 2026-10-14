package com.loc;

import com.amap.api.location.AMapLocation;

/* JADX INFO: loaded from: classes4.dex */
@ar(a = "c")
public class ez {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @as(a = "a2", b = 6)
    private String f12873a;

    @as(a = "a3", b = 5)
    private long b;

    @as(a = "a4", b = 6)
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMapLocation f12874d;

    public final AMapLocation a() {
        return this.f12874d;
    }

    public final void a(long j) {
        this.b = j;
    }

    public final void a(AMapLocation aMapLocation) {
        this.f12874d = aMapLocation;
    }

    public final void a(String str) {
        this.c = str;
    }

    public final String b() {
        return this.c;
    }

    public final void b(String str) {
        this.f12873a = str;
    }

    public final String c() {
        return this.f12873a;
    }

    public final long d() {
        return this.b;
    }
}
