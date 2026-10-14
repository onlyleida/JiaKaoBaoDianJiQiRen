package com.serenegiant.mediaeffect;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.glutils.ShaderConst;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectSaturateGLES extends MediaEffectGLESBase {
    private static final boolean DEBUG = false;
    private static final String TAG = "MediaEffectBrightness";
    private static final String FRAGMENT_SHADER_BASE = "#version 100\n%sprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uColorAdjust;\nconst highp vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\nhighp float getIntensity(vec3 c) {\nreturn dot(c.rgb, luminanceWeighting);\n}\nvoid main() {\n    highp vec4 tex = texture2D(sTexture, vTextureCoord);\n    highp float intensity = getIntensity(tex.rgb);\n    highp vec3 greyScaleColor = vec3(intensity, intensity, intensity);\n    gl_FragColor = vec4(mix(greyScaleColor, tex.rgb, uColorAdjust), tex.w);\n}\n";
    private static final String FRAGMENT_SHADER = String.format(FRAGMENT_SHADER_BASE, "", ShaderConst.SAMPLER_2D);
    private static final String FRAGMENT_SHADER_EXT = String.format(FRAGMENT_SHADER_BASE, ShaderConst.HEADER_OES, ShaderConst.SAMPLER_OES);

    public MediaEffectSaturateGLES() {
        this(BitmapDescriptorFactory.HUE_RED);
    }

    public MediaEffectSaturateGLES setParameter(float f2) {
        ((MediaEffectColorAdjustDrawer) this.mDrawer).setColorAdjust(f2 + 1.0f);
        return this;
    }

    public MediaEffectSaturateGLES(float f2) {
        super(new MediaEffectColorAdjustDrawer(FRAGMENT_SHADER));
        setParameter(f2);
    }
}
