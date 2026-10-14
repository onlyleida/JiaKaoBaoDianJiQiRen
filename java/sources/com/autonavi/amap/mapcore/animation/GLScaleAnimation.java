package com.autonavi.amap.mapcore.animation;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class GLScaleAnimation extends GLAnimation {
    private float mFromX;
    private float mFromY;
    private float mPivotX = BitmapDescriptorFactory.HUE_RED;
    private float mPivotY = BitmapDescriptorFactory.HUE_RED;
    private float mToX;
    private float mToY;

    public GLScaleAnimation(float f2, float f3, float f4, float f5) {
        this.mFromX = f2;
        this.mToX = f3;
        this.mFromY = f4;
        this.mToY = f5;
    }

    @Override // com.autonavi.amap.mapcore.animation.GLAnimation
    protected void applyTransformation(float f2, GLTransformation gLTransformation) {
        float f3 = this.mFromX;
        float f4 = (f3 == 1.0f && this.mToX == 1.0f) ? 1.0f : f3 + ((this.mToX - f3) * f2);
        float f5 = this.mFromY;
        float f6 = (f5 == 1.0f && this.mToY == 1.0f) ? 1.0f : ((this.mToY - f5) * f2) + f5;
        if (this.mPivotX == BitmapDescriptorFactory.HUE_RED && this.mPivotY == BitmapDescriptorFactory.HUE_RED) {
            gLTransformation.scaleX = f4;
            gLTransformation.scaleY = f6;
        } else {
            gLTransformation.scaleX = f4;
            gLTransformation.scaleY = f6;
        }
    }
}
