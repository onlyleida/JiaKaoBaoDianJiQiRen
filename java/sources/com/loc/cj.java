package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cj implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f12680e;

    interface a {
        void a(cj cjVar);
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        a aVar;
        try {
            if (Thread.interrupted()) {
                return;
            }
            a();
            if (Thread.interrupted() || (aVar = this.f12680e) == null) {
                return;
            }
            aVar.a(this);
        } catch (Throwable th) {
            am.b(th, "ThreadTask", "run");
            th.printStackTrace();
        }
    }
}
