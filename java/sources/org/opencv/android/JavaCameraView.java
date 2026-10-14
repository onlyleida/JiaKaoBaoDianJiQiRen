package org.opencv.android;

import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.mlkit.vision.common.InputImage;
import com.mobile.auth.gatewayauth.Constant;
import java.util.List;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.Size;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes6.dex */
public class JavaCameraView extends CameraBridgeViewBase implements Camera.PreviewCallback {
    private static final int MAGIC_TEXTURE_ID = 10;
    private static final String TAG = "JavaCameraView";
    private byte[] mBuffer;
    protected Camera mCamera;
    protected JavaCameraFrame[] mCameraFrame;
    private boolean mCameraFrameReady;
    private int mChainIdx;
    private Mat[] mFrameChain;
    private int mPreviewFormat;
    private boolean mStopThread;
    private SurfaceTexture mSurfaceTexture;
    private Thread mThread;

    private class CameraWorker implements Runnable {
        private CameraWorker() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            do {
                synchronized (JavaCameraView.this) {
                    while (!JavaCameraView.this.mCameraFrameReady && !JavaCameraView.this.mStopThread) {
                        try {
                            JavaCameraView.this.wait();
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    }
                    z = false;
                    if (JavaCameraView.this.mCameraFrameReady) {
                        JavaCameraView javaCameraView = JavaCameraView.this;
                        javaCameraView.mChainIdx = 1 - javaCameraView.mChainIdx;
                        JavaCameraView.this.mCameraFrameReady = false;
                        z = true;
                    }
                }
                if (!JavaCameraView.this.mStopThread && z && !JavaCameraView.this.mFrameChain[1 - JavaCameraView.this.mChainIdx].empty()) {
                    JavaCameraView javaCameraView2 = JavaCameraView.this;
                    javaCameraView2.deliverAndDrawFrame(javaCameraView2.mCameraFrame[1 - javaCameraView2.mChainIdx]);
                }
            } while (!JavaCameraView.this.mStopThread);
            Log.d(JavaCameraView.TAG, "Finish processing thread");
        }
    }

    private class JavaCameraFrame implements CameraBridgeViewBase.CvCameraViewFrame {
        private int mHeight;
        private Mat mRgba = new Mat();
        private int mWidth;
        private Mat mYuvFrameData;

        public JavaCameraFrame(Mat mat, int i, int i2) {
            this.mWidth = i;
            this.mHeight = i2;
            this.mYuvFrameData = mat;
        }

        @Override // org.opencv.android.CameraBridgeViewBase.CvCameraViewFrame
        public Mat gray() {
            return this.mYuvFrameData.submat(0, this.mHeight, 0, this.mWidth);
        }

        public void release() {
            this.mRgba.release();
        }

        @Override // org.opencv.android.CameraBridgeViewBase.CvCameraViewFrame
        public Mat rgba() {
            if (JavaCameraView.this.mPreviewFormat == 17) {
                Imgproc.cvtColor(this.mYuvFrameData, this.mRgba, 96, 4);
            } else {
                if (JavaCameraView.this.mPreviewFormat != 842094169) {
                    throw new IllegalArgumentException("Preview Format can be NV21 or YV12");
                }
                Imgproc.cvtColor(this.mYuvFrameData, this.mRgba, 100, 4);
            }
            return this.mRgba;
        }
    }

    public static class JavaCameraSizeAccessor implements CameraBridgeViewBase.ListItemAccessor {
        @Override // org.opencv.android.CameraBridgeViewBase.ListItemAccessor
        public int getHeight(Object obj) {
            return ((Camera.Size) obj).height;
        }

        @Override // org.opencv.android.CameraBridgeViewBase.ListItemAccessor
        public int getWidth(Object obj) {
            return ((Camera.Size) obj).width;
        }
    }

    public JavaCameraView(Context context, int i) {
        super(context, i);
        this.mChainIdx = 0;
        this.mPreviewFormat = 17;
        this.mCameraFrameReady = false;
    }

    @Override // org.opencv.android.CameraBridgeViewBase
    protected boolean connectCamera(int i, int i2) {
        Log.d(TAG, "Connecting to camera");
        if (!initializeCamera(i, i2)) {
            return false;
        }
        this.mCameraFrameReady = false;
        Log.d(TAG, "Starting processing thread");
        this.mStopThread = false;
        Thread thread = new Thread(new CameraWorker());
        this.mThread = thread;
        thread.start();
        return true;
    }

