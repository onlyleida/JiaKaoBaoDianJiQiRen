package org.libpag;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes6.dex */
class m implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGView f16299a;

    m(PAGView pAGView) {
        this.f16299a = pAGView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f16299a.w = valueAnimator.getCurrentPlayTime();
        PAGView.i(this.f16299a);
    }
}
