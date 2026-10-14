package com.serenegiant.mediaeffect;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.glutils.ShaderConst;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectExtraction extends MediaEffectGLESBase {
    private static final boolean DEBUG = false;
    private static final String TAG = "MediaEffectExtraction";
    private final float[] mLimit;
    private static final String FRAGMENT_SHADER_BASE = "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 hsv = rgb2hsv(texture2D(sTexture, vTextureCoord).rgb);\n    vec3 min = vec3(uKernel[0], uKernel[2], uKernel[4]);\n    vec3 max = vec3(uKernel[1], uKernel[3], uKernel[5]);\n    vec3 add = vec3(uKernel[6], uKernel[7], uKernel[8]);\n    float e = 1e-10;\n    vec3 eps = vec3(e, e, e);\n    vec3 v = hsv;\n    if (hsv.r < min.r || hsv.r > max.r || hsv.g < min.g || hsv.g > max.g || hsv.b < min.b || hsv.b > max.b) {\n        v = vec3(0.0);\n    }\n    hsv = v + add;\n    if (uColorAdjust > 0.0) {\n        hsv = step(vec3(1.0, 1.0, uColorAdjust), hsv);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n";
    private static final String FRAGMENT_SHADER = String.format(FRAGMENT_SHADER_BASE, "", ShaderConst.SAMPLER_2D);
    private static final String FRAGMENT_SHADER_EXT = String.format(FRAGMENT_SHADER_BASE, ShaderConst.HEADER_OES, ShaderConst.SAMPLER_OES);

    public MediaEffectExtraction() {
        super(new MediaEffectKernel3x3Drawer(FRAGMENT_SHADER));
        float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
        this.mLimit = fArr;
        ((MediaEffectKernel3x3Drawer) this.mDrawer).setKernel(fArr, BitmapDescriptorFactory.HUE_RED);
    }

    public MediaEffectExtraction setParameter(float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return setParameter(f2, f3, f4, f5, f6, f7, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f8);
    }

    public MediaEffectExtraction setParameter(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11) {
        this.mLimit[0] = Math.min(f2, f3);
        this.mLimit[1] = Math.max(f2, f3);
        this.mLimit[2] = Math.min(f4, f5);
        this.mLimit[3] = Math.max(f4, f5);
        this.mLimit[4] = Math.min(f6, f7);
        this.mLimit[5] = Math.max(f6, f7);
        float[] fArr = this.mLimit;
        fArr[6] = f8;
        fArr[7] = f9;
        fArr[8] = f10;
        ((MediaEffectKernel3x3Drawer) this.mDrawer).setKernel(fArr, f11);
        return this;
    }

    public MediaEffectExtraction setParameter(float[] fArr, float f2) {
        if (fArr != null && fArr.length >= 6) {
            System.arraycopy(fArr, 0, this.mLimit, 0, 6);
            ((MediaEffectKernel3x3Drawer) this.mDrawer).setKernel(this.mLimit, f2);
            return this;
        }
        throw new IllegalArgumentException("limit is null or short");
    }
}
