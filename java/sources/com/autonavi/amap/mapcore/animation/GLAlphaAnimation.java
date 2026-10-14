package com.autonavi.amap.mapcore.animation;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class GLAlphaAnimation extends GLAnimation {
    public float mCurAlpha = BitmapDescriptorFactory.HUE_RED;
    public float mFromAlpha;
    public float mToAlpha;

    public GLAlphaAnimation(float f2, float f3) {
        this.mFromAlpha = BitmapDescriptorFactory.HUE_RED;
        this.mToAlpha = 1.0f;
        this.mFromAlpha = f2;
        this.mToAlpha = f3;
    }

    @Override // com.autonavi.amap.mapcore.animation.GLAnimation
    protected void applyTransformation(float f2, GLTransformation gLTransformation) {
        float f3 = this.mFromAlpha;
        float f4 = f3 + ((this.mToAlpha - f3) * f2);
        this.mCurAlpha = f4;
        gLTransformation.alpha = f4;
    }
}
