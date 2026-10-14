package org.libpag;

/* JADX INFO: loaded from: classes6.dex */
class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f16283a;

    c(d dVar) {
        this.f16283a = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16283a.b.quitSafely();
    }
}
