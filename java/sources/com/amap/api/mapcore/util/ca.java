package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public interface ca {

    public enum a {
        amap_exception(-1),
        network_exception(-1),
        file_io_exception(0),
        success_no_exception(1),
        cancel_no_exception(2);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f10629f;

        a(int i) {
            this.f10629f = i;
        }
    }

    void a();

    void c();

    void d();

    void e(a aVar);

    void m(long j, long j2);
}
