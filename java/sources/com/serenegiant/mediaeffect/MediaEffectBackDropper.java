package com.serenegiant.mediaeffect;

import android.media.effect.EffectContext;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectBackDropper extends MediaEffect {
    public MediaEffectBackDropper(EffectContext effectContext, String str) {
        super(effectContext, "android.media.effect.effects.BackDropperEffect");
        setParameter(str);
    }

    public MediaEffectBackDropper setParameter(String str) {
        if (!TextUtils.isEmpty(str)) {
            setParameter(SocialConstants.PARAM_SOURCE, str);
        }
        return this;
    }
}
