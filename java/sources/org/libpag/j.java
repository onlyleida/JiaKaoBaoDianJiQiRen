package org.libpag;

/* JADX INFO: loaded from: classes6.dex */
class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGImageView f16289a;

    j(PAGImageView pAGImageView) {
        this.f16289a = pAGImageView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f16289a.s != null) {
            this.f16289a.s.a();
        }
    }
}
