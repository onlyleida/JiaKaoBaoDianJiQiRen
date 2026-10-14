package com.amap.api.mapcore.util;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CrossOverlay;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.serenegiant.glutils.EGLBase;
import com.serenegiant.glutils.ShaderConst;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class ia {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IAMapDelegate f10924a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ExecutorService f10927f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10929h;
    private volatile EGLContext m;
    private volatile EGLConfig n;
    private h2.g r;
    private FloatBuffer u;
    private FloatBuffer v;
    private c w;
    private CrossOverlay.GenerateCrossImageListener x;
    private int b = 0;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10925d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BlockingQueue<Runnable> f10926e = new LinkedBlockingQueue();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f10928g = false;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private boolean l = false;
    private EGLDisplay o = EGL14.EGL_NO_DISPLAY;
    private EGLContext p = EGL14.EGL_NO_CONTEXT;
    private EGLSurface q = EGL14.EGL_NO_SURFACE;
    float[] s = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
    float[] t = {-1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, -1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED};

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ia.this.p();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ia.this.l = false;
                if (ia.this.f10929h) {
                    if (!ia.this.l) {
                        ia.this.l = true;
                        if (ia.this.x != null) {
                            ia.this.x.onGenerateComplete(null, -1);
                        }
                    }
                    if (ia.this.p != EGL14.EGL_NO_CONTEXT) {
                        EGL14.eglDestroyContext(ia.this.o, ia.this.p);
                        EGL14.eglDestroySurface(ia.this.o, ia.this.q);
                        ia.this.p = null;
                    }
                    if (ia.this.o != EGL14.EGL_NO_DISPLAY) {
                        EGL14.eglTerminate(ia.this.o);
                        ia.this.o = null;
                    }
                    ia.this.p = EGL14.EGL_NO_CONTEXT;
                    ia.this.o = EGL14.EGL_NO_DISPLAY;
                    return;
                }
                ia.this.i = 0;
                int i = 0;
                while (!ia.this.f10929h && ia.this.i < 5 && i < 50) {
                    i++;
                    try {
                        Thread.sleep(16L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    if (!ia.this.f10928g) {
                        if (ia.this.x != null) {
                            ia.this.x.onGenerateComplete(null, -1);
                        }
                        if (!ia.this.l) {
                            ia.this.l = true;
                            if (ia.this.x != null) {
                                ia.this.x.onGenerateComplete(null, -1);
                            }
                        }
                        if (ia.this.p != EGL14.EGL_NO_CONTEXT) {
                            EGL14.eglDestroyContext(ia.this.o, ia.this.p);
                            EGL14.eglDestroySurface(ia.this.o, ia.this.q);
                            ia.this.p = null;
                        }
                        if (ia.this.o != EGL14.EGL_NO_DISPLAY) {
                            EGL14.eglTerminate(ia.this.o);
                            ia.this.o = null;
                        }
                        ia.this.p = EGL14.EGL_NO_CONTEXT;
                        ia.this.o = EGL14.EGL_NO_DISPLAY;
                        return;
                    }
                    GLES20.glViewport(0, 0, ia.this.c, ia.this.f10925d);
                    GLES20.glClear(16640);
                    ia.this.u();
                }
                if (!ia.this.l) {
                    ia.this.l = true;
                    if (ia.this.x != null) {
                        ia.this.x.onGenerateComplete(null, -1);
                    }
                }
                if (ia.this.p != EGL14.EGL_NO_CONTEXT) {
                    EGL14.eglDestroyContext(ia.this.o, ia.this.p);
                    EGL14.eglDestroySurface(ia.this.o, ia.this.q);
                    ia.this.p = null;
                }
                if (ia.this.o != EGL14.EGL_NO_DISPLAY) {
                    EGL14.eglTerminate(ia.this.o);
                    ia.this.o = null;
                }
                ia.this.p = EGL14.EGL_NO_CONTEXT;
                ia.this.o = EGL14.EGL_NO_DISPLAY;
            } catch (Throwable th) {
                if (!ia.this.l) {
                    ia.this.l = true;
                    if (ia.this.x != null) {
                        ia.this.x.onGenerateComplete(null, -1);
                    }
                }
                if (ia.this.p != EGL14.EGL_NO_CONTEXT) {
                    EGL14.eglDestroyContext(ia.this.o, ia.this.p);
                    EGL14.eglDestroySurface(ia.this.o, ia.this.q);
                    ia.this.p = null;
                }
                if (ia.this.o != EGL14.EGL_NO_DISPLAY) {
                    EGL14.eglTerminate(ia.this.o);
                    ia.this.o = null;
                }
                ia.this.p = EGL14.EGL_NO_CONTEXT;
                ia.this.o = EGL14.EGL_NO_DISPLAY;
                throw th;
            }
        }
    }

    public interface c {
        int getTextureID();
    }

    public ia(IAMapDelegate iAMapDelegate) {
        this.f10927f = null;
        this.f10929h = false;
        this.f10924a = iAMapDelegate;
        this.f10929h = false;
        this.f10927f = new ThreadPoolExecutor(1, Runtime.getRuntime().availableProcessors() * 2, 1, TimeUnit.SECONDS, this.f10926e, new e3("AMapPboRenderThread"), new ThreadPoolExecutor.AbortPolicy());
    }

    private void i(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.o = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            i("eglGetDisplay failed");
            return;
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            this.o = null;
            i("eglInitialize failed");
            return;
        }
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.o, this.n, this.m, new int[]{EGLBase.EGL_CONTEXT_CLIENT_VERSION, 2, 12344}, 0);
        this.p = eGLContextEglCreateContext;
        if (eGLContextEglCreateContext == EGL14.EGL_NO_CONTEXT) {
            i("eglCreateContext failed");
            return;
        }
        EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.o, this.n, new int[]{12375, this.c, 12374, this.f10925d, 12344}, 0);
        this.q = eGLSurfaceEglCreatePbufferSurface;
        if (eGLSurfaceEglCreatePbufferSurface == EGL14.EGL_NO_SURFACE) {
            i("eglCreatePbufferSurface failed");
        } else {
            if (!EGL14.eglMakeCurrent(this.o, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, this.p)) {
                i("eglMakeCurrent failed");
                return;
            }
            GLES20.glFlush();
            i("initOpenGL complete");
            this.f10928g = true;
        }
    }

    private void s() {
        IAMapDelegate iAMapDelegate = this.f10924a;
        if (iAMapDelegate != null) {
            this.r = (h2.g) iAMapDelegate.getGLShader(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        try {
            if (this.f10929h) {
                return;
            }
            c cVar = this.w;
            if (cVar == null) {
                i("renderTextureAndReadPixel failed textureHelper is null");
                return;
            }
            if (cVar != null) {
                this.b = cVar.getTextureID();
            }
            if (this.b <= 0) {
                i("renderTextureAndReadPixel failed mTextureID is <= 0 mTextureID " + this.b);
                return;
            }
            i("renderTextureAndReadPixel  mTextureID is  mTextureID " + this.b);
            h2.g gVar = this.r;
            if (gVar == null || gVar.i()) {
                s();
            }
            if (this.u == null) {
                this.u = r3.E(this.t);
            }
            if (this.v == null) {
                this.v = r3.E(new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
            }
            this.r.b();
            GLES20.glDisable(3042);
            GLES20.glBlendFunc(1, 771);
            GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, this.b);
            GLES20.glEnableVertexAttribArray(this.r.f10863f);
            GLES20.glVertexAttribPointer(this.r.f10863f, 3, 5126, false, 12, (Buffer) this.u);
            GLES20.glEnableVertexAttribArray(this.r.f10864g);
            GLES20.glVertexAttribPointer(this.r.f10864g, 2, 5126, false, 8, (Buffer) this.v);
            Matrix.setIdentityM(this.s, 0);
            Matrix.scaleM(this.s, 0, 1.0f, 1.0f, 1.0f);
            GLES20.glUniformMatrix4fv(this.r.f10862e, 1, false, this.s, 0);
            GLES20.glDrawArrays(6, 0, 4);
            GLES20.glDisableVertexAttribArray(this.r.f10863f);
            GLES20.glDisableVertexAttribArray(this.r.f10864g);
            GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
            GLES20.glUseProgram(0);
            GLES20.glDisable(3042);
            z2.i("drawTexure");
            GLES20.glFinish();
            int i = this.i + 1;
            this.i = i;
            if (i == 5) {
                w();
            }
        } catch (Throwable unused) {
            CrossOverlay.GenerateCrossImageListener generateCrossImageListener = this.x;
            if (generateCrossImageListener != null) {
                generateCrossImageListener.onGenerateComplete(null, -1);
            }
        }
    }

    private void w() {
        if (this.x != null) {
            if (this.j == 0) {
                this.j = this.c;
            }
            if (this.k == 0) {
                this.k = this.f10925d;
            }
            int i = this.f10925d;
            int i2 = this.k;
            this.x.onGenerateComplete(r3.n(0, i - i2, this.j, i2), this.f10928g ? 0 : -1);
            this.l = true;
        }
    }

    public void d() {
        ExecutorService executorService = this.f10927f;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.f10927f.execute(new b());
    }

    public void e(int i, int i2) {
        this.c = i;
        this.f10925d = i2;
        this.m = EGL14.eglGetCurrentContext();
        if (this.m == EGL14.EGL_NO_CONTEXT) {
            i("eglGetCurrentContext failed");
            return;
        }
        EGLDisplay eGLDisplayEglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
        if (eGLDisplayEglGetCurrentDisplay == EGL14.EGL_NO_DISPLAY) {
            i("sharedEglDisplay failed");
            return;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglGetConfigs(eGLDisplayEglGetCurrentDisplay, eGLConfigArr, 0, 1, new int[1], 0)) {
            i("eglGetConfigs failed");
            return;
        }
        this.n = eGLConfigArr[0];
        ExecutorService executorService = this.f10927f;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.f10927f.execute(new a());
    }

    public void f(c cVar) {
        this.w = cVar;
    }

    public void h(CrossOverlay.GenerateCrossImageListener generateCrossImageListener) {
        this.x = generateCrossImageListener;
    }

    public void k() {
        this.f10929h = true;
        FloatBuffer floatBuffer = this.v;
        if (floatBuffer != null) {
            floatBuffer.clear();
            this.v = null;
        }
        FloatBuffer floatBuffer2 = this.u;
        if (floatBuffer2 != null) {
            floatBuffer2.clear();
            this.u = null;
        }
        this.w = null;
        this.f10927f.shutdownNow();
    }

    public void l(int i, int i2) {
        this.j = i;
        this.k = i2;
    }

    public boolean o() {
        return this.f10929h;
    }
}
