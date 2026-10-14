package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectStraighten extends MediaEffect {
    public MediaEffectStraighten(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.StraightenEffect");
        setParameter(f2);
    }

    public MediaEffectStraighten setParameter(float f2) {
        setParameter("angle", Float.valueOf(f2));
        return this;
    }
}
