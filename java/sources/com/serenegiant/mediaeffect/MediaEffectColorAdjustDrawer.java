package com.serenegiant.mediaeffect;

import android.opengl.GLES20;
import com.serenegiant.glutils.ShaderConst;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectColorAdjustDrawer extends MediaEffectDrawer.MediaEffectSingleDrawer {
    private float mColorAdjust;
    private int muColorAdjustLoc;

    public MediaEffectColorAdjustDrawer(String str) {
        this(false, ShaderConst.VERTEX_SHADER, str);
    }

    @Override // com.serenegiant.mediaeffect.MediaEffectDrawer
    protected void preDraw(int[] iArr, float[] fArr, int i) {
        super.preDraw(iArr, fArr, i);
        if (this.muColorAdjustLoc >= 0) {
            synchronized (this.mSync) {
                GLES20.glUniform1f(this.muColorAdjustLoc, this.mColorAdjust);
            }
        }
    }

    public void setColorAdjust(float f2) {
        synchronized (this.mSync) {
            this.mColorAdjust = f2;
        }
    }

    public MediaEffectColorAdjustDrawer(boolean z, String str) {
        this(z, ShaderConst.VERTEX_SHADER, str);
    }

    public MediaEffectColorAdjustDrawer(boolean z, String str, String str2) {
        super(z, str, str2);
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(getProgram(), "uColorAdjust");
        this.muColorAdjustLoc = iGlGetUniformLocation;
        if (iGlGetUniformLocation < 0) {
            this.muColorAdjustLoc = -1;
        }
    }
}
