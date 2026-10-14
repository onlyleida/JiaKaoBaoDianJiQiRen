package org.libpag;

/* JADX INFO: loaded from: classes6.dex */
class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGImageView f16288a;

    i(PAGImageView pAGImageView) {
        this.f16288a = pAGImageView;
    }

    @Override // java.lang.Runnable
    public void run() {
        PAGImageView pAGImageView = this.f16288a;
        pAGImageView.z = pAGImageView.f16264d.getCurrentPlayTime();
        this.f16288a.f16264d.cancel();
    }
}
