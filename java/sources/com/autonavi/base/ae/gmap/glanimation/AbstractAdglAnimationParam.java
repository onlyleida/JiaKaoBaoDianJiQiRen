package com.autonavi.base.ae.gmap.glanimation;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractAdglAnimationParam {
    protected boolean hasCheckedParam;
    protected float mult;
    protected boolean needToCaculate;
    protected float normalizedTime;
    protected int interpolationType = 0;
    protected float factor = 1.0f;
    protected boolean hasFromValue = false;
    protected boolean hasToValue = false;

    public AbstractAdglAnimationParam() {
        this.hasCheckedParam = false;
        this.needToCaculate = false;
        this.hasCheckedParam = false;
        this.needToCaculate = false;
    }

    static float bounce(float f2) {
        return f2 * f2 * 8.0f;
    }

    public abstract void checkParam();

    public float getCurMult() {
        return this.mult;
    }

    public int getInterpolatorType() {
        return this.interpolationType;
    }

    public boolean needToCaculate() {
        if (!this.hasCheckedParam) {
            checkParam();
        }
        return this.hasCheckedParam && this.needToCaculate;
    }

    public void reset() {
        this.hasCheckedParam = false;
        this.needToCaculate = false;
        this.interpolationType = 0;
        this.factor = 1.0f;
        this.hasCheckedParam = false;
        this.needToCaculate = false;
        this.hasFromValue = false;
        this.hasToValue = false;
    }

    public void setInterpolatorType(int i, float f2) {
        this.interpolationType = i;
        this.factor = f2;
    }

    public void setNormalizedTime(float f2) {
        double dPow;
        float fBounce;
        float f3;
        this.normalizedTime = f2;
        switch (this.interpolationType) {
            case 0:
                break;
            case 1:
                dPow = Math.pow(f2, this.factor * 2.0f);
                f2 = (float) dPow;
                break;
            case 2:
                float f4 = this.factor;
                if (f4 != 1.0f) {
                    f2 = (float) (1.0d - Math.pow(1.0f - f2, f4 * 2.0f));
                } else {
                    float f5 = 1.0f - f2;
                    f2 = 1.0f - (f5 * f5);
                }
                break;
            case 3:
                dPow = (Math.cos(((double) (f2 + 1.0f)) * 3.141592653589793d) / 2.0d) + 0.5d;
                f2 = (float) dPow;
                break;
            case 4:
                float f6 = f2 * 1.1226f;
                if (f6 >= 0.3535f) {
                    if (f6 < 0.7408f) {
                        fBounce = bounce(f6 - 0.54719f);
                        f3 = 0.7f;
                    } else if (f6 < 0.9644f) {
                        fBounce = bounce(f6 - 0.8526f);
                        f3 = 0.9f;
                    } else {
                        fBounce = bounce(f6 - 1.0435f);
                        f3 = 0.95f;
                    }
                    f2 = fBounce + f3;
                } else {
                    f2 = bounce(f6);
                }
                break;
            case 5:
                float f7 = f2 - 1.0f;
                f2 = (f7 * f7 * ((3.0f * f7) + 2.0f)) + 1.0f;
                break;
            case 6:
                if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                    if (f2 < 0.25f) {
                        f2 *= 4.0f;
                    } else if (f2 < 0.5f) {
                        f2 = 2.0f - (f2 * 4.0f);
                    } else if (f2 < 0.75f) {
                        f2 = (f2 * 4.0f) - 2.0f;
                    } else if (f2 <= 1.0f) {
                        f2 = 4.0f - (f2 * 4.0f);
                    }
                    break;
                }
            default:
                f2 = BitmapDescriptorFactory.HUE_RED;
                break;
        }
        this.mult = f2;
    }
}
