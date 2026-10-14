package com.autonavi.base.ae.gmap.glanimation;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class AbstractAdglAnimationParam1V extends AbstractAdglAnimationParam {
    private float fromValue;
    private float toValue;

    public AbstractAdglAnimationParam1V() {
        reset();
    }

    @Override // com.autonavi.base.ae.gmap.glanimation.AbstractAdglAnimationParam
    public void checkParam() {
        this.needToCaculate = false;
        if (this.hasFromValue && this.hasToValue && Math.abs(this.toValue - this.fromValue) > 1.0E-4d) {
            this.needToCaculate = true;
        }
        this.hasCheckedParam = true;
    }

    public float getCurValue() {
        float f2 = this.fromValue;
        return f2 + ((this.toValue - f2) * this.mult);
    }

    public float getFromValue() {
        return this.fromValue;
    }

    public float getToValue() {
        return this.toValue;
    }

    @Override // com.autonavi.base.ae.gmap.glanimation.AbstractAdglAnimationParam
    public void reset() {
        super.reset();
        this.fromValue = BitmapDescriptorFactory.HUE_RED;
        this.toValue = BitmapDescriptorFactory.HUE_RED;
    }

    public void setFromValue(float f2) {
        this.fromValue = f2;
        this.hasFromValue = true;
        this.hasCheckedParam = false;
    }

    public void setToValue(float f2) {
        this.toValue = f2;
        this.hasToValue = true;
        this.hasCheckedParam = false;
    }
}
