package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public final class FadeThroughProvider implements VisibilityAnimatorProvider {
    static final float PROGRESS_THRESHOLD = 0.35f;

    private static Animator createFadeThroughAnimator(final View view, final float f2, final float f3, final float f4, final float f5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transition.FadeThroughProvider.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(TransitionUtils.lerp(f2, f3, f4, f5, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            }
        });
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    public Animator createAppear(ViewGroup viewGroup, View view) {
        return createFadeThroughAnimator(view, BitmapDescriptorFactory.HUE_RED, 1.0f, PROGRESS_THRESHOLD, 1.0f);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    public Animator createDisappear(ViewGroup viewGroup, View view) {
        return createFadeThroughAnimator(view, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, PROGRESS_THRESHOLD);
    }
}
