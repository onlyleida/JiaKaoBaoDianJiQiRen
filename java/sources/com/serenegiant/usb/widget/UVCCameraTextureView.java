package com.serenegiant.usb.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import com.serenegiant.glutils.EGLBase;
import com.serenegiant.glutils.GLDrawer2D;
import com.serenegiant.glutils.es1.GLHelper;
import com.serenegiant.utils.FpsCounter;

/* JADX INFO: loaded from: classes6.dex */
public class UVCCameraTextureView extends AspectRatioTextureView implements TextureView.SurfaceTextureListener, CameraViewInterface {
    private static final boolean DEBUG = true;
    private static final String TAG = "UVCCameraTextureView";
    private CameraViewInterface.Callback mCallback;
    private final Object mCaptureSync;
    private final FpsCounter mFpsCounter;
    private boolean mHasSurface;
    private Surface mPreviewSurface;
    private RenderHandler mRenderHandler;
    private boolean mReqesutCaptureStillImage;
    private Bitmap mTempBitmap;

    private static final class RenderHandler extends Handler implements SurfaceTexture.OnFrameAvailableListener {
        private static final int MSG_CREATE_SURFACE = 3;
        private static final int MSG_REQUEST_RENDER = 1;
        private static final int MSG_RESIZE = 4;
        private static final int MSG_TERMINATE = 9;
        private final FpsCounter mFpsCounter;
        private boolean mIsActive;
        private RenderThread mThread;

        private static final class RenderThread extends Thread {
            private GLDrawer2D mDrawer;
            private EGLBase mEgl;
            private EGLBase.IEglSurface mEglSurface;
            private final FpsCounter mFpsCounter;
            private RenderHandler mHandler;
            private SurfaceTexture mPreviewSurface;
            private final SurfaceTexture mSurface;
            private int mViewHeight;
            private int mViewWidth;
            private final Object mSync = new Object();
            private int mTexId = -1;
            private final float[] mStMatrix = new float[16];

            public RenderThread(FpsCounter fpsCounter, SurfaceTexture surfaceTexture, int i, int i2) {
                this.mFpsCounter = fpsCounter;
                this.mSurface = surfaceTexture;
                this.mViewWidth = i;
                this.mViewHeight = i2;
                setName("UVCRenderThread");
            }

            private final void init() {
                Log.v(UVCCameraTextureView.TAG, "RenderThread#init:");
                EGLBase eGLBaseCreateFrom = EGLBase.createFrom(null, false, false);
                this.mEgl = eGLBaseCreateFrom;
                EGLBase.IEglSurface iEglSurfaceCreateFromSurface = eGLBaseCreateFrom.createFromSurface(this.mSurface);
                this.mEglSurface = iEglSurfaceCreateFromSurface;
                iEglSurfaceCreateFromSurface.makeCurrent();
                this.mDrawer = new GLDrawer2D(true);
            }

            private final void release() {
                Log.v(UVCCameraTextureView.TAG, "RenderThread#release:");
                GLDrawer2D gLDrawer2D = this.mDrawer;
                if (gLDrawer2D != null) {
                    gLDrawer2D.release();
                    this.mDrawer = null;
                }
                SurfaceTexture surfaceTexture = this.mPreviewSurface;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    this.mPreviewSurface = null;
                }
                int i = this.mTexId;
                if (i >= 0) {
                    GLHelper.deleteTex(i);
                    this.mTexId = -1;
                }
                EGLBase.IEglSurface iEglSurface = this.mEglSurface;
                if (iEglSurface != null) {
                    iEglSurface.release();
                    this.mEglSurface = null;
                }
                EGLBase eGLBase = this.mEgl;
                if (eGLBase != null) {
                    eGLBase.release();
                    this.mEgl = null;
                }
            }

