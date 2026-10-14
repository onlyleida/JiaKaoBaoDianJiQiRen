package com.tencent.open.log;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Tracer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile int f14116a;
    private volatile boolean b;
    private g c;

    public Tracer() {
        this(c.f14129a, true, g.f14138a);
    }

    public void a(int i, Thread thread, long j, String str, String str2, Throwable th) {
        if (d() && d.a.a(this.f14116a, i)) {
            doTrace(i, thread, j, str, str2, th);
        }
    }

    public boolean d() {
        return this.b;
    }

    protected abstract void doTrace(int i, Thread thread, long j, String str, String str2, Throwable th);

    public g e() {
        return this.c;
    }

    public Tracer(int i, boolean z, g gVar) {
        this.f14116a = c.f14129a;
        this.b = true;
        this.c = g.f14138a;
        a(i);
        a(z);
        a(gVar);
    }

    public void a(int i) {
        this.f14116a = i;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void a(g gVar) {
        this.c = gVar;
    }
}