    @Override // org.opencv.android.CameraBridgeViewBase
    protected void disconnectCamera() {
        Log.d(TAG, "Disconnecting from camera");
        try {
            try {
                this.mStopThread = true;
                Log.d(TAG, "Notify thread");
                synchronized (this) {
                    notify();
                }
                Log.d(TAG, "Waiting for thread");
                Thread thread = this.mThread;
                if (thread != null) {
                    thread.join();
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            this.mThread = null;
            releaseCamera();
            this.mCameraFrameReady = false;
        } catch (Throwable th) {
            this.mThread = null;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02dc A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x02eb A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0148 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0142 A[Catch: all -> 0x0304, EDGE_INSN: B:24:0x0099->B:53:0x0142 BREAK  A[LOOP:0: B:16:0x0047->B:25:0x009b], TryCatch #1 {, blocks: (B:5:0x000b, B:7:0x0016, B:8:0x001d, B:12:0x003f, B:16:0x0047, B:18:0x004d, B:19:0x006c, B:25:0x009b, B:22:0x0075, B:53:0x0142, B:55:0x0146, B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd, B:107:0x0302, B:106:0x02ff, B:11:0x0025, B:29:0x00a6, B:30:0x00b3, B:32:0x00b9, B:35:0x00c1, B:45:0x00e7, B:47:0x00f1, B:48:0x00f9, B:49:0x0118, B:52:0x0120, B:37:0x00c6, B:38:0x00d3, B:40:0x00d9, B:43:0x00e2), top: B:114:0x000b, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0146 A[Catch: all -> 0x0304, DONT_GENERATE, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x000b, B:7:0x0016, B:8:0x001d, B:12:0x003f, B:16:0x0047, B:18:0x004d, B:19:0x006c, B:25:0x009b, B:22:0x0075, B:53:0x0142, B:55:0x0146, B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd, B:107:0x0302, B:106:0x02ff, B:11:0x0025, B:29:0x00a6, B:30:0x00b3, B:32:0x00b9, B:35:0x00c1, B:45:0x00e7, B:47:0x00f1, B:48:0x00f9, B:49:0x0118, B:52:0x0120, B:37:0x00c6, B:38:0x00d3, B:40:0x00d9, B:43:0x00e2), top: B:114:0x000b, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0159 A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x016c A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01bd A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0202 A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0215 A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0245 A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x025e A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0265 A[Catch: Exception -> 0x02fe, all -> 0x0304, TryCatch #0 {Exception -> 0x02fe, blocks: (B:57:0x0148, B:59:0x0159, B:61:0x016c, B:63:0x0174, B:65:0x017e, B:67:0x0186, B:69:0x018e, B:71:0x0198, B:73:0x01a2, B:75:0x01ac, B:78:0x01b7, B:80:0x01c3, B:82:0x0202, B:84:0x020c, B:85:0x020f, B:87:0x0215, B:89:0x021d, B:90:0x0222, B:92:0x0245, B:94:0x024d, B:96:0x0261, B:98:0x0265, B:99:0x026c, B:101:0x02dc, B:103:0x02f0, B:102:0x02eb, B:95:0x025e, B:79:0x01bd), top: B:112:0x0148, outer: #1 }] */
    protected boolean initializeCamera(int i, int i2) {
        int i3;
        Camera camera;
        Camera.Parameters parameters;
        List<Camera.Size> supportedPreviewSizes;
        String str;
        List<String> supportedFocusModes;
        FpsMeter fpsMeter;
        int i4 = Build.VERSION.SDK_INT;
        Log.d(TAG, "Initialize java camera");
        synchronized (this) {
            this.mCamera = null;
            int i5 = this.mCameraIndex;
            boolean z = false;
            if (i5 != -1) {
                if (i4 < 9) {
                    camera = this.mCamera;
                    if (camera == null) {
                        return false;
                    }
                    parameters = camera.getParameters();
                    Log.d(TAG, "getSupportedPreviewSizes()");
                    supportedPreviewSizes = parameters.getSupportedPreviewSizes();
                    if (supportedPreviewSizes != null) {
                        Size sizeCalculateCameraFrameSize = calculateCameraFrameSize(supportedPreviewSizes, new JavaCameraSizeAccessor(), i, i2);
                        str = Build.FINGERPRINT;
                        if (str.startsWith("generic")) {
                            parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                        } else {
                            parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                        }
                        this.mPreviewFormat = parameters.getPreviewFormat();
                        Log.d(TAG, "Set preview size to " + Integer.valueOf((int) sizeCalculateCameraFrameSize.width) + "x" + Integer.valueOf((int) sizeCalculateCameraFrameSize.height));
                        parameters.setPreviewSize((int) sizeCalculateCameraFrameSize.width, (int) sizeCalculateCameraFrameSize.height);
                        if (i4 >= 14) {
                            parameters.setRecordingHint(true);
                        }
                        supportedFocusModes = parameters.getSupportedFocusModes();
                        if (supportedFocusModes != null) {
                            parameters.setFocusMode("continuous-video");
                        }
                        this.mCamera.setParameters(parameters);
                        Camera.Parameters parameters2 = this.mCamera.getParameters();
                        this.mFrameWidth = parameters2.getPreviewSize().width;
                        this.mFrameHeight = parameters2.getPreviewSize().height;
                        if (getLayoutParams().width == -1) {
                            this.mScale = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            this.mScale = BitmapDescriptorFactory.HUE_RED;
                        }
                        fpsMeter = this.mFpsMeter;
                        if (fpsMeter != null) {
                            fpsMeter.setResolution(this.mFrameWidth, this.mFrameHeight);
                        }
                        byte[] bArr = new byte[((this.mFrameWidth * this.mFrameHeight) * ImageFormat.getBitsPerPixel(parameters2.getPreviewFormat())) / 8];
                        this.mBuffer = bArr;
                        this.mCamera.addCallbackBuffer(bArr);
                        this.mCamera.setPreviewCallbackWithBuffer(this);
                        Mat[] matArr = new Mat[2];
                        this.mFrameChain = matArr;
                        int i6 = this.mFrameHeight;
                        int i7 = this.mFrameWidth;
                        int i8 = CvType.CV_8UC1;
                        matArr[0] = new Mat(i6 + (i6 / 2), i7, i8);
                        Mat[] matArr2 = this.mFrameChain;
                        int i9 = this.mFrameHeight;
                        matArr2[1] = new Mat(i9 + (i9 / 2), this.mFrameWidth, i8);
                        AllocateCache();
                        JavaCameraFrame[] javaCameraFrameArr = new JavaCameraFrame[2];
                        this.mCameraFrame = javaCameraFrameArr;
                        javaCameraFrameArr[0] = new JavaCameraFrame(this.mFrameChain[0], this.mFrameWidth, this.mFrameHeight);
                        this.mCameraFrame[1] = new JavaCameraFrame(this.mFrameChain[1], this.mFrameWidth, this.mFrameHeight);
                        if (i4 >= 11) {
                            SurfaceTexture surfaceTexture = new SurfaceTexture(10);
                            this.mSurfaceTexture = surfaceTexture;
                            this.mCamera.setPreviewTexture(surfaceTexture);
                        } else {
                            this.mCamera.setPreviewDisplay(null);
                        }
                        Log.d(TAG, "startPreview");
                        this.mCamera.startPreview();
                        z = true;
                    }
                    return z;
                }
                if (i5 == 99) {
                    Log.i(TAG, "Trying to open back camera");
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    i3 = 0;
                    while (i3 < Camera.getNumberOfCameras()) {
                        Camera.getCameraInfo(i3, cameraInfo);
                        if (cameraInfo.facing == 0) {
                            i5 = i3;
                            break;
                        }
                        i3++;
                    }
                } else if (i5 == 98) {
                    Log.i(TAG, "Trying to open front camera");
                    Camera.CameraInfo cameraInfo2 = new Camera.CameraInfo();
                    i3 = 0;
                    while (i3 < Camera.getNumberOfCameras()) {
                        Camera.getCameraInfo(i3, cameraInfo2);
                        if (cameraInfo2.facing == 1) {
                            i5 = i3;
                            break;
                        }
                        i3++;
                    }
                }
                if (i5 == 99) {
                    Log.e(TAG, "Back camera not found!");
                } else if (i5 == 98) {
                    Log.e(TAG, "Front camera not found!");
                } else {
                    Log.d(TAG, "Trying to open camera with new open(" + Integer.valueOf(i5) + ")");
                    try {
                        this.mCamera = Camera.open(i5);
                    } catch (RuntimeException e2) {
                        Log.e(TAG, "Camera #" + i5 + "failed to open: " + e2.getLocalizedMessage());
                    }
                }
                camera = this.mCamera;
                if (camera == null) {
                    return false;
                }
                parameters = camera.getParameters();
                Log.d(TAG, "getSupportedPreviewSizes()");
                supportedPreviewSizes = parameters.getSupportedPreviewSizes();
                if (supportedPreviewSizes != null) {
                    Size sizeCalculateCameraFrameSize2 = calculateCameraFrameSize(supportedPreviewSizes, new JavaCameraSizeAccessor(), i, i2);
                    str = Build.FINGERPRINT;
                    if (str.startsWith("generic")) {
                        parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                    } else {
                        parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                    }
                    this.mPreviewFormat = parameters.getPreviewFormat();
                    Log.d(TAG, "Set preview size to " + Integer.valueOf((int) sizeCalculateCameraFrameSize2.width) + "x" + Integer.valueOf((int) sizeCalculateCameraFrameSize2.height));
                    parameters.setPreviewSize((int) sizeCalculateCameraFrameSize2.width, (int) sizeCalculateCameraFrameSize2.height);
                    if (i4 >= 14) {
                        parameters.setRecordingHint(true);
                    }
                    supportedFocusModes = parameters.getSupportedFocusModes();
                    if (supportedFocusModes != null) {
                        parameters.setFocusMode("continuous-video");
                    }
                    this.mCamera.setParameters(parameters);
                    Camera.Parameters parameters3 = this.mCamera.getParameters();
                    this.mFrameWidth = parameters3.getPreviewSize().width;
                    this.mFrameHeight = parameters3.getPreviewSize().height;
                    if (getLayoutParams().width == -1) {
                        this.mScale = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        this.mScale = BitmapDescriptorFactory.HUE_RED;
                    }
                    fpsMeter = this.mFpsMeter;
                    if (fpsMeter != null) {
                        fpsMeter.setResolution(this.mFrameWidth, this.mFrameHeight);
                    }
                    byte[] bArr2 = new byte[((this.mFrameWidth * this.mFrameHeight) * ImageFormat.getBitsPerPixel(parameters3.getPreviewFormat())) / 8];
                    this.mBuffer = bArr2;
                    this.mCamera.addCallbackBuffer(bArr2);
                    this.mCamera.setPreviewCallbackWithBuffer(this);
                    Mat[] matArr3 = new Mat[2];
                    this.mFrameChain = matArr3;
                    int i10 = this.mFrameHeight;
                    int i11 = this.mFrameWidth;
                    int i12 = CvType.CV_8UC1;
                    matArr3[0] = new Mat(i10 + (i10 / 2), i11, i12);
                    Mat[] matArr4 = this.mFrameChain;
                    int i13 = this.mFrameHeight;
                    matArr4[1] = new Mat(i13 + (i13 / 2), this.mFrameWidth, i12);
                    AllocateCache();
                    JavaCameraFrame[] javaCameraFrameArr2 = new JavaCameraFrame[2];
                    this.mCameraFrame = javaCameraFrameArr2;
                    javaCameraFrameArr2[0] = new JavaCameraFrame(this.mFrameChain[0], this.mFrameWidth, this.mFrameHeight);
                    this.mCameraFrame[1] = new JavaCameraFrame(this.mFrameChain[1], this.mFrameWidth, this.mFrameHeight);
                    if (i4 >= 11) {
                        SurfaceTexture surfaceTexture2 = new SurfaceTexture(10);
                        this.mSurfaceTexture = surfaceTexture2;
                        this.mCamera.setPreviewTexture(surfaceTexture2);
                    } else {
                        this.mCamera.setPreviewDisplay(null);
                    }
                    Log.d(TAG, "startPreview");
                    this.mCamera.startPreview();
                    z = true;
                }
                return z;
            }
            Log.d(TAG, "Trying to open camera with old open()");
            try {
                this.mCamera = Camera.open();
            } catch (Exception e3) {
                Log.e(TAG, "Camera is not available (in use or does not exist): " + e3.getLocalizedMessage());
            }
            if (this.mCamera != null || i4 < 9) {
                camera = this.mCamera;
                if (camera == null) {
                    return false;
                }
                try {
                    parameters = camera.getParameters();
                    Log.d(TAG, "getSupportedPreviewSizes()");
                    supportedPreviewSizes = parameters.getSupportedPreviewSizes();
                    if (supportedPreviewSizes != null) {
                        Size sizeCalculateCameraFrameSize3 = calculateCameraFrameSize(supportedPreviewSizes, new JavaCameraSizeAccessor(), i, i2);
                        str = Build.FINGERPRINT;
                        if (str.startsWith("generic") || str.startsWith(Constant.VENDOR_UNKNOWN)) {
                            parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                        } else {
                            String str2 = Build.MODEL;
                            if (str2.contains("google_sdk") || str2.contains("Emulator") || str2.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || ((Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT))) {
                                parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                            } else {
                                parameters.setPreviewFormat(17);
                            }
                        }
                        this.mPreviewFormat = parameters.getPreviewFormat();
                        Log.d(TAG, "Set preview size to " + Integer.valueOf((int) sizeCalculateCameraFrameSize3.width) + "x" + Integer.valueOf((int) sizeCalculateCameraFrameSize3.height));
                        parameters.setPreviewSize((int) sizeCalculateCameraFrameSize3.width, (int) sizeCalculateCameraFrameSize3.height);
                        if (i4 >= 14 && !Build.MODEL.equals("GT-I9100")) {
                            parameters.setRecordingHint(true);
                        }
                        supportedFocusModes = parameters.getSupportedFocusModes();
                        if (supportedFocusModes != null && supportedFocusModes.contains("continuous-video")) {
                            parameters.setFocusMode("continuous-video");
                        }
                        this.mCamera.setParameters(parameters);
                        Camera.Parameters parameters4 = this.mCamera.getParameters();
                        this.mFrameWidth = parameters4.getPreviewSize().width;
                        this.mFrameHeight = parameters4.getPreviewSize().height;
                        if (getLayoutParams().width == -1 || getLayoutParams().height != -1) {
                            this.mScale = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            this.mScale = Math.min(i2 / this.mFrameHeight, i / this.mFrameWidth);
                        }
                        fpsMeter = this.mFpsMeter;
                        if (fpsMeter != null) {
                            fpsMeter.setResolution(this.mFrameWidth, this.mFrameHeight);
                        }
                        byte[] bArr3 = new byte[((this.mFrameWidth * this.mFrameHeight) * ImageFormat.getBitsPerPixel(parameters4.getPreviewFormat())) / 8];
                        this.mBuffer = bArr3;
                        this.mCamera.addCallbackBuffer(bArr3);
                        this.mCamera.setPreviewCallbackWithBuffer(this);
                        Mat[] matArr5 = new Mat[2];
                        this.mFrameChain = matArr5;
                        int i14 = this.mFrameHeight;
                        int i15 = this.mFrameWidth;
                        int i16 = CvType.CV_8UC1;
                        matArr5[0] = new Mat(i14 + (i14 / 2), i15, i16);
                        Mat[] matArr6 = this.mFrameChain;
                        int i17 = this.mFrameHeight;
                        matArr6[1] = new Mat(i17 + (i17 / 2), this.mFrameWidth, i16);
                        AllocateCache();
                        JavaCameraFrame[] javaCameraFrameArr3 = new JavaCameraFrame[2];
                        this.mCameraFrame = javaCameraFrameArr3;
                        javaCameraFrameArr3[0] = new JavaCameraFrame(this.mFrameChain[0], this.mFrameWidth, this.mFrameHeight);
                        this.mCameraFrame[1] = new JavaCameraFrame(this.mFrameChain[1], this.mFrameWidth, this.mFrameHeight);
                        if (i4 >= 11) {
                            SurfaceTexture surfaceTexture3 = new SurfaceTexture(10);
                            this.mSurfaceTexture = surfaceTexture3;
                            this.mCamera.setPreviewTexture(surfaceTexture3);
                        } else {
                            this.mCamera.setPreviewDisplay(null);
                        }
                        Log.d(TAG, "startPreview");
                        this.mCamera.startPreview();
                        z = true;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return z;
            }
            boolean z2 = false;
            for (int i18 = 0; i18 < Camera.getNumberOfCameras(); i18++) {
                Log.d(TAG, "Trying to open camera with new open(" + Integer.valueOf(i18) + ")");
                try {
                    this.mCamera = Camera.open(i18);
                    z2 = true;
                } catch (RuntimeException e5) {
                    Log.e(TAG, "Camera #" + i18 + "failed to open: " + e5.getLocalizedMessage());
                }
                if (z2) {
                    break;
                }
            }
            camera = this.mCamera;
            if (camera == null) {
                return false;
            }
            parameters = camera.getParameters();
            Log.d(TAG, "getSupportedPreviewSizes()");
            supportedPreviewSizes = parameters.getSupportedPreviewSizes();
            if (supportedPreviewSizes != null) {
                Size sizeCalculateCameraFrameSize4 = calculateCameraFrameSize(supportedPreviewSizes, new JavaCameraSizeAccessor(), i, i2);
                str = Build.FINGERPRINT;
                if (str.startsWith("generic")) {
                    parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                } else {
                    parameters.setPreviewFormat(InputImage.IMAGE_FORMAT_YV12);
                }
                this.mPreviewFormat = parameters.getPreviewFormat();
                Log.d(TAG, "Set preview size to " + Integer.valueOf((int) sizeCalculateCameraFrameSize4.width) + "x" + Integer.valueOf((int) sizeCalculateCameraFrameSize4.height));
                parameters.setPreviewSize((int) sizeCalculateCameraFrameSize4.width, (int) sizeCalculateCameraFrameSize4.height);
                if (i4 >= 14) {
                    parameters.setRecordingHint(true);
                }
                supportedFocusModes = parameters.getSupportedFocusModes();
                if (supportedFocusModes != null) {
                    parameters.setFocusMode("continuous-video");
                }
                this.mCamera.setParameters(parameters);
                Camera.Parameters parameters5 = this.mCamera.getParameters();
                this.mFrameWidth = parameters5.getPreviewSize().width;
                this.mFrameHeight = parameters5.getPreviewSize().height;
                if (getLayoutParams().width == -1) {
                    this.mScale = BitmapDescriptorFactory.HUE_RED;
                } else {
                    this.mScale = BitmapDescriptorFactory.HUE_RED;
                }
                fpsMeter = this.mFpsMeter;
                if (fpsMeter != null) {
                    fpsMeter.setResolution(this.mFrameWidth, this.mFrameHeight);
                }
                byte[] bArr4 = new byte[((this.mFrameWidth * this.mFrameHeight) * ImageFormat.getBitsPerPixel(parameters5.getPreviewFormat())) / 8];
                this.mBuffer = bArr4;
                this.mCamera.addCallbackBuffer(bArr4);
                this.mCamera.setPreviewCallbackWithBuffer(this);
                Mat[] matArr7 = new Mat[2];
                this.mFrameChain = matArr7;
                int i19 = this.mFrameHeight;
                int i110 = this.mFrameWidth;
                int i111 = CvType.CV_8UC1;
                matArr7[0] = new Mat(i19 + (i19 / 2), i110, i111);
                Mat[] matArr8 = this.mFrameChain;
                int i112 = this.mFrameHeight;
                matArr8[1] = new Mat(i112 + (i112 / 2), this.mFrameWidth, i111);
                AllocateCache();
                JavaCameraFrame[] javaCameraFrameArr4 = new JavaCameraFrame[2];
                this.mCameraFrame = javaCameraFrameArr4;
                javaCameraFrameArr4[0] = new JavaCameraFrame(this.mFrameChain[0], this.mFrameWidth, this.mFrameHeight);
                this.mCameraFrame[1] = new JavaCameraFrame(this.mFrameChain[1], this.mFrameWidth, this.mFrameHeight);
                if (i4 >= 11) {
                    SurfaceTexture surfaceTexture4 = new SurfaceTexture(10);
                    this.mSurfaceTexture = surfaceTexture4;
                    this.mCamera.setPreviewTexture(surfaceTexture4);
                } else {
                    this.mCamera.setPreviewDisplay(null);
                }
                Log.d(TAG, "startPreview");
                this.mCamera.startPreview();
                z = true;
            }
            return z;
            throw th;
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        synchronized (this) {
            this.mFrameChain[this.mChainIdx].put(0, 0, bArr);
            this.mCameraFrameReady = true;
            notify();
        }
        Camera camera2 = this.mCamera;
        if (camera2 != null) {
            camera2.addCallbackBuffer(this.mBuffer);
        }
    }

    protected void releaseCamera() {
        synchronized (this) {
            Camera camera = this.mCamera;
            if (camera != null) {
                camera.stopPreview();
                this.mCamera.setPreviewCallback(null);
                this.mCamera.release();
            }
            this.mCamera = null;
            Mat[] matArr = this.mFrameChain;
            if (matArr != null) {
                matArr[0].release();
                this.mFrameChain[1].release();
            }
            JavaCameraFrame[] javaCameraFrameArr = this.mCameraFrame;
            if (javaCameraFrameArr != null) {
                javaCameraFrameArr[0].release();
                this.mCameraFrame[1].release();
            }
        }
    }

    public JavaCameraView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChainIdx = 0;
        this.mPreviewFormat = 17;
        this.mCameraFrameReady = false;
    }
}
