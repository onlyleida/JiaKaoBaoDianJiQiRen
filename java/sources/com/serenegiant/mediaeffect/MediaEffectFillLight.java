package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectFillLight extends MediaEffect {
    public MediaEffectFillLight(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.FillLightEffect");
        setParameter(f2);
    }

    public MediaEffectFillLight setParameter(float f2) {
        setParameter("strength", Float.valueOf(f2));
        return this;
    }
}
