package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectContrast extends MediaEffect {
    public MediaEffectContrast(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.ContrastEffect");
        setParameter(f2);
    }

    public MediaEffectContrast setParameter(float f2) {
        setParameter("contrast", Float.valueOf(f2));
        return this;
    }
}
