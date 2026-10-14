package com.amap.api.maps;

import com.amap.api.maps.model.animation.Animation;
import com.autonavi.amap.mapcore.interfaces.IInfoWindowManager;

/* JADX INFO: loaded from: classes5.dex */
public class InfoWindowAnimationManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    IInfoWindowManager f11482a;

    public InfoWindowAnimationManager(IInfoWindowManager iInfoWindowManager) {
        this.f11482a = null;
        this.f11482a = iInfoWindowManager;
    }

    public void setInfoWindowAnimation(Animation animation, Animation.AnimationListener animationListener) {
        this.f11482a.setInfoWindowAnimation(animation, animationListener);
    }

    public void setInfoWindowAppearAnimation(Animation animation) {
        this.f11482a.setInfoWindowAppearAnimation(animation);
    }

    public void setInfoWindowBackColor(int i) {
        this.f11482a.setInfoWindowBackColor(i);
    }

    public void setInfoWindowBackEnable(boolean z) {
        this.f11482a.setInfoWindowBackEnable(z);
    }

    public void setInfoWindowBackScale(float f2, float f3) {
        this.f11482a.setInfoWindowBackScale(f2, f3);
    }

    public void setInfoWindowDisappearAnimation(Animation animation) {
        this.f11482a.setInfoWindowDisappearAnimation(animation);
    }

    public void setInfoWindowMovingAnimation(Animation animation) {
        this.f11482a.setInfoWindowMovingAnimation(animation);
    }

    public void startAnimation() {
        this.f11482a.startAnimation();
    }
}
