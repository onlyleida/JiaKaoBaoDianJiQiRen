package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectNull extends MediaEffect {
    public MediaEffectNull(EffectContext effectContext) {
        super(effectContext, "android.media.effect.effects.AutoFixEffect");
        setParameter("scale", Float.valueOf(BitmapDescriptorFactory.HUE_RED));
    }
}
