package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    k8 f10965a;

    public k8() {
    }

    private boolean f() {
        k8 k8Var = this.f10965a;
        if (k8Var != null) {
            return k8Var.e();
        }
        return true;
    }

    public void a(int i) {
        k8 k8Var = this.f10965a;
        if (k8Var != null) {
            k8Var.a(i);
        }
    }

    public void b(boolean z) {
        k8 k8Var = this.f10965a;
        if (k8Var != null) {
            k8Var.b(z);
        }
    }

    protected abstract boolean c();

    public int d() {
        k8 k8Var = this.f10965a;
        return Math.min(Integer.MAX_VALUE, k8Var != null ? k8Var.d() : Integer.MAX_VALUE);
    }

    public boolean e() {
        if (f()) {
            return c();
        }
        return false;
    }

    public k8(k8 k8Var) {
        this.f10965a = k8Var;
    }
}
