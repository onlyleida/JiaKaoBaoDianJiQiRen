package com.unity3d.player;

/* JADX INFO: loaded from: classes6.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f14335a = false;
    private boolean b = false;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f14336d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f14337e = false;

    p() {
    }

    static void a() {
        f14335a = true;
    }

    static void b() {
        f14335a = false;
    }

    static boolean c() {
        return f14335a;
    }

    final void a(boolean z) {
        this.b = z;
    }

    final void b(boolean z) {
        this.f14336d = z;
    }

    final void c(boolean z) {
        this.f14337e = z;
    }

    final void d(boolean z) {
        this.c = z;
    }

    final boolean d() {
        return this.f14336d;
    }

    final boolean e() {
        return this.f14337e;
    }

    final boolean f() {
        return f14335a && this.b && !this.f14336d && !this.c;
    }

    final boolean g() {
        return this.c;
    }

    public final String toString() {
        return super.toString();
    }
}
