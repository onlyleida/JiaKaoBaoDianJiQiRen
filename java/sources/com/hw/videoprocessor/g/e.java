package com.hw.videoprocessor.g;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes4.dex */
@TargetApi(16)
public class e implements SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EGL10 f12092a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SurfaceTexture f12094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Surface f12095f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f12097h;
    private g i;
    private EGLDisplay b = null;
    private EGLContext c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EGLSurface f12093d = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f12096g = new Object();
    private int j = 0;

    public e() {
        e();
    }

    private void e() {
        g gVar = new g(this.j);
        this.i = gVar;
        gVar.f();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.i.d());
        this.f12094e = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        this.f12095f = new Surface(this.f12094e);
    }

    public void a() {
        synchronized (this.f12096g) {
            while (!this.f12097h) {
                try {
                    this.f12096g.wait(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                    if (!this.f12097h) {
                        throw new RuntimeException("Surface frame wait timed out");
                    }
                } catch (InterruptedException e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.f12097h = false;
        }
        this.i.a("before updateTexImage");
        this.f12094e.updateTexImage();
    }

    public void b(boolean z, float f2) {
        this.i.c(this.f12094e, z, f2);
    }

    public Surface c() {
        return this.f12095f;
    }

    public void d() {
        EGL10 egl10 = this.f12092a;
        if (egl10 != null) {
            if (egl10.eglGetCurrentContext().equals(this.c)) {
                EGL10 egl11 = this.f12092a;
                EGLDisplay eGLDisplay = this.b;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                egl11.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            }
            this.f12092a.eglDestroySurface(this.b, this.f12093d);
            this.f12092a.eglDestroyContext(this.b, this.c);
        }
        this.f12095f.release();
        this.b = null;
        this.c = null;
        this.f12093d = null;
        this.f12092a = null;
        this.i = null;
        this.f12095f = null;
        this.f12094e = null;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.f12096g) {
            if (this.f12097h) {
                throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
            }
            this.f12097h = true;
            this.f12096g.notifyAll();
        }
    }
}
