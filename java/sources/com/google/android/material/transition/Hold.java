package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.k0;
import androidx.transition.t;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public final class Hold extends k0 {
    @Override // androidx.transition.k0
    public Animator onAppear(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        return ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // androidx.transition.k0
    public Animator onDisappear(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        return ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED);
    }
}
