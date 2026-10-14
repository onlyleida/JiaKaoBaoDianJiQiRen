package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptor;
import com.serenegiant.glutils.ShaderConst;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class v {
    public static int l = 200;
    private BitmapDescriptor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float[] f11251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FloatBuffer f11252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ShortBuffer f11253f;
    private h2.a j;
    private h2 k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f11250a = false;
    private boolean b = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11254g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f11255h = 0;
    int i = 0;

    public v(float[] fArr, y yVar) {
        this.f11251d = null;
        this.f11251d = fArr;
    }

    private void b(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        if (this.f11254g == 0) {
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            this.f11254g = iArr[0];
        }
        if (this.f11254g == 0) {
            return;
        }
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, this.f11254g);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10241, 9728.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10240, 9729.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10242, 33071.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10243, 33071.0f);
        GLUtils.texImage2D(ShaderConst.GL_TEXTURE_2D, 0, bitmap, 0);
        if (this.f11254g != 0) {
            this.b = true;
        }
    }

    public static synchronized void e(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            Log.e("amap", str + ": glError " + iGlGetError);
            throw new RuntimeException(str + ": glError " + iGlGetError);
        }
    }

    private void f(float[] fArr) {
        if (fArr == null) {
            return;
        }
        if (this.f11252e == null) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * l * 4);
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            this.f11252e = byteBufferAllocateDirect.asFloatBuffer();
        }
        this.f11252e.clear();
        for (int i = 0; i < l; i++) {
            int i2 = 0;
            for (float f2 : fArr) {
                if (i2 % 6 == 3) {
                    this.f11252e.put(i);
                } else {
                    this.f11252e.put(f2);
                }
                i2++;
            }
        }
        this.f11252e.position(0);
        if (this.f11253f == null) {
            ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(l * 6 * 2);
            byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
            this.f11253f = byteBufferAllocateDirect2.asShortBuffer();
            short[] sArr = new short[l * 6];
            for (int i3 = 0; i3 < l; i3++) {
                int i4 = i3 * 6;
                int i5 = i3 * 4;
                short s = (short) (i5 + 0);
                sArr[i4 + 0] = s;
                sArr[i4 + 1] = (short) (i5 + 1);
                short s2 = (short) (i5 + 2);
                sArr[i4 + 2] = s2;
                sArr[i4 + 3] = s;
                sArr[i4 + 4] = s2;
                sArr[i4 + 5] = (short) (i5 + 3);
            }
            this.f11253f.put(sArr);
            this.f11253f.flip();
        }
        this.f11250a = true;
    }

    private void k() {
        if (this.f11255h == 0) {
            int[] iArr = new int[2];
            GLES20.glGenBuffers(2, iArr, 0);
            int i = iArr[0];
            this.f11255h = i;
            this.i = iArr[1];
            GLES20.glBindBuffer(34962, i);
            GLES20.glBufferData(34962, this.f11252e.limit() * 4, this.f11252e, 35044);
            GLES20.glBindBuffer(34963, this.i);
            GLES20.glBufferData(34963, l * 6 * 2, this.f11253f, 35044);
            e("bindVbo");
            this.f11252e.clear();
            this.f11252e = null;
        }
    }

    private void l() {
        try {
            h2 h2Var = this.k;
            if (h2Var != null) {
                this.j = (h2.a) h2Var.b(4);
            }
        } catch (Throwable unused) {
            l = 1;
            h2 h2Var2 = this.k;
            if (h2Var2 != null) {
                this.j = (h2.a) h2Var2.b(4);
            }
        }
    }

    public void a() {
        float[] fArr = this.f11251d;
        if (fArr == null || this.f11250a) {
            return;
        }
        f(fArr);
    }

    public void c(h2 h2Var) {
        this.k = h2Var;
    }

    public void d(BitmapDescriptor bitmapDescriptor) {
        this.c = bitmapDescriptor;
    }

    public void g(float[] fArr, float[] fArr2, float[] fArr3, float f2, float f3, float f4, float f5, int i) {
        BitmapDescriptor bitmapDescriptor;
        if (!this.b && (bitmapDescriptor = this.c) != null) {
            b(bitmapDescriptor.getBitmap());
        }
        if (this.f11254g == 0) {
            return;
        }
        h2.a aVar = this.j;
        if (aVar == null || aVar.i()) {
            l();
        }
        k();
        GLES20.glUseProgram(this.j.f10808a);
        GLES20.glUniform4f(this.j.k, f2, f3, f4, f5);
        GLES20.glUniform3fv(this.j.j, i, fArr3, 0);
        GLES20.glDisable(2929);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, this.f11254g);
        GLES20.glEnableVertexAttribArray(this.j.f10845g);
        GLES20.glBindBuffer(34962, this.f11255h);
        GLES20.glVertexAttribPointer(this.j.f10845g, 4, 5126, false, 24, 0);
        GLES20.glEnableVertexAttribArray(this.j.i);
        GLES20.glVertexAttribPointer(this.j.i, 2, 5126, false, 24, 16);
        GLES20.glUniformMatrix4fv(this.j.f10846h, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.j.l, 1, false, fArr2, 0);
        GLES20.glBindBuffer(34963, this.i);
        GLES20.glDrawElements(4, i * 6, 5123, 0);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glDisableVertexAttribArray(this.j.f10845g);
        GLES20.glDisableVertexAttribArray(this.j.i);
        GLES20.glUseProgram(0);
    }

    public boolean h() {
        return this.f11250a;
    }

    public void i() {
        FloatBuffer floatBuffer = this.f11252e;
        if (floatBuffer != null) {
            floatBuffer.clear();
        }
        ShortBuffer shortBuffer = this.f11253f;
        if (shortBuffer != null) {
            shortBuffer.clear();
        }
        if (this.c != null) {
            this.c = null;
        }
        GLES20.glDeleteBuffers(2, new int[]{this.f11255h, this.i}, 0);
        int i = this.f11254g;
        if (i != 0) {
            GLES20.glDeleteTextures(1, new int[]{i}, 0);
        }
        this.f11255h = 0;
        this.i = 0;
        this.f11251d = null;
        this.f11250a = false;
        this.b = false;
        this.f11255h = 0;
        this.i = 0;
        this.k = null;
    }

    public boolean j() {
        return this.k != null;
    }
}
