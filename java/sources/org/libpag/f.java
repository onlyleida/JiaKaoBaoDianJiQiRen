package org.libpag;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes6.dex */
class f implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGImageView f16285a;

    f(PAGImageView pAGImageView) {
        this.f16285a = pAGImageView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.f16285a.u.a()) {
            if (this.f16285a.s != null || this.f16285a.g()) {
                this.f16285a.z = valueAnimator.getCurrentPlayTime();
                k.a(this.f16285a);
            }
        }
    }
}
