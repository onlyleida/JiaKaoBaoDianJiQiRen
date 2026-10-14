package com.mobile.auth.k;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f13496a;
    private a b;

    public interface a {
    }

    public static g a() {
        if (f13496a == null) {
            synchronized (g.class) {
                if (f13496a == null) {
                    f13496a = new g();
                }
            }
        }
        return f13496a;
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void b() {
        if (this.b != null) {
            this.b = null;
        }
    }
}
