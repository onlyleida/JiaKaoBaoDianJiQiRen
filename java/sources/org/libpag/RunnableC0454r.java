package org.libpag;

/* JADX INFO: renamed from: org.libpag.r, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
class RunnableC0454r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGView f16304a;

    RunnableC0454r(PAGView pAGView) {
        this.f16304a = pAGView;
    }

    @Override // java.lang.Runnable
    public void run() {
        PAGView pAGView = this.f16304a;
        pAGView.w = pAGView.i.getCurrentPlayTime();
        this.f16304a.i.cancel();
    }
}
