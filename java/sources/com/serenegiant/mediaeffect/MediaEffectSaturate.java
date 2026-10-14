package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectSaturate extends MediaEffect {
    public MediaEffectSaturate(EffectContext effectContext, float f2) {
        super(effectContext, "android.media.effect.effects.SaturateEffect");
        setParameter(f2);
    }

    public MediaEffectSaturate setParameter(float f2) {
        setEnable(f2 != BitmapDescriptorFactory.HUE_RED);
        setParameter("scale", Float.valueOf(f2));
        return this;
    }
}
