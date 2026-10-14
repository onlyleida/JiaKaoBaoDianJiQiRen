package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.k0;
import androidx.transition.t;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.transition.VisibilityAnimatorProvider;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
abstract class MaterialVisibility<P extends VisibilityAnimatorProvider> extends k0 {
    private final P primaryAnimatorProvider;
    private VisibilityAnimatorProvider secondaryAnimatorProvider;

    protected MaterialVisibility(P p, VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.primaryAnimatorProvider = p;
        this.secondaryAnimatorProvider = visibilityAnimatorProvider;
        setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    }

    private Animator createAnimator(ViewGroup viewGroup, View view, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        Animator animatorCreateAppear = z ? this.primaryAnimatorProvider.createAppear(viewGroup, view) : this.primaryAnimatorProvider.createDisappear(viewGroup, view);
        if (animatorCreateAppear != null) {
            arrayList.add(animatorCreateAppear);
        }
        VisibilityAnimatorProvider visibilityAnimatorProvider = this.secondaryAnimatorProvider;
        if (visibilityAnimatorProvider != null) {
            Animator animatorCreateAppear2 = z ? visibilityAnimatorProvider.createAppear(viewGroup, view) : visibilityAnimatorProvider.createDisappear(viewGroup, view);
            if (animatorCreateAppear2 != null) {
                arrayList.add(animatorCreateAppear2);
            }
        }
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    public P getPrimaryAnimatorProvider() {
        return this.primaryAnimatorProvider;
    }

    public VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return this.secondaryAnimatorProvider;
    }

    @Override // androidx.transition.k0
    public Animator onAppear(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        return createAnimator(viewGroup, view, true);
    }

    @Override // androidx.transition.k0
    public Animator onDisappear(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        return createAnimator(viewGroup, view, false);
    }

    public void setSecondaryAnimatorProvider(VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.secondaryAnimatorProvider = visibilityAnimatorProvider;
    }
}
