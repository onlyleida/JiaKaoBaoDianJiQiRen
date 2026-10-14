package com.serenegiant.usb.widget;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.serenegiant.glutils.ShaderConst;

/* JADX INFO: loaded from: classes6.dex */
public class NoViewSurface implements CameraViewInterface {
    private CameraViewInterface.Callback callback;
    private final int height;
    private boolean isDestroyed = false;
    private final SurfaceTexture.OnFrameAvailableListener listener;
    private SurfaceTexture preSurface;
    private double ratio;
    private Surface surface;
    private final int width;

    public NoViewSurface(int i, int i2) {
        SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: com.serenegiant.usb.widget.NoViewSurface.1
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                if (NoViewSurface.this.isDestroyed) {
                }
            }
        };
        this.listener = onFrameAvailableListener;
        this.width = i;
        this.height = i2;
        SurfaceTexture surfaceTexture = new SurfaceTexture(ShaderConst.GL_TEXTURE_EXTERNAL_OES);
        this.preSurface = surfaceTexture;
        surfaceTexture.setDefaultBufferSize(i, i2);
        this.preSurface.setOnFrameAvailableListener(onFrameAvailableListener);
    }

    @Override // com.serenegiant.usb.widget.CaptureStillImageInterface
    public Bitmap captureStillImage(int i, int i2) {
        return null;
    }

    public void destroy() {
        this.isDestroyed = true;
        CameraViewInterface.Callback callback = this.callback;
        if (callback != null) {
            callback.onSurfaceDestroy(this, getSurface());
        }
        this.preSurface.release();
        this.preSurface = null;
        this.surface = null;
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public double getAspectRatio() {
        return this.ratio;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public Surface getSurface() {
        if (this.surface == null) {
            this.surface = new Surface(this.preSurface);
        }
        return this.surface;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public SurfaceTexture getSurfaceTexture() {
        return this.preSurface;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public boolean hasSurface() {
        return this.surface != null;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public void onPause() {
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public void onResume() {
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public void setAspectRatio(double d2) {
        this.ratio = d2;
    }

    @Override // com.serenegiant.usb.widget.CameraViewInterface
    public void setCallback(CameraViewInterface.Callback callback) {
        this.callback = callback;
        callback.onSurfaceCreated(this, getSurface());
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public void setAspectRatio(int i, int i2) {
        setAspectRatio((((double) i) * 1.0d) / ((double) i2));
    }
}
