package com.amap.api.mapcore.util;

import java.net.Proxy;

/* JADX INFO: loaded from: classes5.dex */
public class h7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i7 f10875a;
    private k7 b;

    public interface a {
        void onDownload(byte[] bArr, long j);

        void onException(Throwable th);

        void onFinish();

        void onStop();
    }

    public h7(k7 k7Var) {
        this(k7Var, 0L, -1L);
    }

    public void a() {
        this.f10875a.k();
    }

    public void b(a aVar) {
        this.f10875a.o(this.b.getURL(), this.b.c(), this.b.isIPRequest(), this.b.getIPDNSName(), this.b.getRequestHead(), this.b.getParams(), this.b.getEntityBytes(), aVar, i7.a(2, this.b));
    }

    public h7(k7 k7Var, long j, long j2) {
        this(k7Var, j, j2, false);
    }

    public h7(k7 k7Var, long j, long j2, boolean z) {
        this.b = k7Var;
        Proxy proxy = k7Var.c;
        i7 i7Var = new i7(k7Var.f10964a, k7Var.b, proxy == null ? null : proxy, z);
        this.f10875a = i7Var;
        i7Var.u(j2);
        this.f10875a.l(j);
    }
}
