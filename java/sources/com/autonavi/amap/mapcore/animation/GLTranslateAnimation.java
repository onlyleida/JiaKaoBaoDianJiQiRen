package com.autonavi.amap.mapcore.animation;

import com.amap.api.maps.model.LatLng;

/* JADX INFO: loaded from: classes5.dex */
public class GLTranslateAnimation extends GLAnimation {
    public double mToXDelta;
    public double mToYDelta;
    public double mFromXDelta = 0.0d;
    public double mFromYDelta = 0.0d;
    public double mCurXDelta = 0.0d;
    public double mCurYDelta = 0.0d;

    public GLTranslateAnimation(LatLng latLng) {
        this.mToXDelta = 0.0d;
        this.mToYDelta = 0.0d;
        this.mToXDelta = latLng.longitude;
        this.mToYDelta = latLng.latitude;
    }

    @Override // com.autonavi.amap.mapcore.animation.GLAnimation
    protected void applyTransformation(float f2, GLTransformation gLTransformation) {
        double d2 = this.mFromXDelta;
        this.mCurXDelta = d2;
        double d3 = this.mFromYDelta;
        this.mCurYDelta = d3;
        double d4 = this.mToXDelta;
        if (d2 != d4) {
            this.mCurXDelta = d2 + ((d4 - d2) * ((double) f2));
        }
        double d5 = this.mToYDelta;
        if (d3 != d5) {
            this.mCurYDelta = d3 + ((d5 - d3) * ((double) f2));
        }
        gLTransformation.x = this.mCurXDelta;
        gLTransformation.y = this.mCurYDelta;
    }

    public void setFromPoint(LatLng latLng) {
        this.mFromXDelta = latLng.longitude;
        this.mFromYDelta = latLng.latitude;
    }
}
