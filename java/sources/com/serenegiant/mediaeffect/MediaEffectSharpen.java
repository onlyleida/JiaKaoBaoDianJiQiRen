package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectSharpen extends MediaEffect {
    public MediaEffectSharpen(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.SharpenEffect");
        setParameter(f2);
    }

    public MediaEffectSharpen setParameter(float f2) {
        setParameter("scale", Float.valueOf(f2));
        return this;
    }
}
