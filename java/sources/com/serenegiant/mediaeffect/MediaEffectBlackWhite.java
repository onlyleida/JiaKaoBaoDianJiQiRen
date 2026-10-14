package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectBlackWhite extends MediaEffect {
    public MediaEffectBlackWhite(EffectContext effectContext) {
        this(effectContext, BitmapDescriptorFactory.HUE_RED, 1.0f);
    }

    public MediaEffectBlackWhite setParameter(float f2, float f3) {
        setParameter("black", Float.valueOf(f2));
        setParameter("white", Float.valueOf(f3));
        return this;
    }

    public MediaEffectBlackWhite(EffectContext effectContext, float f2, float f3) {
        super(effectContext, "android.media.effect.effects.BlackWhiteEffect");
        setParameter(f2, f3);
    }
}
