package org.libpag;

import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGImageView f16287a;

    h(PAGImageView pAGImageView) {
        this.f16287a = pAGImageView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f16287a.I) {
            this.f16287a.f16264d.start();
        } else {
            Log.e("PAGImageView", "AnimatorStartRunnable: PAGView is not attached to window");
        }
    }
}
