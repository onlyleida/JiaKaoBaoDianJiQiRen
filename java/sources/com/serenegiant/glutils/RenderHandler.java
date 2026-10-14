package com.serenegiant.glutils;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public final class RenderHandler extends Handler {
    private static final int MSG_CHECK_VALID = 3;
    private static final int MSG_RENDER_DRAW = 2;
    private static final int MSG_RENDER_QUIT = 9;
    private static final int MSG_RENDER_SET_GLCONTEXT = 1;
    private static final String TAG = "RenderHandler";
    private int mTexId;
    private final RenderThread mThread;

    private static final class ContextParams {
        final EGLBase.IContext sharedContext;
        final Object surface;

        public ContextParams(EGLBase.IContext iContext, Object obj) {
            this.sharedContext = iContext;
            this.surface = obj;
        }
    }

    private static final class RenderThread extends Thread {
        private static final String TAG_THREAD = "RenderThread";
        private GLDrawer2D mDrawer;
        private EGLBase mEgl;
        private RenderHandler mHandler;
        private Surface mSurface;
        private final Object mSync;
        private EGLBase.IEglSurface mTargetSurface;

        public RenderThread(String str) {
            super(str);
            this.mSync = new Object();
        }

        private final void clear() {
            this.mTargetSurface.makeCurrent();
            GLES20.glClearColor(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            GLES20.glClear(16384);
            this.mTargetSurface.swap();
        }

        private final void release() {
            GLDrawer2D gLDrawer2D = this.mDrawer;
            if (gLDrawer2D != null) {
                gLDrawer2D.release();
                this.mDrawer = null;
            }
            synchronized (this.mSync) {
                this.mSurface = null;
            }
            if (this.mTargetSurface != null) {
                clear();
                this.mTargetSurface.release();
                this.mTargetSurface = null;
            }
            EGLBase eGLBase = this.mEgl;
            if (eGLBase != null) {
                eGLBase.release();
                this.mEgl = null;
            }
        }

        public final RenderHandler getHandler() {
            synchronized (this.mSync) {
                try {
                    this.mSync.wait();
                } catch (InterruptedException unused) {
                }
            }
            return this.mHandler;
        }

        public void handleDraw(int i, float[] fArr) {
            EGLBase.IEglSurface iEglSurface;
            if (i < 0 || (iEglSurface = this.mTargetSurface) == null) {
                return;
            }
            iEglSurface.makeCurrent();
            this.mDrawer.draw(i, fArr, 0);
            this.mTargetSurface.swap();
        }

        public final void handleSetEglContext(EGLBase.IContext iContext, Object obj, boolean z) {
            Surface surface;
            release();
            synchronized (this.mSync) {
                if (obj instanceof Surface) {
                    surface = (Surface) obj;
                } else {
                    surface = obj instanceof SurfaceTexture ? new Surface((SurfaceTexture) obj) : null;
                }
                this.mSurface = surface;
            }
            EGLBase eGLBaseCreateFrom = EGLBase.createFrom(3, iContext, false, 0, z);
            this.mEgl = eGLBaseCreateFrom;
            try {
                this.mTargetSurface = eGLBaseCreateFrom.createFromSurface(obj);
                this.mDrawer = new GLDrawer2D(z);
            } catch (Exception e2) {
                Log.w(RenderHandler.TAG, e2);
                EGLBase.IEglSurface iEglSurface = this.mTargetSurface;
                if (iEglSurface != null) {
                    iEglSurface.release();
                    this.mTargetSurface = null;
                }
                GLDrawer2D gLDrawer2D = this.mDrawer;
                if (gLDrawer2D != null) {
                    gLDrawer2D.release();
                    this.mDrawer = null;
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Looper.prepare();
            synchronized (this.mSync) {
                this.mHandler = new RenderHandler(this);
                this.mSync.notify();
            }
            Looper.loop();
            release();
            synchronized (this.mSync) {
                this.mHandler = null;
            }
        }
    }

    public static RenderHandler createHandler() {
        return createHandler("RenderThread");
    }

    public final void draw() {
        sendMessage(obtainMessage(2, this.mTexId, 0, null));
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            ContextParams contextParams = (ContextParams) message.obj;
            this.mThread.handleSetEglContext(contextParams.sharedContext, contextParams.surface, message.arg1 != 0);
            return;
        }
        if (i == 2) {
            this.mThread.handleDraw(message.arg1, (float[]) message.obj);
            return;
        }
        if (i == 3) {
            synchronized (this.mThread.mSync) {
                this.mThread.mSync.notify();
            }
        } else if (i != 9) {
            super.handleMessage(message);
        } else {
            Looper.myLooper().quit();
        }
    }

    public boolean isValid() {
        boolean z;
        synchronized (this.mThread.mSync) {
            sendEmptyMessage(3);
            try {
                this.mThread.mSync.wait();
            } catch (InterruptedException unused) {
            }
            z = this.mThread.mSurface != null && this.mThread.mSurface.isValid();
        }
        return z;
    }

    public final void release() {
        removeMessages(1);
        removeMessages(2);
        sendEmptyMessage(9);
    }

    public final void setEglContext(EGLBase.IContext iContext, int i, Object obj, boolean z) {
        if ((obj instanceof Surface) || (obj instanceof SurfaceTexture) || (obj instanceof SurfaceHolder)) {
            this.mTexId = i;
            sendMessage(obtainMessage(1, z ? 1 : 0, 0, new ContextParams(iContext, obj)));
        } else {
            throw new RuntimeException("unsupported window type:" + obj);
        }
    }

    private RenderHandler(RenderThread renderThread) {
        this.mTexId = -1;
        this.mThread = renderThread;
    }

    public static final RenderHandler createHandler(String str) {
        RenderThread renderThread = new RenderThread(str);
        renderThread.start();
        return renderThread.getHandler();
    }

    public final void draw(int i) {
        sendMessage(obtainMessage(2, i, 0, null));
    }

    public final void draw(float[] fArr) {
        sendMessage(obtainMessage(2, this.mTexId, 0, fArr));
    }

    public final void draw(int i, float[] fArr) {
        sendMessage(obtainMessage(2, i, 0, fArr));
    }
}
