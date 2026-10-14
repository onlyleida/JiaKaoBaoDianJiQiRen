package com.autonavi.base.ae.gmap.glanimation;

import android.os.SystemClock;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class AdglAnimation1V extends AbstractAdglAnimation {
    private float curValue;
    private AbstractAdglAnimationParam1V v1Param = null;

    public AdglAnimation1V(int i) {
        reset();
        this.duration = i;
        this.curValue = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.autonavi.base.ae.gmap.glanimation.AbstractAdglAnimation
    public void doAnimation(Object obj) {
        if (this.isOver) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.startTime;
        this.offsetTime = jUptimeMillis;
        float f2 = jUptimeMillis / this.duration;
        if (f2 > 1.0f) {
            this.isOver = true;
            f2 = 1.0f;
        } else if (f2 < BitmapDescriptorFactory.HUE_RED) {
            this.isOver = true;
            return;
        }
        AbstractAdglAnimationParam1V abstractAdglAnimationParam1V = this.v1Param;
        if (abstractAdglAnimationParam1V != null) {
            abstractAdglAnimationParam1V.setNormalizedTime(f2);
            this.curValue = this.v1Param.getCurValue();
        }
    }

    public float getCurValue() {
        return this.curValue;
    }

    public float getEndValue() {
        AbstractAdglAnimationParam1V abstractAdglAnimationParam1V = this.v1Param;
        return abstractAdglAnimationParam1V != null ? abstractAdglAnimationParam1V.getToValue() : BitmapDescriptorFactory.HUE_RED;
    }

    public float getStartValue() {
        AbstractAdglAnimationParam1V abstractAdglAnimationParam1V = this.v1Param;
        return abstractAdglAnimationParam1V != null ? abstractAdglAnimationParam1V.getFromValue() : BitmapDescriptorFactory.HUE_RED;
    }

    public void reset() {
        this.isOver = false;
        this.duration = 0;
        AbstractAdglAnimationParam1V abstractAdglAnimationParam1V = this.v1Param;
        if (abstractAdglAnimationParam1V != null) {
            abstractAdglAnimationParam1V.reset();
        }
    }

    public void setAnimationValue(float f2, float f3, int i) {
        if (this.v1Param == null) {
            this.v1Param = new AbstractAdglAnimationParam1V();
        }
        this.v1Param.reset();
        this.v1Param.setInterpolatorType(i, 1.0f);
        this.v1Param.setFromValue(f2);
        this.v1Param.setToValue(f3);
        this.startTime = SystemClock.uptimeMillis();
        this.isOver = false;
    }
}
