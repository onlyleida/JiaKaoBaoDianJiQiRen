package org.libpag;

/* JADX INFO: loaded from: classes6.dex */
class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGView f16301a;

    o(PAGView pAGView) {
        this.f16301a = pAGView;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zIsOpaque = this.f16301a.isOpaque();
        this.f16301a.setOpaque(!zIsOpaque);
        this.f16301a.setOpaque(zIsOpaque);
    }
}
