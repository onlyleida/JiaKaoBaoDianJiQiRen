package com.autonavi.amap.mapcore.animation;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class GLRotateAnimation extends GLAnimation {
    private float mFromDegrees;
    private float mToDegrees;

    public GLRotateAnimation(float f2, float f3, float f4, float f5, float f6) {
        this.mFromDegrees = BitmapDescriptorFactory.HUE_RED;
        this.mToDegrees = 1.0f;
        this.mFromDegrees = f2;
        this.mToDegrees = f3;
    }

    @Override // com.autonavi.amap.mapcore.animation.GLAnimation
    protected void applyTransformation(float f2, GLTransformation gLTransformation) {
        float f3 = this.mFromDegrees;
        gLTransformation.rotate = f3 + ((this.mToDegrees - f3) * f2);
    }
}
