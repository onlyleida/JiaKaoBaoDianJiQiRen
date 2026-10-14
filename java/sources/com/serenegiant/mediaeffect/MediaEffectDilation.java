package com.serenegiant.mediaeffect;

import android.opengl.GLES20;
import com.serenegiant.glutils.GLHelper;
import com.serenegiant.glutils.ShaderConst;

/* JADX INFO: loaded from: classes6.dex */
public class MediaEffectDilation extends MediaEffectGLESBase {
    private static final boolean DEBUG = false;
    public static final String FRAGMENT_SHADER_1 = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0] );\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3] ));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4] ));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n";
    public static final String FRAGMENT_SHADER_2 = "precision lowp float;\n\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n";
    public static final String FRAGMENT_SHADER_3 = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n";
    public static final String FRAGMENT_SHADER_4 = "precision lowp float;\nvarying       vec2 vTextureCoord;\nuniform vec2  uTexOffset[41];\nuniform sampler2D sTexture;\n\nvoid main()\n{\nvec4 maxValue = texture2D(sTexture, vTextureCoord + uTexOffset[0]);\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[1]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[2]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[3]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[4]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[5]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[6]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[7]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[8]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[9]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[10]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[11]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[12]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[13]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[14]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[15]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[16]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[17]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[18]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[19]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[20]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[21]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[22]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[23]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[24]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[25]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[26]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[27]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[28]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[29]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[30]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[31]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[32]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[33]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[34]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[35]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[36]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[37]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[38]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[39]));\nmaxValue = max(maxValue, texture2D(sTexture, vTextureCoord + uTexOffset[40]));\n\ngl_FragColor = vec4(maxValue.rgb, 1.0);\n}\n";
    private static final String TAG = "MediaEffectDilation";

    private static class MediaEffectDilationDrawer extends MediaEffectDrawer.MediaEffectSingleDrawer {
        private float mTexHeight;
        private final float[] mTexOffset;
        private float mTexWidth;
        private final int muTexOffsetLoc;

        public MediaEffectDilationDrawer(String str) {
            super(false, ShaderConst.VERTEX_SHADER, str);
            this.mTexOffset = new float[82];
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(getProgram(), "uTexOffset");
            this.muTexOffsetLoc = iGlGetUniformLocation;
            GLHelper.checkLocation(iGlGetUniformLocation, "uTexOffset");
        }

        @Override // com.serenegiant.mediaeffect.MediaEffectDrawer
        protected void preDraw(int[] iArr, float[] fArr, int i) {
            super.preDraw(iArr, fArr, i);
            int i2 = this.muTexOffsetLoc;
            if (i2 >= 0) {
                GLES20.glUniform2fv(i2, 41, this.mTexOffset, 0);
            }
        }

        @Override // com.serenegiant.mediaeffect.MediaEffectDrawer
        public void setTexSize(int i, int i2) {
            synchronized (this.mSync) {
                float f2 = i2;
                this.mTexHeight = f2;
                float f3 = i;
                this.mTexWidth = f3;
                float f4 = 1.0f / f3;
                float f5 = 1.0f / f2;
                float[] fArr = this.mTexOffset;
                fArr[0] = 0.0f;
                fArr[1] = 0.0f;
                fArr[2] = 0.0f;
                float f6 = -f5;
                fArr[3] = f6;
                fArr[4] = 0.0f;
                fArr[5] = f5;
                float f7 = -f4;
                fArr[6] = f7;
                fArr[7] = 0.0f;
                fArr[8] = f4;
                fArr[9] = 0.0f;
                fArr[10] = 0.0f;
                float f8 = f6 * 2.0f;
                fArr[11] = f8;
                fArr[12] = 0.0f;
                float f9 = f5 * 2.0f;
                fArr[13] = f9;
                float f10 = f7 * 2.0f;
                fArr[14] = f10;
                fArr[15] = 0.0f;
                float f11 = 2.0f * f4;
                fArr[16] = f11;
                fArr[17] = 0.0f;
                fArr[18] = f7;
                fArr[19] = f6;
                fArr[20] = f7;
                fArr[21] = f5;
                fArr[22] = f4;
                fArr[23] = f6;
                fArr[24] = f4;
                fArr[25] = f5;
                fArr[26] = 0.0f;
                float f12 = f6 * 3.0f;
                fArr[27] = f12;
                fArr[28] = 0.0f;
                float f13 = f5 * 3.0f;
                fArr[29] = f13;
                float f14 = f7 * 3.0f;
                fArr[30] = f14;
                fArr[31] = 0.0f;
                float f15 = 3.0f * f4;
                fArr[32] = f15;
                fArr[33] = 0.0f;
                fArr[34] = f10;
                fArr[35] = f6;
                fArr[36] = f10;
                fArr[37] = f5;
                fArr[38] = f11;
                fArr[39] = f6;
                fArr[40] = f11;
                fArr[41] = f5;
                fArr[42] = f7;
                fArr[43] = f8;
                fArr[44] = f7;
                fArr[45] = f9;
                fArr[46] = f4;
                fArr[47] = f8;
                fArr[48] = f4;
                fArr[49] = f9;
                fArr[50] = 0.0f;
                fArr[51] = f6 * 4.0f;
                fArr[52] = 0.0f;
                fArr[53] = f5 * 4.0f;
                fArr[54] = f7 * 4.0f;
                fArr[55] = 0.0f;
                fArr[56] = 4.0f * f4;
                fArr[57] = 0.0f;
                fArr[58] = f14;
                fArr[59] = f6;
                fArr[60] = f14;
                fArr[61] = f5;
                fArr[62] = f15;
                fArr[63] = f6;
                fArr[64] = f15;
                fArr[65] = f5;
                fArr[66] = f10;
                fArr[67] = f8;
                fArr[68] = f10;
                fArr[69] = f9;
                fArr[70] = f11;
                fArr[71] = f8;
                fArr[72] = f11;
                fArr[73] = f9;
                fArr[74] = f7;
                fArr[75] = f12;
                fArr[76] = f7;
                fArr[77] = f13;
                fArr[78] = f4;
                fArr[79] = f12;
                fArr[80] = f4;
                fArr[81] = f13;
            }
        }
    }

    public MediaEffectDilation() {
        this(1);
    }

    private static String getFragmentShader(int i) {
        if (i == 0 || i == 1) {
            return FRAGMENT_SHADER_1;
        }
        if (i != 2) {
            return i != 3 ? FRAGMENT_SHADER_4 : FRAGMENT_SHADER_3;
        }
        return FRAGMENT_SHADER_2;
    }

    public void setTexSize(int i, int i2) {
        this.mDrawer.setTexSize(i, i2);
    }

    public MediaEffectDilation(int i) {
        super(new MediaEffectDilationDrawer(getFragmentShader(i)));
        setTexSize(256, 256);
    }

    @Override // com.serenegiant.mediaeffect.MediaEffectGLESBase, com.serenegiant.mediaeffect.IEffect
    public MediaEffectDilation resize(int i, int i2) {
        super.resize(i, i2);
        setTexSize(i, i2);
        return this;
    }
}
