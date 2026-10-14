package cn.mucang.android.jiakaoyi.engine.g;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private final long b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3081a = false;
    private long c = -999999;

    public b(long j) {
        this.b = j;
    }

    public void a() {
        this.f3081a = false;
    }

    public void b() {
        f();
        a();
    }

    public long c() {
        return this.b;
    }

    public boolean d() {
        return this.f3081a && SystemClock.elapsedRealtime() - this.c > this.b;
    }

    public boolean e() {
        return this.f3081a;
    }

    public void f() {
        this.c = SystemClock.elapsedRealtime();
    }

    public void g() {
        if (!this.f3081a) {
            this.c = SystemClock.elapsedRealtime();
        }
        this.f3081a = true;
    }
}