            public final RenderHandler getHandler() {
                Log.v(UVCCameraTextureView.TAG, "RenderThread#getHandler:");
                synchronized (this.mSync) {
                    if (this.mHandler == null) {
                        try {
                            this.mSync.wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                }
                return this.mHandler;
            }

            public final void onDrawFrame() {
                this.mEglSurface.makeCurrent();
                this.mPreviewSurface.updateTexImage();
                this.mPreviewSurface.getTransformMatrix(this.mStMatrix);
                this.mDrawer.draw(this.mTexId, this.mStMatrix, 0);
                this.mEglSurface.swap();
            }

            public void resize(int i, int i2) {
                if ((i <= 0 || i == this.mViewWidth) && (i2 <= 0 || i2 == this.mViewHeight)) {
                    synchronized (this.mSync) {
                        this.mSync.notifyAll();
                    }
                } else {
                    this.mViewWidth = i;
                    this.mViewHeight = i2;
                    updatePreviewSurface();
                }
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Log.d(UVCCameraTextureView.TAG, getName() + " started");
                init();
                Looper.prepare();
                synchronized (this.mSync) {
                    this.mHandler = new RenderHandler(this.mFpsCounter, this);
                    this.mSync.notify();
                }
                Looper.loop();
                Log.d(UVCCameraTextureView.TAG, getName() + " finishing");
                release();
                synchronized (this.mSync) {
                    this.mHandler = null;
                    this.mSync.notify();
                }
            }

            public final void updatePreviewSurface() {
                Log.i(UVCCameraTextureView.TAG, "RenderThread#updatePreviewSurface:");
                synchronized (this.mSync) {
                    if (this.mPreviewSurface != null) {
                        Log.d(UVCCameraTextureView.TAG, "updatePreviewSurface:release mPreviewSurface");
                        this.mPreviewSurface.setOnFrameAvailableListener(null);
                        this.mPreviewSurface.release();
                        this.mPreviewSurface = null;
                    }
                    this.mEglSurface.makeCurrent();
                    int i = this.mTexId;
                    if (i >= 0) {
                        this.mDrawer.deleteTex(i);
                    }
                    this.mTexId = this.mDrawer.initTex();
                    Log.v(UVCCameraTextureView.TAG, "updatePreviewSurface:tex_id=" + this.mTexId);
                    SurfaceTexture surfaceTexture = new SurfaceTexture(this.mTexId);
                    this.mPreviewSurface = surfaceTexture;
                    surfaceTexture.setDefaultBufferSize(this.mViewWidth, this.mViewHeight);
                    this.mPreviewSurface.setOnFrameAvailableListener(this.mHandler);
                    this.mSync.notifyAll();
                }
            }
        }

        public static final RenderHandler createHandler(FpsCounter fpsCounter, SurfaceTexture surfaceTexture, int i, int i2) {
            RenderThread renderThread = new RenderThread(fpsCounter, surfaceTexture, i, i2);
            renderThread.start();
            return renderThread.getHandler();
        }

        public final SurfaceTexture getPreviewTexture() {
            SurfaceTexture surfaceTexture;
            Log.v(UVCCameraTextureView.TAG, "getPreviewTexture:");
            if (!this.mIsActive) {
                return null;
            }
            synchronized (this.mThread.mSync) {
                sendEmptyMessage(3);
                try {
                    this.mThread.mSync.wait();
                } catch (InterruptedException unused) {
                }
                surfaceTexture = this.mThread.mPreviewSurface;
            }
            return surfaceTexture;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            RenderThread renderThread = this.mThread;
            if (renderThread == null) {
                return;
            }
            int i = message.what;
            if (i == 1) {
                renderThread.onDrawFrame();
                return;
            }
            if (i == 9) {
                Looper.myLooper().quit();
                this.mThread = null;
            } else if (i == 3) {
                renderThread.updatePreviewSurface();
            } else if (i != 4) {
                super.handleMessage(message);
            } else {
                renderThread.resize(message.arg1, message.arg2);
            }
        }

        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
            if (this.mIsActive) {
                this.mFpsCounter.count();
                sendEmptyMessage(1);
            }
        }

        public final void release() {
            Log.v(UVCCameraTextureView.TAG, "release:");
            if (this.mIsActive) {
                this.mIsActive = false;
                removeMessages(1);
                sendEmptyMessage(9);
            }
        }

