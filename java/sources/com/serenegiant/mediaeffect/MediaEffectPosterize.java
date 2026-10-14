package com.serenegiant.mediaeffect;

import com.serenegiant.glutils.ShaderConst;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectPosterize extends MediaEffectGLESBase {
    private static final boolean DEBUG = false;
    private static final String TAG = "MediaEffectBrightness";
    private static final String FRAGMENT_SHADER_BASE = "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uColorAdjust;\nvoid main() {\n    vec4 tex = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = floor((tex * uColorAdjust) + vec4(0.5)) / uColorAdjust;\n}\n";
    private static final String FRAGMENT_SHADER = String.format(FRAGMENT_SHADER_BASE, "", ShaderConst.SAMPLER_2D);
    private static final String FRAGMENT_SHADER_EXT = String.format(FRAGMENT_SHADER_BASE, ShaderConst.HEADER_OES, ShaderConst.SAMPLER_OES);

    public MediaEffectPosterize() {
        this(10.0f);
    }

    public MediaEffectPosterize setParameter(float f2) {
        ((MediaEffectColorAdjustDrawer) this.mDrawer).setColorAdjust(f2);
        return this;
    }

    public MediaEffectPosterize(float f2) {
        super(new MediaEffectColorAdjustDrawer(FRAGMENT_SHADER));
        setParameter(f2);
    }
}
