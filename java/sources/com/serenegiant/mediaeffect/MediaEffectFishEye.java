package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectFishEye extends MediaEffect {
    public MediaEffectFishEye(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.FisheyeEffect");
        setParameter(f2);
    }

    public MediaEffectFishEye setParameter(float f2) {
        setParameter("scale", Float.valueOf(f2));
        return this;
    }
}
