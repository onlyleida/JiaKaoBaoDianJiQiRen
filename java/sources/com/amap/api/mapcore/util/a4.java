package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.base.ae.gmap.GLMapRender;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.IGLSurfaceView;

/* JADX INFO: loaded from: classes5.dex */
public class a4 extends y9 implements IGLSurfaceView {
    private IAMapDelegate m;
    private GLMapRender n;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a4.this.n != null) {
                    a4.this.n.onSurfaceDestory();
                }
            } catch (Throwable th) {
                th.printStackTrace();
                r3.J(th);
            }
        }
    }

    public a4(Context context, boolean z) {
        super(context, null);
        this.m = null;
        this.n = null;
        z2.h(this, 5, 6, 5, 0, 16, 8);
        this.m = new c1(this, context, null, z);
    }

    @Override // com.amap.api.mapcore.util.y9
    public void f() {
        if (!this.n.mSurfacedestoryed) {
            queueEvent(new a());
            int i = 0;
            while (!this.n.mSurfacedestoryed) {
                int i2 = i + 1;
                if (i >= 50) {
                    break;
                }
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException unused) {
                }
                i = i2;
            }
        }
        super.f();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.amap.api.mapcore.util.y9
    public void h() {
        super.h();
    }

    @Override // com.amap.api.mapcore.util.y9, android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            GLMapRender gLMapRender = this.n;
            if (gLMapRender != null) {
                gLMapRender.onAttachedToWindow();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        h();
    }

    @Override // com.amap.api.mapcore.util.y9, android.view.View
    protected void onDetachedFromWindow() {
        if (MapsInitializer.isSupportRecycleView()) {
            return;
        }
        f();
        try {
            GLMapRender gLMapRender = this.n;
            if (gLMapRender != null) {
                gLMapRender.onDetachedFromWindow();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        super.onDetachedFromWindow();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void onDetachedGLThread() {
        if (MapsInitializer.isSupportRecycleView()) {
            f();
            try {
                GLMapRender gLMapRender = this.n;
                if (gLMapRender != null) {
                    gLMapRender.onDetachedFromWindow();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            super.onDetachedFromWindow();
        }
    }

    @Override // com.amap.api.mapcore.util.y9, android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        requestRender();
        try {
            if (MapsInitializer.getTextureDestroyRender()) {
                Thread.sleep(100L);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
        return super.onSurfaceTextureDestroyed(surfaceTexture);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        try {
            return this.m.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        GLMapRender gLMapRender;
        super.onWindowVisibilityChanged(i);
        try {
            if (i == 8 || i == 4) {
                GLMapRender gLMapRender2 = this.n;
                if (gLMapRender2 != null) {
                    gLMapRender2.renderPause();
                }
                requestRender();
                return;
            }
            if (i != 0 || (gLMapRender = this.n) == null) {
                return;
            }
            gLMapRender.renderResume();
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
    }

    public IAMapDelegate q() {
        return this.m;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setEGLConfigChooser(x2 x2Var) {
        super.c(x2Var);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setEGLContextFactory(y2 y2Var) {
        super.d(y2Var);
    }

    @Override // com.amap.api.mapcore.util.y9, com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setRenderer(GLSurfaceView.Renderer renderer) {
        this.n = (GLMapRender) renderer;
        super.setRenderer(renderer);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IGLSurfaceView
    public void setZOrderOnTop(boolean z) {
    }
}
