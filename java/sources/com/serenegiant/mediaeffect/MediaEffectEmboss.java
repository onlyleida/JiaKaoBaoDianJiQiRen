package com.serenegiant.mediaeffect;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectEmboss extends MediaEffectKernel {
    private float mIntensity;

    public MediaEffectEmboss() {
        this(1.0f);
    }

    public MediaEffectEmboss setParameter(float f2) {
        if (this.mIntensity != f2) {
            this.mIntensity = f2;
            float f3 = -f2;
            setParameter(new float[]{(-2.0f) * f2, f3, BitmapDescriptorFactory.HUE_RED, f3, 1.0f, f2, BitmapDescriptorFactory.HUE_RED, f2, f2 * 2.0f}, BitmapDescriptorFactory.HUE_RED);
        }
        return this;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MediaEffectEmboss(float f2) {
        float f3 = -f2;
        super(new float[]{(-2.0f) * f2, f3, BitmapDescriptorFactory.HUE_RED, f3, 1.0f, f2, BitmapDescriptorFactory.HUE_RED, f2, 2.0f * f2});
        this.mIntensity = f2;
    }
}