        public void resize(int i, int i2) {
            Log.v(UVCCameraTextureView.TAG, "resize:");
            if (this.mIsActive) {
                synchronized (this.mThread.mSync) {
                    sendMessage(obtainMessage(4, i, i2));
                    try {
                        this.mThread.mSync.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        private RenderHandler(FpsCounter fpsCounter, RenderThread renderThread) {
            this.mIsActive = true;
            this.mThread = renderThread;
            this.mFpsCounter = fpsCounter;
        }
    }

    public UVCCameraTextureView(Context context) {
        this(context, null, 0);
    }

    @Override // com.serenegiant.usb.widget.CaptureStillImageInterface
    public Bitmap captureStillImage(int i, int i2) {
        Bitmap bitmap;
        synchronized (this.mCaptureSync) {
            this.mReqesutCaptureStillImage = true;
            try {
                this.mCaptureSync.wait();
            } catch (InterruptedException unused) {
            }
            bitmap = this.mTempBitmap;
        }
        return bitmap;
    }

    public float getFps() {
        return this.mFpsCounter.getFps();
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public Surface getSurface() {
        SurfaceTexture surfaceTexture;
        Log.v(TAG, "getSurface:hasSurface=" + this.mHasSurface);
        if (this.mPreviewSurface == null && (surfaceTexture = getSurfaceTexture()) != null) {
            this.mPreviewSurface = new Surface(surfaceTexture);
        }
        return this.mPreviewSurface;
    }

    @Override // android.view.TextureView, com.serenegiant.usb.widget.CameraViewInterface
    public SurfaceTexture getSurfaceTexture() {
        RenderHandler renderHandler = this.mRenderHandler;
        if (renderHandler != null) {
            return renderHandler.getPreviewTexture();
        }
        return null;
    }

    public float getTotalFps() {
        return this.mFpsCounter.getTotalFps();
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public boolean hasSurface() {
        return this.mHasSurface;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public void onPause() {
        Log.v(TAG, "onPause:");
        RenderHandler renderHandler = this.mRenderHandler;
        if (renderHandler != null) {
            renderHandler.release();
            this.mRenderHandler = null;
        }
        Bitmap bitmap = this.mTempBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.mTempBitmap = null;
        }
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public void onResume() {
        Log.v(TAG, "onResume:");
        if (this.mHasSurface) {
            this.mRenderHandler = RenderHandler.createHandler(this.mFpsCounter, super.getSurfaceTexture(), getWidth(), getHeight());
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Log.i(TAG, "onSurfaceTextureAvailable:" + surfaceTexture);
        RenderHandler renderHandler = this.mRenderHandler;
        if (renderHandler == null) {
            this.mRenderHandler = RenderHandler.createHandler(this.mFpsCounter, surfaceTexture, i, i2);
        } else {
            renderHandler.resize(i, i2);
        }
        this.mHasSurface = true;
        CameraViewInterface.Callback callback = this.mCallback;
        if (callback != null) {
            callback.onSurfaceCreated(this, getSurface());
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Log.i(TAG, "onSurfaceTextureDestroyed:" + surfaceTexture);
        RenderHandler renderHandler = this.mRenderHandler;
        if (renderHandler != null) {
            renderHandler.release();
            this.mRenderHandler = null;
        }
        this.mHasSurface = false;
        CameraViewInterface.Callback callback = this.mCallback;
        if (callback != null) {
            callback.onSurfaceDestroy(this, getSurface());
        }
        Surface surface = this.mPreviewSurface;
        if (surface == null) {
            return true;
        }
        surface.release();
        this.mPreviewSurface = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        Log.i(TAG, "onSurfaceTextureSizeChanged:" + surfaceTexture);
        RenderHandler renderHandler = this.mRenderHandler;
        if (renderHandler != null) {
            renderHandler.resize(i, i2);
        }
        CameraViewInterface.Callback callback = this.mCallback;
        if (callback != null) {
            callback.onSurfaceChanged(this, getSurface(), i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        synchronized (this.mCaptureSync) {
            if (this.mReqesutCaptureStillImage) {
                this.mReqesutCaptureStillImage = false;
                Bitmap bitmap = this.mTempBitmap;
                if (bitmap == null) {
                    this.mTempBitmap = getBitmap();
                } else {
                    getBitmap(bitmap);
                }
                this.mCaptureSync.notifyAll();
            }
        }
    }

    public void resetFps() {
        this.mFpsCounter.reset();
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public void setCallback(CameraViewInterface.Callback callback) {
        this.mCallback = callback;
    }

    public void updateFps() {
        this.mFpsCounter.update();
    }

    public UVCCameraTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UVCCameraTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCaptureSync = new Object();
        this.mFpsCounter = new FpsCounter();
        setSurfaceTextureListener(this);
    }
}
