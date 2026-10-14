package com.serenegiant.mediaeffect;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.glutils.ShaderConst;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectKernel extends MediaEffectGLESBase {
    private static final boolean DEBUG = false;
    private static final String TAG = "MediaEffectKernel";

    public MediaEffectKernel() {
        super(new MediaEffectKernel3x3Drawer(false, ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_2D));
    }

    public void setColorAdjust(float f2) {
        ((MediaEffectKernel3x3Drawer) this.mDrawer).setColorAdjust(f2);
    }

    public void setKernel(float[] fArr, float f2) {
        ((MediaEffectKernel3x3Drawer) this.mDrawer).setKernel(fArr, f2);
    }

    public MediaEffectKernel setParameter(float[] fArr, float f2) {
        setKernel(fArr, f2);
        return this;
    }

    public void setTexSize(int i, int i2) {
        this.mDrawer.setTexSize(i, i2);
    }

    public MediaEffectKernel(float[] fArr) {
        this();
        setParameter(fArr, BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.serenegiant.mediaeffect.MediaEffectGLESBase, com.serenegiant.mediaeffect.IEffect
    public MediaEffectKernel resize(int i, int i2) {
        super.resize(i, i2);
        setTexSize(i, i2);
        return this;
    }

    public MediaEffectKernel(float[] fArr, float f2) {
        this();
        setParameter(fArr, f2);
    }
}
