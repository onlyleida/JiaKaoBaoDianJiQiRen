package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectGrain extends MediaEffect {
    public MediaEffectGrain(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.GrainEffect");
        setParameter(f2);
    }

    public MediaEffectGrain setParameter(float f2) {
        if (f2 >= BitmapDescriptorFactory.HUE_RED && f2 <= 1.0f) {
            setParameter("strength", Float.valueOf(f2));
        }
        return this;
    }
}
