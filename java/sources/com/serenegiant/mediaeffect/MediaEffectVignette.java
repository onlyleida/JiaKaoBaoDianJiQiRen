package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectVignette extends MediaEffect {
    public MediaEffectVignette(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.SharpenEffect");
        setParameter(f2);
    }

    public MediaEffectVignette setParameter(float f2) {
        setParameter("scale", Float.valueOf(f2));
        return this;
    }
}
