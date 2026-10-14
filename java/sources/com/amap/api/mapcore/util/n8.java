package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public abstract class n8 implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f11032e;

    interface a {
        void a(n8 n8Var);

        void b(n8 n8Var);

        void c(n8 n8Var);
    }

    public final void cancelTask() {
        try {
            a aVar = this.f11032e;
            if (aVar != null) {
                aVar.a(this);
            }
        } catch (Throwable th) {
            e6.r(th, "ThreadTask", "cancelTask");
            th.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar;
        try {
            a aVar2 = this.f11032e;
            if (aVar2 != null) {
                aVar2.c(this);
            }
            if (Thread.interrupted()) {
                return;
            }
            runTask();
            if (Thread.interrupted() || (aVar = this.f11032e) == null) {
                return;
            }
            aVar.b(this);
        } catch (Throwable th) {
            e6.r(th, "ThreadTask", "run");
            th.printStackTrace();
        }
    }

    public abstract void runTask();
}
