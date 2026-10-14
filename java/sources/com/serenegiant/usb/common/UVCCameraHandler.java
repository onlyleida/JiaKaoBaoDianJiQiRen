package com.serenegiant.usb.common;

import android.app.Activity;
import com.serenegiant.usb.widget.CameraViewInterface;

/* JADX INFO: loaded from: classes6.dex */
public class UVCCameraHandler extends AbstractUVCCameraHandler {
    protected UVCCameraHandler(AbstractUVCCameraHandler.CameraThread cameraThread) {
        super(cameraThread);
    }

    public static final UVCCameraHandler createHandler(Activity activity, CameraViewInterface cameraViewInterface, int i, int i2) {
        return createHandler(activity, cameraViewInterface, 1, i, i2, 1, 1.0f);
    }

    @Override // com.serenegiant.usb.common.AbstractUVCCameraHandler
    public void captureStill(String str, AbstractUVCCameraHandler.OnCaptureListener onCaptureListener) {
        super.captureStill(str, onCaptureListener);
    }

    @Override // com.serenegiant.usb.common.AbstractUVCCameraHandler
    public void startCameraFoucs() {
        super.startCameraFoucs();
    }

    @Override // com.serenegiant.usb.common.AbstractUVCCameraHandler
    public void startPreview(Object obj) {
        super.startPreview(obj);
    }

    public static final UVCCameraHandler createHandler(Activity activity, CameraViewInterface cameraViewInterface, int i, int i2, float f2) {
        return createHandler(activity, cameraViewInterface, 1, i, i2, 1, f2);
    }

    public static final UVCCameraHandler createHandler(Activity activity, CameraViewInterface cameraViewInterface, int i, int i2, int i3) {
        return createHandler(activity, cameraViewInterface, i, i2, i3, 1, 1.0f);
    }

    public static final UVCCameraHandler createHandler(Activity activity, CameraViewInterface cameraViewInterface, int i, int i2, int i3, int i4) {
        return createHandler(activity, cameraViewInterface, i, i2, i3, i4, 1.0f);
    }

    public static final UVCCameraHandler createHandler(Activity activity, CameraViewInterface cameraViewInterface, int i, int i2, int i3, int i4, float f2) {
        AbstractUVCCameraHandler.CameraThread cameraThread = new AbstractUVCCameraHandler.CameraThread(UVCCameraHandler.class, activity, cameraViewInterface, i, i2, i3, i4, f2);
        cameraThread.start();
        return (UVCCameraHandler) cameraThread.getHandler();
    }
}
