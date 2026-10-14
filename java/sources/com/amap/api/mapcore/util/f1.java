package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public abstract class f1 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f10770a;
    protected az b;

    public f1(int i, az azVar) {
        this.f10770a = i;
        this.b = azVar;
    }

    public void b() {
        z0.h("Wrong call delete()  State: " + e() + "  " + getClass());
    }

    public void c(int i) {
        z0.h("Wrong call fail()  State: " + e() + "  " + getClass());
    }

    public boolean d(f1 f1Var) {
        return f1Var.e() == e();
    }

    public int e() {
        return this.f10770a;
    }

    public void f(f1 f1Var) {
        z0.h(e() + " ==> " + f1Var.e() + "   " + getClass() + "==>" + f1Var.getClass());
    }

    public void g() {
        z0.h("Wrong call start()  State: " + e() + "  " + getClass());
    }

    public void h() {
        z0.h("Wrong call continueDownload()  State: " + e() + "  " + getClass());
    }

    public void i() {
        z0.h("Wrong call pause()  State: " + e() + "  " + getClass());
    }

    public void j() {
        z0.h("Wrong call hasNew()  State: " + e() + "  " + getClass());
    }

    public void k() {
        z0.h("Wrong call complete()  State: " + e() + "  " + getClass());
    }
}
