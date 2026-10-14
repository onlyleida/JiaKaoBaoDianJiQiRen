package com.serenegiant.usb.widget;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.serenegiant.widget.IAspectRatioView;

/* JADX INFO: loaded from: classes6.dex */
public interface CameraViewInterface extends IAspectRatioView, CaptureStillImageInterface {

    public interface Callback {
        void onSurfaceChanged(CameraViewInterface cameraViewInterface, Surface surface, int i, int i2);

        void onSurfaceCreated(CameraViewInterface cameraViewInterface, Surface surface);

        void onSurfaceDestroy(CameraViewInterface cameraViewInterface, Surface surface);
    }

    Surface getSurface();

    SurfaceTexture getSurfaceTexture();

    boolean hasSurface();

    void onPause();

    void onResume();

    void setCallback(Callback callback);
}
