package org.opencv.android;

import android.annotation.TargetApi;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import com.mobile.auth.gatewayauth.Constant;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(15)
public class CameraRenderer extends CameraGLRendererBase {
    public static final String LOGTAG = "CameraRenderer";
    private Camera mCamera;
    private boolean mPreviewStarted;

    CameraRenderer(CameraGLSurfaceView cameraGLSurfaceView) {
        super(cameraGLSurfaceView);
        this.mPreviewStarted = false;
    }

    @Override // org.opencv.android.CameraGLRendererBase
    protected synchronized void closeCamera() {
        Log.i(LOGTAG, "closeCamera");
        Camera camera = this.mCamera;
        if (camera != null) {
            camera.stopPreview();
            this.mPreviewStarted = false;
            this.mCamera.release();
            this.mCamera = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0137 A[Catch: all -> 0x0185, EDGE_INSN: B:23:0x0092->B:52:0x0137 BREAK  A[LOOP:0: B:15:0x0044->B:24:0x0094], TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x001b, B:11:0x003d, B:15:0x0044, B:17:0x004a, B:18:0x0065, B:24:0x0094, B:21:0x006e, B:52:0x0137, B:54:0x013b, B:57:0x0144, B:59:0x014e, B:61:0x0156, B:62:0x015b, B:63:0x0160, B:66:0x0169, B:10:0x0023, B:26:0x0099, B:28:0x00a1, B:29:0x00ad, B:31:0x00b3, B:34:0x00bb, B:44:0x00e0, B:46:0x00ea, B:47:0x00f2, B:48:0x010d, B:51:0x0115, B:36:0x00c0, B:37:0x00cc, B:39:0x00d2, B:42:0x00db), top: B:74:0x0003, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x013b A[Catch: all -> 0x0185, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x001b, B:11:0x003d, B:15:0x0044, B:17:0x004a, B:18:0x0065, B:24:0x0094, B:21:0x006e, B:52:0x0137, B:54:0x013b, B:57:0x0144, B:59:0x014e, B:61:0x0156, B:62:0x015b, B:63:0x0160, B:66:0x0169, B:10:0x0023, B:26:0x0099, B:28:0x00a1, B:29:0x00ad, B:31:0x00b3, B:34:0x00bb, B:44:0x00e0, B:46:0x00ea, B:47:0x00f2, B:48:0x010d, B:51:0x0115, B:36:0x00c0, B:37:0x00cc, B:39:0x00d2, B:42:0x00db), top: B:74:0x0003, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0144 A[Catch: all -> 0x0185, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x001b, B:11:0x003d, B:15:0x0044, B:17:0x004a, B:18:0x0065, B:24:0x0094, B:21:0x006e, B:52:0x0137, B:54:0x013b, B:57:0x0144, B:59:0x014e, B:61:0x0156, B:62:0x015b, B:63:0x0160, B:66:0x0169, B:10:0x0023, B:26:0x0099, B:28:0x00a1, B:29:0x00ad, B:31:0x00b3, B:34:0x00bb, B:44:0x00e0, B:46:0x00ea, B:47:0x00f2, B:48:0x010d, B:51:0x0115, B:36:0x00c0, B:37:0x00cc, B:39:0x00d2, B:42:0x00db), top: B:74:0x0003, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x014e A[Catch: all -> 0x0185, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x001b, B:11:0x003d, B:15:0x0044, B:17:0x004a, B:18:0x0065, B:24:0x0094, B:21:0x006e, B:52:0x0137, B:54:0x013b, B:57:0x0144, B:59:0x014e, B:61:0x0156, B:62:0x015b, B:63:0x0160, B:66:0x0169, B:10:0x0023, B:26:0x0099, B:28:0x00a1, B:29:0x00ad, B:31:0x00b3, B:34:0x00bb, B:44:0x00e0, B:46:0x00ea, B:47:0x00f2, B:48:0x010d, B:51:0x0115, B:36:0x00c0, B:37:0x00cc, B:39:0x00d2, B:42:0x00db), top: B:74:0x0003, inners: #0, #2, #3, #4 }] */
    @Override // org.opencv.android.CameraGLRendererBase
    protected synchronized void openCamera(int i) {
        Camera camera;
        Camera.Parameters parameters;
        List<String> supportedFocusModes;
        int i2 = Build.VERSION.SDK_INT;
        synchronized (this) {
            Log.i(LOGTAG, "openCamera");
            closeCamera();
            int i3 = 0;
            if (i == -1) {
                Log.d(LOGTAG, "Trying to open camera with old open()");
                try {
                    this.mCamera = Camera.open();
                } catch (Exception e2) {
                    Log.e(LOGTAG, "Camera is not available (in use or does not exist): " + e2.getLocalizedMessage());
                }
                if (this.mCamera != null || i2 < 9) {
                    camera = this.mCamera;
                    if (camera == null) {
                        Log.e(LOGTAG, "Error: can't open camera");
                        return;
                    }
                    parameters = camera.getParameters();
                    supportedFocusModes = parameters.getSupportedFocusModes();
                    if (supportedFocusModes != null && supportedFocusModes.contains("continuous-video")) {
                        parameters.setFocusMode("continuous-video");
                    }
                    this.mCamera.setParameters(parameters);
                    try {
                        this.mCamera.setPreviewTexture(this.mSTexture);
                    } catch (IOException e3) {
                        Log.e(LOGTAG, "setPreviewTexture() failed: " + e3.getMessage());
                    }
                    return;
                }
                boolean z = false;
                while (i3 < Camera.getNumberOfCameras()) {
                    Log.d(LOGTAG, "Trying to open camera with new open(" + i3 + ")");
                    try {
                        this.mCamera = Camera.open(i3);
                        z = true;
                    } catch (RuntimeException e4) {
                        Log.e(LOGTAG, "Camera #" + i3 + "failed to open: " + e4.getLocalizedMessage());
                    }
                    if (z) {
                        break;
                    } else {
                        i3++;
                    }
                }
                camera = this.mCamera;
                if (camera == null) {
                    Log.e(LOGTAG, "Error: can't open camera");
                    return;
                }
                parameters = camera.getParameters();
                supportedFocusModes = parameters.getSupportedFocusModes();
                if (supportedFocusModes != null) {
                    parameters.setFocusMode("continuous-video");
                }
                this.mCamera.setParameters(parameters);
                this.mCamera.setPreviewTexture(this.mSTexture);
                return;
            }
            if (i2 < 9) {
                camera = this.mCamera;
                if (camera == null) {
                    Log.e(LOGTAG, "Error: can't open camera");
                    return;
                }
                parameters = camera.getParameters();
                supportedFocusModes = parameters.getSupportedFocusModes();
                if (supportedFocusModes != null) {
                    parameters.setFocusMode("continuous-video");
                }
                this.mCamera.setParameters(parameters);
                this.mCamera.setPreviewTexture(this.mSTexture);
                return;
            }
            int i4 = this.mCameraIndex;
            if (i4 == 99) {
                Log.i(LOGTAG, "Trying to open BACK camera");
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                while (i3 < Camera.getNumberOfCameras()) {
                    Camera.getCameraInfo(i3, cameraInfo);
                    if (cameraInfo.facing == 0) {
                        i4 = i3;
                        break;
                    }
                    i3++;
                }
            } else if (i4 == 98) {
                Log.i(LOGTAG, "Trying to open FRONT camera");
                Camera.CameraInfo cameraInfo2 = new Camera.CameraInfo();
                while (i3 < Camera.getNumberOfCameras()) {
                    Camera.getCameraInfo(i3, cameraInfo2);
                    if (cameraInfo2.facing == 1) {
                        i4 = i3;
                        break;
                    }
                    i3++;
                }
            }
            if (i4 == 99) {
                Log.e(LOGTAG, "Back camera not found!");
            } else if (i4 == 98) {
                Log.e(LOGTAG, "Front camera not found!");
            } else {
                Log.d(LOGTAG, "Trying to open camera with new open(" + i4 + ")");
                try {
                    this.mCamera = Camera.open(i4);
                } catch (RuntimeException e5) {
                    Log.e(LOGTAG, "Camera #" + i4 + "failed to open: " + e5.getLocalizedMessage());
                }
            }
            camera = this.mCamera;
            if (camera == null) {
                Log.e(LOGTAG, "Error: can't open camera");
                return;
            }
            parameters = camera.getParameters();
            supportedFocusModes = parameters.getSupportedFocusModes();
            if (supportedFocusModes != null) {
                parameters.setFocusMode("continuous-video");
            }
            this.mCamera.setParameters(parameters);
            this.mCamera.setPreviewTexture(this.mSTexture);
            return;
            throw th;
        }
    }

    @Override // org.opencv.android.CameraGLRendererBase
    public synchronized void setCameraPreviewSize(int i, int i2) {
        int i3 = i;
        int i4 = i2;
        synchronized (this) {
            Log.i(LOGTAG, "setCameraPreviewSize: " + i3 + "x" + i4);
            Camera camera = this.mCamera;
            if (camera == null) {
                Log.e(LOGTAG, "Camera isn't initialized!");
                return;
            }
            int i5 = this.mMaxCameraWidth;
            if (i5 > 0 && i5 < i3) {
                i3 = i5;
            }
            int i6 = this.mMaxCameraHeight;
            if (i6 > 0 && i6 < i4) {
                i4 = i6;
            }
            Camera.Parameters parameters = camera.getParameters();
            List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
            if (supportedPreviewSizes.size() > 0) {
                float f2 = i3 / i4;
                int i7 = 0;
                int i8 = 0;
                for (Camera.Size size : supportedPreviewSizes) {
                    int i9 = size.width;
                    int i10 = size.height;
                    Log.d(LOGTAG, "checking camera preview size: " + i9 + "x" + i10);
                    if (i9 <= i3 && i10 <= i4 && i9 >= i7 && i10 >= i8 && Math.abs(f2 - (i9 / i10)) < 0.2d) {
                        i8 = i10;
                        i7 = i9;
                    }
                }
                if (i7 <= 0 || i8 <= 0) {
                    i7 = supportedPreviewSizes.get(0).width;
                    i8 = supportedPreviewSizes.get(0).height;
                    Log.e(LOGTAG, "Error: best size was not selected, using " + i7 + " x " + i8);
                } else {
                    Log.i(LOGTAG, "Selected best size: " + i7 + " x " + i8);
                }
                if (this.mPreviewStarted) {
                    this.mCamera.stopPreview();
                    this.mPreviewStarted = false;
                }
                this.mCameraWidth = i7;
                this.mCameraHeight = i8;
                parameters.setPreviewSize(i7, i8);
            }
            parameters.set(Constant.PROTOCOL_WEBVIEW_ORIENTATION, "landscape");
            this.mCamera.setParameters(parameters);
            this.mCamera.startPreview();
            this.mPreviewStarted = true;
        }
    }
}
