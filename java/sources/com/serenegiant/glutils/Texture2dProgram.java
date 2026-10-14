package com.serenegiant.glutils;

import android.opengl.GLES20;
import android.view.MotionEvent;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class Texture2dProgram {
    private static final boolean DEBUG = false;
    private static final String TAG = "Texture2dProgram";
    private float mColorAdjust;
    private final int[] mFlags;
    protected boolean mHasKernel2;
    private final float[] mKernel;
    private final float[] mLastTouchPosition;
    private int mProgramHandle;
    private final ProgramType mProgramType;
    private final float[] mSummedTouchPosition;
    private final Object mSync;
    private float mTexHeight;
    private float[] mTexOffset;
    private float mTexWidth;
    private int mTextureTarget;
    private final int maPositionLoc;
    private final int maTextureCoordLoc;
    private int muColorAdjustLoc;
    private int muFlagsLoc;
    private int muKernelLoc;
    private final int muMVPMatrixLoc;
    private final int muTexMatrixLoc;
    private int muTexOffsetLoc;
    private int muTouchPositionLoc;

    /* JADX INFO: renamed from: com.serenegiant.glutils.Texture2dProgram$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType;

        static {
            int[] iArr = new int[ProgramType.values().length];
            $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType = iArr;
            try {
                iArr[ProgramType.TEXTURE_2D.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_FILT3x3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_BW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_NIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_CHROMA_KEY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_SQUEEZE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_TWIRL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_TUNNEL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_BULGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_FISHEYE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_DENT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_MIRROR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_STRETCH.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_EXT_FILT3x3.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[ProgramType.TEXTURE_CUSTOM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public enum ProgramType {
        TEXTURE_2D,
        TEXTURE_FILT3x3,
        TEXTURE_CUSTOM,
        TEXTURE_EXT,
        TEXTURE_EXT_BW,
        TEXTURE_EXT_NIGHT,
        TEXTURE_EXT_CHROMA_KEY,
        TEXTURE_EXT_SQUEEZE,
        TEXTURE_EXT_TWIRL,
        TEXTURE_EXT_TUNNEL,
        TEXTURE_EXT_BULGE,
        TEXTURE_EXT_DENT,
        TEXTURE_EXT_FISHEYE,
        TEXTURE_EXT_STRETCH,
        TEXTURE_EXT_MIRROR,
        TEXTURE_EXT_FILT3x3
    }

    public Texture2dProgram(int i, String str) {
        this(ProgramType.TEXTURE_CUSTOM, i, ShaderConst.VERTEX_SHADER, str);
    }

    public int createTextureObject() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLHelper.checkGlError("glGenTextures");
        int i = iArr[0];
        GLES20.glBindTexture(this.mTextureTarget, i);
        GLHelper.checkGlError("glBindTexture " + i);
        GLES20.glTexParameterf(this.mTextureTarget, 10241, 9728.0f);
        GLES20.glTexParameterf(this.mTextureTarget, 10240, 9729.0f);
        GLES20.glTexParameteri(this.mTextureTarget, 10242, 33071);
        GLES20.glTexParameteri(this.mTextureTarget, 10243, 33071);
        GLHelper.checkGlError("glTexParameter");
        return i;
    }

    public void draw(float[] fArr, int i, FloatBuffer floatBuffer, int i2, int i3, int i4, int i5, float[] fArr2, int i6, FloatBuffer floatBuffer2, int i7, int i8) {
        float[] fArr3;
        GLHelper.checkGlError("draw start");
        GLES20.glUseProgram(this.mProgramHandle);
        GLHelper.checkGlError("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(this.mTextureTarget, i7);
        GLHelper.checkGlError("glBindTexture");
        synchronized (this.mSync) {
            GLES20.glUniformMatrix4fv(this.muMVPMatrixLoc, 1, false, fArr, i);
            GLHelper.checkGlError("glUniformMatrix4fv");
            int i9 = this.muTexMatrixLoc;
            if (i9 >= 0) {
                GLES20.glUniformMatrix4fv(i9, 1, false, fArr2, i6);
                GLHelper.checkGlError("glUniformMatrix4fv");
            }
            GLES20.glEnableVertexAttribArray(this.maPositionLoc);
            GLHelper.checkGlError("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.maPositionLoc, i4, 5126, false, i5, (Buffer) floatBuffer);
            GLHelper.checkGlError("glVertexAttribPointer");
            GLES20.glEnableVertexAttribArray(this.maTextureCoordLoc);
            GLHelper.checkGlError("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.maTextureCoordLoc, 2, 5126, false, i8, (Buffer) floatBuffer2);
            GLHelper.checkGlError("glVertexAttribPointer");
            int i10 = this.muKernelLoc;
            if (i10 >= 0) {
                if (this.mHasKernel2) {
                    GLES20.glUniform1fv(i10, 18, this.mKernel, 0);
                } else {
                    GLES20.glUniform1fv(i10, 9, this.mKernel, 0);
                }
                GLHelper.checkGlError("set kernel");
            }
            int i11 = this.muTexOffsetLoc;
            if (i11 >= 0 && (fArr3 = this.mTexOffset) != null) {
                GLES20.glUniform2fv(i11, 9, fArr3, 0);
            }
            int i12 = this.muColorAdjustLoc;
            if (i12 >= 0) {
                GLES20.glUniform1f(i12, this.mColorAdjust);
            }
            int i13 = this.muTouchPositionLoc;
            if (i13 >= 0) {
                GLES20.glUniform2fv(i13, 1, this.mSummedTouchPosition, 0);
            }
            int i14 = this.muFlagsLoc;
            if (i14 >= 0) {
                GLES20.glUniform1iv(i14, 4, this.mFlags, 0);
            }
        }
        internal_draw(i2, i3);
        GLES20.glDisableVertexAttribArray(this.maPositionLoc);
        GLES20.glDisableVertexAttribArray(this.maTextureCoordLoc);
        GLES20.glBindTexture(this.mTextureTarget, 0);
        GLES20.glUseProgram(0);
    }

    public int getProgramHandle() {
        return this.mProgramHandle;
    }

    public ProgramType getProgramType() {
        return this.mProgramType;
    }

    public void handleTouchEvent(MotionEvent motionEvent) {
        synchronized (this.mSync) {
            if (motionEvent.getAction() == 2) {
                if (this.mTexHeight != BitmapDescriptorFactory.HUE_RED && this.mTexWidth != BitmapDescriptorFactory.HUE_RED) {
                    float[] fArr = this.mSummedTouchPosition;
                    fArr[0] = fArr[0] + (((motionEvent.getX() - this.mLastTouchPosition[0]) * 2.0f) / this.mTexWidth);
                    float[] fArr2 = this.mSummedTouchPosition;
                    float f2 = fArr2[1];
                    float y = motionEvent.getY();
                    float[] fArr3 = this.mLastTouchPosition;
                    fArr2[1] = f2 + (((y - fArr3[1]) * 2.0f) / (-this.mTexHeight));
                    fArr3[0] = motionEvent.getX();
                    this.mLastTouchPosition[1] = motionEvent.getY();
                }
            } else if (motionEvent.getAction() == 0) {
                this.mLastTouchPosition[0] = motionEvent.getX();
                this.mLastTouchPosition[1] = motionEvent.getY();
            }
        }
    }

    protected void initLocation(float[] fArr, float[] fArr2) {
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramHandle, "uKernel");
        this.muKernelLoc = iGlGetUniformLocation;
        if (iGlGetUniformLocation < 0) {
            this.muKernelLoc = -1;
            this.muTexOffsetLoc = -1;
        } else {
            int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.mProgramHandle, "uTexOffset");
            this.muTexOffsetLoc = iGlGetUniformLocation2;
            if (iGlGetUniformLocation2 < 0) {
                this.muTexOffsetLoc = -1;
            }
            if (fArr == null) {
                fArr = ShaderConst.KERNEL_NULL;
            }
            setKernel(fArr, BitmapDescriptorFactory.HUE_RED);
            setTexSize(256, 256);
        }
        if (fArr2 != null) {
            setKernel2(fArr2);
        }
        int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(this.mProgramHandle, "uColorAdjust");
        this.muColorAdjustLoc = iGlGetUniformLocation3;
        if (iGlGetUniformLocation3 < 0) {
            this.muColorAdjustLoc = -1;
        }
        int iGlGetUniformLocation4 = GLES20.glGetUniformLocation(this.mProgramHandle, "uPosition");
        this.muTouchPositionLoc = iGlGetUniformLocation4;
        if (iGlGetUniformLocation4 < 0) {
            this.muTouchPositionLoc = -1;
        }
        int iGlGetUniformLocation5 = GLES20.glGetUniformLocation(this.mProgramHandle, "uFlags");
        this.muFlagsLoc = iGlGetUniformLocation5;
        if (iGlGetUniformLocation5 < 0) {
            this.muFlagsLoc = -1;
        }
    }

    protected void internal_draw(int i, int i2) {
        GLES20.glDrawArrays(5, i, i2);
        GLHelper.checkGlError("glDrawArrays");
    }

    public void release() {
        GLES20.glDeleteProgram(this.mProgramHandle);
        this.mProgramHandle = -1;
    }

    public void setColorAdjust(float f2) {
        synchronized (this.mSync) {
            this.mColorAdjust = f2;
        }
    }

    public void setFlag(int i, int i2) {
        if (i < 0 || i >= this.mFlags.length) {
            return;
        }
        synchronized (this.mSync) {
            this.mFlags[i] = i2;
        }
    }

    public void setFlags(int[] iArr) {
        int iMin = Math.min(4, iArr != null ? iArr.length : 0);
        if (iMin > 0) {
            synchronized (this.mSync) {
                System.arraycopy(iArr, 0, this.mFlags, 0, iMin);
            }
        }
    }

    public void setKernel(float[] fArr, float f2) {
        if (fArr.length >= 9) {
            System.arraycopy(fArr, 0, this.mKernel, 0, 9);
            this.mColorAdjust = f2;
            return;
        }
        throw new IllegalArgumentException("Kernel size is " + fArr.length + " vs. 9");
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    public void setKernel2(float[] fArr) {
        boolean z;
        synchronized (this.mSync) {
            if (fArr != null) {
                try {
                    if (fArr.length == 9) {
                        z = true;
                    } else {
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                z = false;
            }
            this.mHasKernel2 = z;
            if (z) {
                System.arraycopy(fArr, 0, this.mKernel, 9, 9);
            }
        }
    }

    public void setTexSize(int i, int i2) {
        float f2 = i2;
        this.mTexHeight = f2;
        float f3 = i;
        this.mTexWidth = f3;
        float f4 = 1.0f / f3;
        float f5 = 1.0f / f2;
        synchronized (this.mSync) {
            float f6 = -f4;
            float f7 = -f5;
            this.mTexOffset = new float[]{f6, f7, BitmapDescriptorFactory.HUE_RED, f7, f4, f7, f6, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, BitmapDescriptorFactory.HUE_RED, f6, f5, BitmapDescriptorFactory.HUE_RED, f5, f4, f5};
        }
    }

    public Texture2dProgram(int i, String str, String str2) {
        this(ProgramType.TEXTURE_CUSTOM, i, str, str2);
    }

    public Texture2dProgram(ProgramType programType) {
        this(programType, 0, null, null);
    }

    protected Texture2dProgram(ProgramType programType, int i, String str, String str2) {
        this.mSync = new Object();
        this.mKernel = new float[18];
        this.mSummedTouchPosition = new float[2];
        this.mLastTouchPosition = new float[2];
        this.mFlags = new int[4];
        this.mProgramType = programType;
        switch (AnonymousClass1.$SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType[programType.ordinal()]) {
            case 1:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_2D;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_2D);
                break;
            case 2:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_2D;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_FILT3x3);
                break;
            case 3:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT);
                break;
            case 4:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_BW);
                break;
            case 5:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_NIGHT);
                break;
            case 6:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_CHROMA_KEY);
                break;
            case 7:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_SQUEEZE);
                break;
            case 8:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_TWIRL);
                break;
            case 9:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_TUNNEL);
                break;
            case 10:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_BULGE);
                break;
            case 11:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_FISHEYE);
                break;
            case 12:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_DENT);
                break;
            case 13:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_MIRROR);
                break;
            case 14:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_STRETCH);
                break;
            case 15:
                this.mTextureTarget = ShaderConst.GL_TEXTURE_EXTERNAL_OES;
                this.mProgramHandle = GLHelper.loadShader(ShaderConst.VERTEX_SHADER, ShaderConst.FRAGMENT_SHADER_EXT_FILT3x3);
                break;
            case 16:
                if (i != 3553 && i != 36197) {
                    throw new IllegalArgumentException("target should be GL_TEXTURE_2D or GL_TEXTURE_EXTERNAL_OES");
                }
                this.mTextureTarget = i;
                this.mProgramHandle = GLHelper.loadShader(str, str2);
                break;
                break;
            default:
                throw new RuntimeException("Unhandled type " + programType);
        }
        int i2 = this.mProgramHandle;
        if (i2 != 0) {
            int iGlGetAttribLocation = GLES20.glGetAttribLocation(i2, "aPosition");
            this.maPositionLoc = iGlGetAttribLocation;
            GLHelper.checkLocation(iGlGetAttribLocation, "aPosition");
            int iGlGetAttribLocation2 = GLES20.glGetAttribLocation(this.mProgramHandle, "aTextureCoord");
            this.maTextureCoordLoc = iGlGetAttribLocation2;
            GLHelper.checkLocation(iGlGetAttribLocation2, "aTextureCoord");
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramHandle, "uMVPMatrix");
            this.muMVPMatrixLoc = iGlGetUniformLocation;
            GLHelper.checkLocation(iGlGetUniformLocation, "uMVPMatrix");
            this.muTexMatrixLoc = GLES20.glGetUniformLocation(this.mProgramHandle, "uTexMatrix");
            initLocation(null, null);
            return;
        }
        throw new RuntimeException("Unable to create program");
    }
}
