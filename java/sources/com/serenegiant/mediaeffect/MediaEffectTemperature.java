package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectTemperature extends MediaEffect {
    public MediaEffectTemperature(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.ColorTemperatureEffect");
        setParameter(f2);
    }

    public MediaEffectTemperature setParameter(float f2) {
        setParameter("scale", Float.valueOf(f2));
        return this;
    }
}
