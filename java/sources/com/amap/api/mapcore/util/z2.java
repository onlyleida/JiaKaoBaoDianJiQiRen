package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.opengl.GLES20;
import android.util.Log;
import android.view.SurfaceHolder;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.base.amap.api.mapcore.IGLSurfaceView;
import com.autonavi.base.amap.mapcore.AMapNativeRenderer;
import com.serenegiant.glutils.EGLBase;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes5.dex */
public class z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float[] f11424a = new float[1024];

    public static class b extends x2 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static int f11425h = 4;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f11426a;
        protected int b;
        protected int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected int f11427d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected int f11428e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected int f11429f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int[] f11430g = new int[1];

        public b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f11426a = i;
            this.b = i2;
            this.c = i3;
            this.f11427d = i4;
            this.f11428e = i5;
            this.f11429f = i6;
        }

        private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.f11430g) ? this.f11430g[0] : i2;
        }

        private d b(EGL10 egl10, EGLDisplay eGLDisplay) {
            d dVar = new d();
            int[] iArrD = d(2, true);
            dVar.f11431a = iArrD;
            egl10.eglChooseConfig(eGLDisplay, iArrD, null, 0, dVar.b);
            if (dVar.b[0] <= 0) {
                int[] iArrD2 = d(2, false);
                dVar.f11431a = iArrD2;
                egl10.eglChooseConfig(eGLDisplay, iArrD2, null, 0, dVar.b);
                if (dVar.b[0] <= 0) {
                    return null;
                }
            }
            return dVar;
        }

        private int[] d(int i, boolean z) {
            if (i == 2) {
                return new int[]{12324, this.f11426a, 12323, this.b, 12322, this.c, 12321, this.f11427d, 12325, this.f11428e, 12326, this.f11429f, 12338, z ? 1 : 0, 12352, f11425h, 12344};
            }
            return z ? new int[]{12324, this.f11426a, 12323, this.b, 12322, this.c, 12338, 1, 12344} : new int[]{12324, this.f11426a, 12323, this.b, 12322, this.c, 12344};
        }

        public EGLConfig c(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int iA = a(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int iA2 = a(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (iA >= this.f11428e && iA2 >= this.f11429f) {
                    int iA3 = a(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int iA4 = a(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int iA5 = a(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int iA6 = a(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (iA3 == this.f11426a && iA4 == this.b && iA5 == this.c && iA6 == this.f11427d) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser, com.amap.api.mapcore.util.y9.f
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr;
            int[] iArr2;
            d dVarB = b(egl10, eGLDisplay);
            if (dVarB == null || (iArr = dVarB.f11431a) == null) {
                return null;
            }
            int[] iArr3 = dVarB.b;
            EGLConfig[] eGLConfigArr = new EGLConfig[iArr3[0]];
            egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, iArr3[0], iArr3);
            EGLConfig eGLConfigC = c(egl10, eGLDisplay, eGLConfigArr);
            if (eGLConfigC != null) {
                return eGLConfigC;
            }
            this.f11426a = 8;
            this.b = 8;
            this.c = 8;
            d dVarB2 = b(egl10, eGLDisplay);
            if (dVarB2 == null || (iArr2 = dVarB2.f11431a) == null) {
                return eGLConfigC;
            }
            int[] iArr4 = dVarB2.b;
            EGLConfig[] eGLConfigArr2 = new EGLConfig[iArr4[0]];
            egl10.eglChooseConfig(eGLDisplay, iArr2, eGLConfigArr2, iArr4[0], iArr4);
            return c(egl10, eGLDisplay, eGLConfigArr2);
        }
    }

    public static class c extends y2 {
        @Override // android.opengl.GLSurfaceView.EGLContextFactory, com.amap.api.mapcore.util.y9.g
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            try {
                return egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{EGLBase.EGL_CONTEXT_CLIENT_VERSION, 2, 12344});
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory, com.amap.api.mapcore.util.y9.g
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f11431a;
        public int[] b;

        private d() {
            this.f11431a = null;
            this.b = new int[1];
        }
    }

    private static void a(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, int i3, int i4, float[] fArr) {
        if (f2 == BitmapDescriptorFactory.HUE_RED || eVar == null) {
            return;
        }
        eVar.b();
        GLES20.glEnable(3042);
        GLES20.glDisable(2929);
        GLES20.glBlendFunc(770, 771);
        float[] fArr2 = {Color.red(i2) / 255.0f, Color.green(i2) / 255.0f, Color.blue(i2) / 255.0f, Color.alpha(i2) / 255.0f};
        GLES20.glLineWidth(f2);
        GLES20.glEnableVertexAttribArray(eVar.f10860f);
        GLES20.glVertexAttribPointer(eVar.f10860f, 3, 5126, false, 0, (Buffer) floatBuffer);
        GLES20.glUniform4fv(eVar.f10861g, 1, fArr2, 0);
        GLES20.glUniformMatrix4fv(eVar.f10859e, 1, false, fArr, 0);
        GLES20.glDrawArrays(i, i3, i4);
        GLES20.glDisableVertexAttribArray(eVar.f10860f);
        GLES20.glDisable(3042);
        GLES20.glUseProgram(0);
    }

    private static void b(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, int i3, float[] fArr) {
        a(eVar, 2, i2, floatBuffer, f2, 1, i3 - 1, fArr);
    }

    public static void c(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, int i3, float[] fArr, float f3, int i4, float f4, boolean z) {
        if (!z || i4 == -1) {
            b(eVar, i, i2, floatBuffer, f2, i3, fArr);
        } else {
            e(eVar, i, i2, floatBuffer, f2 * f3, i3, fArr, i4, f4);
        }
    }

    public static void d(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, int i3, float[] fArr, float f3, int i4, float f4, boolean z, boolean z2) {
        j(eVar, 6, i, floatBuffer, 1.0f, i3, fArr);
        if (z2) {
            c(eVar, i, i2, floatBuffer, f2, i3, fArr, f3, i4, f4, z);
        }
    }

    private static void e(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, int i3, float[] fArr, int i4, float f3) {
        try {
            float fAlpha = Color.alpha(i2) / 255.0f;
            float fRed = Color.red(i2) / 255.0f;
            float fGreen = Color.green(i2) / 255.0f;
            float fBlue = Color.blue(i2) / 255.0f;
            if (i3 < 3) {
                return;
            }
            int i5 = (i3 - 1) * 3;
            if (floatBuffer != null && floatBuffer.limit() >= i5 + 3) {
                float[] fArr2 = f11424a;
                if (fArr2 == null || fArr2.length < i5) {
                    f11424a = new float[i5];
                }
                for (int i6 = 0; i6 < i5; i6++) {
                    f11424a[i6] = floatBuffer.get(i6 + 3);
                }
                AMapNativeRenderer.nativeDrawLineByTextureID(f11424a, i5, f2, i4, f3, fRed, fGreen, fBlue, fAlpha, BitmapDescriptorFactory.HUE_RED, true, true, false, fArr, 3, 0, true);
            }
        } catch (Throwable th) {
            e6.r(th, "GlesUtility", "drawCircleLine");
        }
    }

    public static void f(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, FloatBuffer floatBuffer2, int i3, int i4, float[] fArr, int i5, float f3, float f4, int i6, int i7, boolean z) {
        if (!z || i5 == -1) {
            j(eVar, 2, i2, floatBuffer, f2, i3, fArr);
            return;
        }
        float f5 = f4 * f2;
        try {
            float fAlpha = Color.alpha(i2) / 255.0f;
            float fRed = Color.red(i2) / 255.0f;
            float fGreen = Color.green(i2) / 255.0f;
            float fBlue = Color.blue(i2) / 255.0f;
            if (i3 < 3) {
                return;
            }
            int i8 = i3 * 3;
            if (floatBuffer != null && floatBuffer.limit() >= i8) {
                float[] fArr2 = f11424a;
                if (fArr2 == null || fArr2.length < i8) {
                    f11424a = new float[i8];
                }
                floatBuffer.get(f11424a, 0, i8);
                AMapNativeRenderer.nativeDrawLineByTextureID(f11424a, i8, f5, i5, f3, fRed, fGreen, fBlue, fAlpha, BitmapDescriptorFactory.HUE_RED, false, true, false, fArr, i6, i7, true);
            }
        } catch (Throwable unused) {
            j(eVar, 2, i2, floatBuffer, f2, i3, fArr);
        }
    }

    public static void g(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, FloatBuffer floatBuffer2, int i3, int i4, float[] fArr, int i5, float f3, float f4, int i6, int i7, boolean z, boolean z2) {
        j(eVar, 4, i, floatBuffer2, 1.0f, i4, fArr);
        if (z2) {
            f(eVar, i, i2, floatBuffer, f2, floatBuffer2, i3, i4, fArr, i5, f3, f4, i6, i7, z);
        }
    }

    public static void h(IGLSurfaceView iGLSurfaceView, int i, int i2, int i3, int i4, int i5, int i6) {
        SurfaceHolder holder;
        if (i4 > 0 && (holder = iGLSurfaceView.getHolder()) != null) {
            holder.setFormat(-3);
        }
        iGLSurfaceView.setEGLContextFactory(new c());
        iGLSurfaceView.setEGLConfigChooser(new b(i, i2, i3, i4, i5, i6));
    }

    public static void i(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        Log.e("amap", str + ": glError " + iGlGetError);
        throw new RuntimeException(str + ": glError " + iGlGetError);
    }

    private static void j(h2.e eVar, int i, int i2, FloatBuffer floatBuffer, float f2, int i3, float[] fArr) {
        a(eVar, i, i2, floatBuffer, f2, 0, i3, fArr);
    }
}
