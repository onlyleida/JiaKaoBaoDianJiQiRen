package com.tencent.bugly.crashreport.crash.anr;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13745a = "";
    private long b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13746d;

    public c(String str, long j) {
        this.c = "";
        this.f13746d = false;
        this.c = str == null ? "" : str;
        this.b = j;
        this.f13746d = false;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.f13745a;
    }

    public final long c() {
        return this.b;
    }

    public final boolean d() {
        return this.f13746d;
    }

    public final void a(String str) {
        if (str == null) {
            str = "";
        }
        this.f13745a = str;
    }

    public final void a(boolean z) {
        this.f13746d = z;
    }
}
