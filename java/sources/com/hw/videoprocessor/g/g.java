package com.hw.videoprocessor.g;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.glutils.ShaderConst;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes4.dex */
@TargetApi(16)
public class g {
    private static final float[] m = {-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, -1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FloatBuffer f12101a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12103e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12106h;
    private int i;
    private int j;
    private int k;
    private int l;
    private float[] b = new float[16];
    private float[] c = new float[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f12102d = new float[2];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12104f = -12345;

    public g(int i) {
        this.k = 0;
        this.k = i;
        float[] fArr = m;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f12101a = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(fArr).position(0);
        Matrix.setIdentityM(this.c, 0);
    }

    private int b(String str, String str2) {
        int iE;
        int iE2 = e(35633, str);
        if (iE2 == 0 || (iE = e(35632, str2)) == 0) {
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        a("glCreateProgram");
        if (iGlCreateProgram == 0) {
            return 0;
        }
        GLES20.glAttachShader(iGlCreateProgram, iE2);
        a("glAttachShader");
        GLES20.glAttachShader(iGlCreateProgram, iE);
        a("glAttachShader");
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return iGlCreateProgram;
        }
        GLES20.glDeleteProgram(iGlCreateProgram);
        return 0;
    }

    private int e(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        a("glCreateShader type=" + i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }

    public void a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        throw new RuntimeException(str + ": glError " + iGlGetError);
    }

    public void c(SurfaceTexture surfaceTexture, boolean z, float f2) {
        a("onDrawFrame start");
        surfaceTexture.getTransformMatrix(this.c);
        if (z) {
            float[] fArr = this.c;
            fArr[5] = -fArr[5];
            fArr[13] = 1.0f - fArr[13];
        }
        this.f12102d[0] = f2;
        GLES20.glUseProgram(this.f12103e);
        a("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_EXTERNAL_OES, this.f12104f);
        this.f12101a.position(0);
        GLES20.glVertexAttribPointer(this.i, 3, 5126, false, 20, (Buffer) this.f12101a);
        a("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(this.i);
        a("glEnableVertexAttribArray maPositionHandle");
        this.f12101a.position(3);
        GLES20.glVertexAttribPointer(this.j, 2, 5126, false, 20, (Buffer) this.f12101a);
        a("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(this.j);
        a("glEnableVertexAttribArray maTextureHandle");
        GLES20.glUniformMatrix4fv(this.f12106h, 1, false, this.c, 0);
        GLES20.glUniformMatrix4fv(this.f12105g, 1, false, this.b, 0);
        GLES20.glUniform2fv(this.l, 1, this.f12102d, 0);
        GLES20.glDrawArrays(5, 0, 4);
        a("glDrawArrays");
        GLES20.glFinish();
    }

    public int d() {
        return this.f12104f;
    }

    public void f() {
        int iB = b("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform vec2 vPercent;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  vec4 c = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(c.r * vPercent[0], c.g * vPercent[0], c.b * vPercent[0], 1.0);\n}\n");
        this.f12103e = iB;
        if (iB == 0) {
            throw new RuntimeException("failed creating program");
        }
        this.i = GLES20.glGetAttribLocation(iB, "aPosition");
        a("glGetAttribLocation aPosition");
        if (this.i == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.j = GLES20.glGetAttribLocation(this.f12103e, "aTextureCoord");
        a("glGetAttribLocation aTextureCoord");
        if (this.j == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        this.f12105g = GLES20.glGetUniformLocation(this.f12103e, "uMVPMatrix");
        a("glGetUniformLocation uMVPMatrix");
        if (this.f12105g == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
        this.f12106h = GLES20.glGetUniformLocation(this.f12103e, "uSTMatrix");
        a("glGetUniformLocation uSTMatrix");
        if (this.f12106h == -1) {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }
        this.l = GLES20.glGetUniformLocation(this.f12103e, "vPercent");
        a("glGetUniformLocation vPercent");
        if (this.l == -1) {
            throw new RuntimeException("Could not get attrib location for vPercent");
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i = iArr[0];
        this.f12104f = i;
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_EXTERNAL_OES, i);
        a("glBindTexture mTextureID");
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_EXTERNAL_OES, 10241, 9728.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_EXTERNAL_OES, 10240, 9729.0f);
        GLES20.glTexParameteri(ShaderConst.GL_TEXTURE_EXTERNAL_OES, 10242, 33071);
        GLES20.glTexParameteri(ShaderConst.GL_TEXTURE_EXTERNAL_OES, 10243, 33071);
        a("glTexParameter");
        Matrix.setIdentityM(this.b, 0);
        int i2 = this.k;
        if (i2 != 0) {
            Matrix.rotateM(this.b, 0, i2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
    }
}
