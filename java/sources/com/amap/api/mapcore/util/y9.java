package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLDebugHelper;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TextureView;
import com.amap.api.maps.MapsInitializer;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.serenegiant.glutils.EGLBase;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"NewApi"})
public class y9 extends TextureView implements TextureView.SurfaceTextureListener {
    private static final k l = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<y9> f11388a;
    private j b;
    private GLSurfaceView.Renderer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f11390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g f11391f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private h f11392g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private l f11393h;
    private int i;
    private int j;
    private boolean k;

    private abstract class b implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int[] f11394a;

        public b(int[] iArr) {
            this.f11394a = b(iArr);
        }

        private int[] b(int[] iArr) {
            if (y9.this.j != 2 && y9.this.j != 3) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[length + 2];
            int i = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr2[i] = 12352;
            if (y9.this.j == 2) {
                iArr2[length] = 4;
            } else {
                iArr2[length] = 64;
            }
            iArr2[length + 1] = 12344;
            return iArr2;
        }

        abstract EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);

        @Override // com.amap.api.mapcore.util.y9.f
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            if (!egl10.eglChooseConfig(eGLDisplay, this.f11394a, null, 0, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i = iArr[0];
            if (i <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            if (!egl10.eglChooseConfig(eGLDisplay, this.f11394a, eGLConfigArr, i, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            EGLConfig eGLConfigA = a(egl10, eGLDisplay, eGLConfigArr);
            if (eGLConfigA != null) {
                return eGLConfigA;
            }
            throw new IllegalArgumentException("No config chosen");
        }
    }

    private class c extends b {
        private int[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected int f11395d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected int f11396e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected int f11397f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected int f11398g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        protected int f11399h;
        protected int i;

        public c(int i, int i2, int i3, int i4, int i5, int i6) {
            super(new int[]{12324, i, 12323, i2, 12322, i3, 12321, i4, 12325, i5, 12326, i6, 12344});
            this.c = new int[1];
            this.f11395d = i;
            this.f11396e = i2;
            this.f11397f = i3;
            this.f11398g = i4;
            this.f11399h = i5;
            this.i = i6;
        }

        private int c(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.c) ? this.c[0] : i2;
        }

        @Override // com.amap.api.mapcore.util.y9.b
        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int iC = c(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int iC2 = c(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (iC >= this.f11399h && iC2 >= this.i) {
                    int iC3 = c(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int iC4 = c(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int iC5 = c(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int iC6 = c(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (iC3 == this.f11395d && iC4 == this.f11396e && iC5 == this.f11397f && iC6 == this.f11398g) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    private class d implements g {
        private d() {
        }

        @Override // com.amap.api.mapcore.util.y9.g
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {EGLBase.EGL_CONTEXT_CLIENT_VERSION, y9.this.j, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (y9.this.j == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }

        @Override // com.amap.api.mapcore.util.y9.g
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                return;
            }
            Log.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
            i.c("eglDestroyContex", egl10.eglGetError());
            throw null;
        }
    }

    private static class e implements h {
        private e() {
        }

        @Override // com.amap.api.mapcore.util.y9.h
        public EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, null);
            } catch (IllegalArgumentException e2) {
                Log.e("GLSurfaceView", "eglCreateWindowSurface", e2);
                return null;
            }
        }

        @Override // com.amap.api.mapcore.util.y9.h
        public void b(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    public interface f {
        EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay);
    }

    public interface g {
        EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

        void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
    }

    public interface h {
        EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

        void b(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
    }

    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<y9> f11401a;
        EGL10 b;
        EGLDisplay c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        EGLSurface f11402d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        EGLConfig f11403e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        EGLContext f11404f;

        public i(WeakReference<y9> weakReference) {
            this.f11401a = weakReference;
        }

        private void b(String str) {
            c(str, this.b.eglGetError());
            throw null;
        }

        public static void c(String str, int i) {
            throw new RuntimeException(e(str, i));
        }

        public static void d(String str, String str2, int i) {
            Log.w(str, e(str2, i));
        }

        public static String e(String str, int i) {
            return str + " failed: " + i;
        }

        private void k() {
            EGLSurface eGLSurface;
            EGLSurface eGLSurface2 = this.f11402d;
            if (eGLSurface2 == null || eGLSurface2 == (eGLSurface = EGL10.EGL_NO_SURFACE)) {
                return;
            }
            this.b.eglMakeCurrent(this.c, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            y9 y9Var = this.f11401a.get();
            if (y9Var != null) {
                y9Var.f11392g.b(this.b, this.c, this.f11402d);
            }
            this.f11402d = null;
        }

        public void a() {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.b = egl10;
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.c = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
                throw new RuntimeException("eglGetDisplay failed");
            }
            if (!this.b.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                throw new RuntimeException("eglInitialize failed");
            }
            y9 y9Var = this.f11401a.get();
            if (y9Var == null) {
                this.f11403e = null;
                this.f11404f = null;
            } else {
                this.f11403e = y9Var.f11390e.chooseConfig(this.b, this.c);
                this.f11404f = y9Var.f11391f.createContext(this.b, this.c, this.f11403e);
            }
            EGLContext eGLContext = this.f11404f;
            if (eGLContext != null && eGLContext != EGL10.EGL_NO_CONTEXT) {
                this.f11402d = null;
            } else {
                this.f11404f = null;
                b("createContext");
                throw null;
            }
        }

        public boolean f() {
            if (this.b == null) {
                throw new RuntimeException("egl not initialized");
            }
            if (this.c == null) {
                throw new RuntimeException("eglDisplay not initialized");
            }
            if (this.f11403e == null) {
                throw new RuntimeException("mEglConfig not initialized");
            }
            k();
            y9 y9Var = this.f11401a.get();
            if (y9Var != null) {
                this.f11402d = y9Var.f11392g.a(this.b, this.c, this.f11403e, y9Var.getSurfaceTexture());
            } else {
                this.f11402d = null;
            }
            EGLSurface eGLSurface = this.f11402d;
            if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                if (this.b.eglGetError() == 12299) {
                    Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                }
                return false;
            }
            if (this.b.eglMakeCurrent(this.c, eGLSurface, eGLSurface, this.f11404f)) {
                return true;
            }
            d("EGLHelper", "eglMakeCurrent", this.b.eglGetError());
            return false;
        }

        GL g() {
            GL gl = this.f11404f.getGL();
            y9 y9Var = this.f11401a.get();
            if (y9Var == null) {
                return gl;
            }
            if (y9Var.f11393h != null) {
                gl = y9Var.f11393h.a(gl);
            }
            if ((y9Var.i & 3) != 0) {
                return GLDebugHelper.wrap(gl, (y9Var.i & 1) != 0 ? 1 : 0, (y9Var.i & 2) != 0 ? new m() : null);
            }
            return gl;
        }

        public int h() {
            if (this.b.eglSwapBuffers(this.c, this.f11402d)) {
                return 12288;
            }
            return this.b.eglGetError();
        }

        public void i() {
            k();
        }

        public void j() {
            if (this.f11404f != null) {
                y9 y9Var = this.f11401a.get();
                if (y9Var != null) {
                    y9Var.f11391f.destroyContext(this.b, this.c, this.f11404f);
                }
                this.f11404f = null;
            }
            EGLDisplay eGLDisplay = this.c;
            if (eGLDisplay != null) {
                this.b.eglTerminate(eGLDisplay);
                this.c = null;
            }
        }
    }

    static class j extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f11405a;
        private boolean b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f11406d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f11407e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f11408f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f11409g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f11410h;
        private boolean i;
        private boolean j;
        private boolean k;
        private boolean p;
        private i s;
        private WeakReference<y9> t;
        private ArrayList<Runnable> q = new ArrayList<>();
        private boolean r = true;
        private int l = 0;
        private int m = 0;
        private boolean o = true;
        private int n = 1;

        j(WeakReference<y9> weakReference) {
            this.t = weakReference;
        }

        private void p() {
            if (this.i) {
                this.i = false;
                this.s.i();
            }
        }

        private void q() {
            if (this.f11410h) {
                this.s.j();
                this.f11410h = false;
                y9.l.g(this);
            }
        }

        /* JADX WARN: Code duplicated, block: B:170:0x0222 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        private void r() throws InterruptedException {
            boolean z;
            this.s = new i(this.t);
            this.f11410h = false;
            this.i = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            GL10 gl10 = null;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            int i = 0;
            int i2 = 0;
            boolean z9 = false;
            while (true) {
                Runnable runnableRemove = null;
                while (true) {
                    try {
                        synchronized (y9.l) {
                            while (true) {
                                if (this.f11405a) {
                                    synchronized (y9.l) {
                                        p();
                                        q();
                                    }
                                    return;
                                }
                                if (!this.q.isEmpty()) {
                                    runnableRemove = this.q.remove(0);
                                    break;
                                }
                                boolean z10 = this.f11406d;
                                boolean z11 = this.c;
                                if (z10 != z11) {
                                    this.f11406d = z11;
                                    y9.l.notifyAll();
                                } else {
                                    z11 = false;
                                }
                                if (this.k) {
                                    p();
                                    q();
                                    this.k = false;
                                    z4 = true;
                                }
                                if (z2) {
                                    p();
                                    q();
                                    z2 = false;
                                }
                                if (z11 && this.i) {
                                    p();
                                }
                                if (z11 && this.f11410h) {
                                    y9 y9Var = this.t.get();
                                    if (!(y9Var == null ? false : y9Var.k) || y9.l.c()) {
                                        q();
                                    }
                                }
                                if (z11 && y9.l.d()) {
                                    this.s.j();
                                }
                                if (!this.f11407e && !this.f11409g) {
                                    if (this.i) {
                                        p();
                                    }
                                    this.f11409g = true;
                                    this.f11408f = false;
                                    y9.l.notifyAll();
                                }
                                if (this.f11407e && this.f11409g) {
                                    this.f11409g = false;
                                    y9.l.notifyAll();
                                }
                                if (z3) {
                                    this.p = true;
                                    y9.l.notifyAll();
                                    z3 = false;
                                    z9 = false;
                                }
                                if (s()) {
                                    if (!this.f11410h) {
                                        if (z4) {
                                            z4 = false;
                                        } else if (y9.l.e(this)) {
                                            try {
                                                this.s.a();
                                                this.f11410h = true;
                                                y9.l.notifyAll();
                                                z5 = true;
                                            } catch (RuntimeException e2) {
                                                y9.l.g(this);
                                                throw e2;
                                            }
                                        }
                                    }
                                    if (this.f11410h && !this.i) {
                                        this.i = true;
                                        z6 = true;
                                        z7 = true;
                                        z8 = true;
                                    }
                                    if (this.i) {
                                        if (this.r) {
                                            int i3 = this.l;
                                            int i4 = this.m;
                                            this.r = false;
                                            i = i3;
                                            i2 = i4;
                                            z = false;
                                            z6 = true;
                                            z8 = true;
                                            z9 = true;
                                        } else {
                                            z = false;
                                        }
                                        this.o = z;
                                        y9.l.notifyAll();
                                        break;
                                    }
                                }
                                y9.l.wait();
                            }
                        }
                        if (runnableRemove != null) {
                            break;
                        }
                        if (z6) {
                            if (this.s.f()) {
                                synchronized (y9.l) {
                                    this.j = true;
                                    y9.l.notifyAll();
                                }
                                z6 = false;
                            } else {
                                synchronized (y9.l) {
                                    this.j = true;
                                    this.f11408f = true;
                                    y9.l.notifyAll();
                                }
                            }
                            synchronized (y9.l) {
                                p();
                                q();
                                throw th;
                            }
                        }
                        if (z7) {
                            gl10 = (GL10) this.s.g();
                            y9.l.b(gl10);
                            z7 = false;
                        }
                        if (z5) {
                            y9 y9Var2 = this.t.get();
                            if (y9Var2 != null) {
                                y9Var2.c.onSurfaceCreated(gl10, this.s.f11403e);
                            }
                            z5 = false;
                        }
                        if (z8) {
                            y9 y9Var3 = this.t.get();
                            if (y9Var3 != null) {
                                y9Var3.c.onSurfaceChanged(gl10, i, i2);
                            }
                            z8 = false;
                        }
                        y9 y9Var4 = this.t.get();
                        if (y9Var4 != null) {
                            y9Var4.c.onDrawFrame(gl10);
                        }
                        int iH = this.s.h();
                        if (iH != 12288) {
                            if (iH != 12302) {
                                i.d("GLThread", "eglSwapBuffers", iH);
                                synchronized (y9.l) {
                                    this.f11408f = true;
                                    y9.l.notifyAll();
                                }
                            } else {
                                z2 = true;
                            }
                        }
                        if (z9) {
                            z3 = true;
                        }
                    } catch (Throwable th) {
                        synchronized (y9.l) {
                            p();
                            q();
                            throw th;
                        }
                    }
                }
                runnableRemove.run();
            }
        }

        private boolean s() {
            return !this.f11406d && this.f11407e && !this.f11408f && this.l > 0 && this.m > 0 && (this.o || this.n == 1);
        }

        public void a(int i) {
            if (i < 0 || i > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (y9.l) {
                this.n = i;
                y9.l.notifyAll();
            }
        }

        public void b(int i, int i2) {
            synchronized (y9.l) {
                this.l = i;
                this.m = i2;
                this.r = true;
                this.o = true;
                this.p = false;
                y9.l.notifyAll();
                while (!this.b && !this.f11406d && !this.p && d()) {
                    try {
                        y9.l.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void c(Runnable runnable) {
            if (runnable == null) {
                throw new IllegalArgumentException("r must not be null");
            }
            synchronized (y9.l) {
                this.q.add(runnable);
                y9.l.notifyAll();
            }
        }

        public boolean d() {
            return this.f11410h && this.i && s();
        }

        public int f() {
            int i;
            synchronized (y9.l) {
                i = this.n;
            }
            return i;
        }

        public void g() {
            synchronized (y9.l) {
                this.o = true;
                y9.l.notifyAll();
            }
        }

        public void h() {
            synchronized (y9.l) {
                this.f11407e = true;
                this.j = false;
                y9.l.notifyAll();
                while (this.f11409g && !this.j && !this.b) {
                    try {
                        y9.l.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void i() {
            synchronized (y9.l) {
                this.f11407e = false;
                y9.l.notifyAll();
                while (!this.f11409g && !this.b) {
                    try {
                        if (MapsInitializer.getTextureViewDestorySync()) {
                            y9.l.wait();
                        } else {
                            y9.l.wait(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void j() {
            synchronized (y9.l) {
                this.c = true;
                y9.l.notifyAll();
                while (!this.b && !this.f11406d) {
                    try {
                        if (MapsInitializer.getTextureViewDestorySync()) {
                            y9.l.wait();
                        } else {
                            y9.l.wait(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void k() {
            synchronized (y9.l) {
                this.c = false;
                this.o = true;
                this.p = false;
                y9.l.notifyAll();
                while (!this.b && this.f11406d && !this.p) {
                    try {
                        y9.l.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void l() {
            synchronized (y9.l) {
                this.f11405a = true;
                y9.l.notifyAll();
                while (!this.b) {
                    try {
                        y9.l.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void m() {
            this.k = true;
            y9.l.notifyAll();
        }

        public int n() {
            int i;
            synchronized (y9.l) {
                i = this.l;
            }
            return i;
        }

        public int o() {
            int i;
            synchronized (y9.l) {
                i = this.m;
            }
            return i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("GLThread " + getId());
            try {
                r();
            } catch (InterruptedException unused) {
            } finally {
                y9.l.a(this);
            }
        }
    }

    private static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f11411a;
        private int b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f11412d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f11413e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private j f11414f;

        private k() {
        }

        private void f() {
            if (this.f11411a) {
                return;
            }
            this.b = 131072;
            this.f11412d = true;
            this.f11411a = true;
        }

        public synchronized void a(j jVar) {
            jVar.b = true;
            if (this.f11414f == jVar) {
                this.f11414f = null;
            }
            notifyAll();
        }

        public synchronized void b(GL10 gl10) {
            if (!this.c && gl10 != null) {
                f();
                String strGlGetString = gl10.glGetString(7937);
                if (this.b < 131072) {
                    this.f11412d = !strGlGetString.startsWith("Q3Dimension MSM7500 ");
                    notifyAll();
                }
                this.f11413e = this.f11412d ? false : true;
                this.c = true;
            }
        }

        public synchronized boolean c() {
            return this.f11413e;
        }

        public synchronized boolean d() {
            f();
            return !this.f11412d;
        }

        public boolean e(j jVar) {
            j jVar2 = this.f11414f;
            if (jVar2 == jVar || jVar2 == null) {
                this.f11414f = jVar;
                notifyAll();
                return true;
            }
            f();
            if (this.f11412d) {
                return true;
            }
            j jVar3 = this.f11414f;
            if (jVar3 == null) {
                return false;
            }
            jVar3.m();
            return false;
        }

        public void g(j jVar) {
            if (this.f11414f == jVar) {
                this.f11414f = null;
            }
            notifyAll();
        }
    }

    public interface l {
        GL a(GL gl);
    }

    static class m extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private StringBuilder f11415a = new StringBuilder();

        m() {
        }

        private void a() {
            if (this.f11415a.length() > 0) {
                Log.v("GLSurfaceView", this.f11415a.toString());
                StringBuilder sb = this.f11415a;
                sb.delete(0, sb.length());
            }
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            a();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            a();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                char c = cArr[i + i3];
                if (c == '\n') {
                    a();
                } else {
                    this.f11415a.append(c);
                }
            }
        }
    }

    private class n extends c {
        public n(boolean z) {
            super(8, 8, 8, 0, z ? 16 : 0, 0);
        }
    }

    public y9(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11388a = new WeakReference<>(this);
        b();
    }

    private void b() {
        setSurfaceTextureListener(this);
    }

    private void l() {
        if (this.b != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    public void c(f fVar) {
        l();
        this.f11390e = fVar;
    }

    public void d(g gVar) {
        l();
        this.f11391f = gVar;
    }

    public void f() {
        this.b.j();
    }

    protected void finalize() throws Throwable {
        try {
            j jVar = this.b;
            if (jVar != null) {
                jVar.l();
            }
        } finally {
            super.finalize();
        }
    }

    public int getRenderMode() {
        return this.b.f();
    }

    public void h() {
        this.b.k();
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11389d && this.c != null) {
            j jVar = this.b;
            int iF = jVar != null ? jVar.f() : 1;
            j jVar2 = new j(this.f11388a);
            this.b = jVar2;
            if (iF != 1) {
                jVar2.a(iF);
            }
            this.b.start();
        }
        this.f11389d = false;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        j jVar = this.b;
        if (jVar != null) {
            jVar.l();
        }
        this.f11389d = true;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        onSurfaceTextureSizeChanged(getSurfaceTexture(), i4 - i2, i5 - i3);
        super.onLayout(z, i2, i3, i4, i5);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.b.h();
        if (MapsInitializer.getTextureSizeChangedInvoked()) {
            onSurfaceTextureSizeChanged(surfaceTexture, i2, i3);
        } else {
            if (this.b.n() == i2 && this.b.o() == i3) {
                return;
            }
            onSurfaceTextureSizeChanged(surfaceTexture, i2, i3);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.b.i();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.b.b(i2, i3);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void queueEvent(Runnable runnable) {
        this.b.c(runnable);
    }

    public void requestRender() {
        this.b.g();
    }

    public void setRenderMode(int i2) {
        this.b.a(i2);
    }

    public void setRenderer(GLSurfaceView.Renderer renderer) {
        l();
        if (this.f11390e == null) {
            this.f11390e = new n(true);
        }
        if (this.f11391f == null) {
            this.f11391f = new d();
        }
        if (this.f11392g == null) {
            this.f11392g = new e();
        }
        this.c = renderer;
        j jVar = new j(this.f11388a);
        this.b = jVar;
        jVar.start();
    }
}
