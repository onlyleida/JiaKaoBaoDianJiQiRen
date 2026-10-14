package org.libpag;

import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGView f16303a;

    q(PAGView pAGView) {
        this.f16303a = pAGView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f16303a.m) {
            this.f16303a.i.start();
        } else {
            Log.e("PAGView", "AnimatorStartRunnable: PAGView is not attached to window");
        }
    }
}
