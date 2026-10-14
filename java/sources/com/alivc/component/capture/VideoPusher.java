package com.alivc.component.capture;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.SystemClock;
import com.alivc.live.pusher.LogUtil;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class VideoPusher {
    private static int MIN_CAP_RESOLUTION = 192;
    private static final int SCREEN_LANDSCAPE_LEFT = 90;
    private static final int SCREEN_LANDSCAPE_RIGHT = 270;
    private static final int SCREEN_PORTRAIT = 0;
    private static final String TAG = "VideoPusher";
    private static byte[] buffer;
    private static byte[] buffer1;
    private static byte[] buffer2;
    private static int supportMaxWH;
    private Camera mCamera;
    private int mDataOrientation;
    private int mOrientation;
    private VideoParam mParam;
    private boolean mPreviewRunning;
    private int mScreen;
    private static Map<Integer, List<Camera.Size>> sSupportedResolutionMap = new HashMap();
    private static List<Integer> sSupportedFormat = new ArrayList();
    private final int TIME_MILLISECOND = 1000;
    private final float INITIATE_VALUE = -1.0f;
    private final float MAG_DELTA_DIFF = 5.0f;
    private final float ACCEL_DELTA_DIFF = 0.6f;
    private final float ACCEL_DELTAXYZ_DIFF = 1.4f;
    private boolean mPause = false;
    private VideoSourceListener mVideoSourceListener = null;
    private VideoSourceTextureListener mVideoSourceTextureListener = null;
    private boolean mSwitchCamera = false;
    private long mLastCaptureTime = 0;
    private long mLastFpsCountTime = 0;
    private int mLastFpsCounter = 0;
    private int mBelowMinFpsNumberTimes = 0;
    private int mCurrentFps = 0;
    private long mBaseWallTime = 0;
    private long mStartElapsedTime = 0;
    private boolean mSurfaceCbMode = false;
    private int mSurfaceTextureId = -1;
    private boolean mFlashOn = false;
    private boolean mAutoFocus = false;
    private boolean mAutoFocusing = false;
    private SurfaceTexture mSurfaceTexture = null;
    private SensorManager mSensorManager = null;
    private Sensor mAccelSensor = null;
    private Sensor mMagneticSensor = null;
    private float mLastXAccel = -1.0f;
    private float mLastYAccel = -1.0f;
    private float mLastZAccel = -1.0f;
    private float mLastXMag = -1.0f;
    private float mLastYMag = -1.0f;
    private float mLastZMag = -1.0f;
    private int mCustomRotation = 0;
    private boolean mSensorFocus = false;
    private SurfaceTexture.OnFrameAvailableListener mOnFrameAvailableListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: com.alivc.component.capture.VideoPusher.1
        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public void onFrameAvailable(SurfaceTexture surfaceTexture) {
            VideoSourceTextureListener videoSourceTextureListener;
            int cameraId;
            int i;
            System.currentTimeMillis();
            if (VideoPusher.this.mVideoSourceTextureListener != null) {
                if (VideoPusher.this.mBaseWallTime == 0) {
                    VideoPusher.this.mBaseWallTime = System.currentTimeMillis();
                    VideoPusher.this.mStartElapsedTime = SystemClock.elapsedRealtime();
                }
                if (VideoPusher.this.mParam != null) {
                    long jElapsedRealtime = (VideoPusher.this.mBaseWallTime + (SystemClock.elapsedRealtime() - VideoPusher.this.mStartElapsedTime)) * 1000;
                    if (VideoPusher.this.mCustomRotation > 0) {
                        videoSourceTextureListener = VideoPusher.this.mVideoSourceTextureListener;
                        cameraId = VideoPusher.this.mParam.getCameraId();
                        i = VideoPusher.this.mCustomRotation % 360;
                    } else {
                        videoSourceTextureListener = VideoPusher.this.mVideoSourceTextureListener;
                        cameraId = VideoPusher.this.mParam.getCameraId();
                        i = VideoPusher.this.mDataOrientation;
                    }
                    videoSourceTextureListener.onVideoFrame(jElapsedRealtime, cameraId, i, VideoPusher.this.mParam.getWidth(), VideoPusher.this.mParam.getHeight(), 17);
                }
            }
            VideoPusher.this.mLastCaptureTime = System.currentTimeMillis();
            VideoPusher.access$708(VideoPusher.this);
        }
    };
    private Camera.PreviewCallback mPreviewCallback = new Camera.PreviewCallback() { // from class: com.alivc.component.capture.VideoPusher.2
        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            System.currentTimeMillis();
            if (VideoPusher.this.mVideoSourceListener != null) {
                if (VideoPusher.this.mBaseWallTime == 0) {
                    VideoPusher.this.mBaseWallTime = System.currentTimeMillis();
                    VideoPusher.this.mStartElapsedTime = SystemClock.elapsedRealtime();
                }
                if (!VideoPusher.this.mPause && VideoPusher.this.mParam != null) {
                    long jElapsedRealtime = (VideoPusher.this.mBaseWallTime + (SystemClock.elapsedRealtime() - VideoPusher.this.mStartElapsedTime)) * 1000;
                    if (VideoPusher.this.mCustomRotation > 0) {
                        VideoPusher.this.mVideoSourceListener.onVideoFrame(bArr, jElapsedRealtime, VideoPusher.this.mParam.getCameraId(), VideoPusher.this.mCustomRotation % 360, VideoPusher.this.mParam.getWidth(), VideoPusher.this.mParam.getHeight(), 17);
                    } else {
                        VideoPusher.this.mVideoSourceListener.onVideoFrame(bArr, jElapsedRealtime, VideoPusher.this.mParam.getCameraId(), VideoPusher.this.mDataOrientation, VideoPusher.this.mParam.getWidth(), VideoPusher.this.mParam.getHeight(), 17);
                    }
                }
            }
            VideoPusher.this.mLastCaptureTime = System.currentTimeMillis();
            VideoPusher.access$708(VideoPusher.this);
            if (VideoPusher.this.mLastFpsCountTime == 0) {
                VideoPusher videoPusher = VideoPusher.this;
                videoPusher.mLastFpsCountTime = videoPusher.mLastCaptureTime;
            }
            if (VideoPusher.this.mLastCaptureTime - VideoPusher.this.mLastFpsCountTime > 1000) {
                LogUtil.d(VideoPusher.TAG, "StatLog: video capture fps = " + VideoPusher.this.mLastFpsCounter);
                VideoPusher videoPusher2 = VideoPusher.this;
                videoPusher2.mCurrentFps = videoPusher2.mLastFpsCounter;
                if (VideoPusher.this.mLastFpsCounter >= 12 || VideoPusher.this.mBelowMinFpsNumberTimes > 5) {
                    VideoPusher.this.mBelowMinFpsNumberTimes = 0;
                } else {
                    VideoPusher.access$1208(VideoPusher.this);
                }
                VideoPusher.this.mLastFpsCounter = 0;
                VideoPusher videoPusher3 = VideoPusher.this;
                videoPusher3.mLastFpsCountTime = videoPusher3.mLastCaptureTime;
            }
            if (camera != null) {
                camera.addCallbackBuffer(bArr);
            }
        }
    };
    private SensorEventListener mSensorEventListener = new SensorEventListener() { // from class: com.alivc.component.capture.VideoPusher.4
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (VideoPusher.this.isPreviewRunning() && VideoPusher.this.mParam.getCameraId() == 0) {
                if (sensorEvent.sensor.getType() == 2) {
                    if (VideoPusher.this.mLastXMag == -1.0f) {
                        VideoPusher.this.mLastXMag = sensorEvent.values[0];
                        VideoPusher.this.mLastYMag = sensorEvent.values[1];
                        VideoPusher.this.mLastZMag = sensorEvent.values[2];
                        return;
                    }
                    float fAbs = Math.abs(VideoPusher.this.mLastXMag - sensorEvent.values[0]);
                    float fAbs2 = Math.abs(VideoPusher.this.mLastYMag - sensorEvent.values[1]);
                    float fAbs3 = Math.abs(VideoPusher.this.mLastZMag - sensorEvent.values[2]);
                    if ((fAbs > 5.0f || fAbs2 > 5.0f || fAbs3 > 5.0f) && !VideoPusher.this.mAutoFocusing) {
                        VideoPusher.this.cameraAutoFocus();
                        VideoPusher.this.mLastXMag = sensorEvent.values[0];
                        VideoPusher.this.mLastYMag = sensorEvent.values[1];
                        VideoPusher.this.mLastZMag = sensorEvent.values[2];
                    }
                }
                if (sensorEvent.sensor.getType() == 1) {
                    if (VideoPusher.this.mLastXAccel == -1.0f) {
                        VideoPusher.this.mLastXAccel = sensorEvent.values[0];
                        VideoPusher.this.mLastYAccel = sensorEvent.values[1];
                        VideoPusher.this.mLastZAccel = sensorEvent.values[2];
                        return;
                    }
                    float fAbs4 = Math.abs(VideoPusher.this.mLastXAccel - sensorEvent.values[0]);
                    float fAbs5 = Math.abs(VideoPusher.this.mLastYAccel - sensorEvent.values[1]);
                    float fAbs6 = Math.abs(VideoPusher.this.mLastZAccel - sensorEvent.values[2]);
                    if (Math.sqrt((fAbs4 * fAbs4) + (fAbs5 * fAbs5) + (fAbs6 * fAbs6)) > 1.399999976158142d && !VideoPusher.this.mAutoFocusing) {
                        VideoPusher.this.cameraAutoFocus();
                        VideoPusher.this.mLastXAccel = sensorEvent.values[0];
                        VideoPusher.this.mLastYAccel = sensorEvent.values[1];
                        VideoPusher.this.mLastZAccel = sensorEvent.values[2];
                        return;
                    }
                    if ((fAbs4 > 0.6f || fAbs5 > 0.6f || fAbs6 > 0.6f) && !VideoPusher.this.mAutoFocusing) {
                        VideoPusher.this.cameraAutoFocus();
                        VideoPusher.this.mLastXAccel = sensorEvent.values[0];
                        VideoPusher.this.mLastYAccel = sensorEvent.values[1];
                        VideoPusher.this.mLastZAccel = sensorEvent.values[2];
                    }
                }
            }
        }
    };

    public interface VideoSourceListener {
        void onVideoFrame(byte[] bArr, long j, int i, int i2, int i3, int i4, int i5);
    }

    public interface VideoSourceTextureListener {
        void onVideoFrame(long j, int i, int i2, int i3, int i4, int i5);
    }

    static /* synthetic */ int access$1208(VideoPusher videoPusher) {
        int i = videoPusher.mBelowMinFpsNumberTimes;
        videoPusher.mBelowMinFpsNumberTimes = i + 1;
        return i;
    }

    static /* synthetic */ int access$708(VideoPusher videoPusher) {
        int i = videoPusher.mLastFpsCounter;
        videoPusher.mLastFpsCounter = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cameraAutoFocus() {
        try {
            this.mAutoFocusing = true;
            if (this.mCamera.getParameters().getFocusMode().equals("continuous-video")) {
                return;
            }
            if (!this.mCamera.getParameters().getFocusMode().equals("auto")) {
                try {
                    Camera.Parameters parameters = this.mCamera.getParameters();
                    parameters.setFocusMode("auto");
                    this.mCamera.setParameters(parameters);
                } catch (RuntimeException e2) {
                    LogUtil.e(TAG, "setParameters failed with " + e2.getMessage());
                }
            }
            this.mCamera.autoFocus(new Camera.AutoFocusCallback() { // from class: com.alivc.component.capture.VideoPusher.5
                @Override // android.hardware.Camera.AutoFocusCallback
                public void onAutoFocus(boolean z, Camera camera) {
                    VideoPusher.this.mAutoFocusing = false;
                }
            });
        } catch (RuntimeException e3) {
            LogUtil.e(TAG, "getParameters failed with " + e3.getMessage());
        }
    }

    public static List<Integer> getSupportedFormats() {
        if (sSupportedFormat.size() <= 0) {
            Camera cameraOpen = Camera.open(0);
            try {
                Camera.Parameters parameters = cameraOpen.getParameters();
                cameraOpen.release();
                sSupportedFormat = parameters.getSupportedPreviewFormats();
            } catch (Exception unused) {
                return null;
            }
        }
        return sSupportedFormat;
    }

    public static List<Camera.Size> getSupportedResolutions(int i) {
        if (!sSupportedResolutionMap.containsKey(Integer.valueOf(i))) {
            Camera cameraOpen = Camera.open(i);
            try {
                Camera.Parameters parameters = cameraOpen.getParameters();
                cameraOpen.release();
                sSupportedResolutionMap.put(Integer.valueOf(i), parameters.getSupportedPreviewSizes());
            } catch (Exception unused) {
                return null;
            }
        }
        return sSupportedResolutionMap.get(Integer.valueOf(i));
    }

    private boolean isHasPermission() {
        try {
            Field declaredField = this.mCamera.getClass().getDeclaredField("mHasPermission");
            declaredField.setAccessible(true);
            return ((Boolean) declaredField.get(this.mCamera)).booleanValue();
        } catch (Exception unused) {
            return true;
        }
    }

    private void preparePublisher(int i, int i2) {
        LogUtil.d(TAG, "prepare publisher. " + this.mOrientation + " " + this.mParam.getCameraId());
        if (this.mSwitchCamera || this.mPause) {
            this.mSwitchCamera = false;
        } else {
            LogUtil.d(TAG, "prepare publisher over.");
        }
    }

    private void setPreviewFpsRange(Camera.Parameters parameters) {
        int iAbs;
        int fps = this.mParam.getFps() * 1000;
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        int[] iArr = new int[2];
        if (supportedPreviewFpsRange.size() > 0) {
            int[] iArr2 = supportedPreviewFpsRange.get(0);
            iAbs = Math.abs(iArr2[0] - fps) + Math.abs(iArr2[1] - fps);
            iArr[0] = iArr2[0];
            iArr[1] = iArr2[1];
        } else {
            iAbs = 0;
        }
        for (int i = 1; i < supportedPreviewFpsRange.size(); i++) {
            int[] iArr3 = supportedPreviewFpsRange.get(i);
            int iAbs2 = Math.abs(iArr3[0] - fps) + Math.abs(iArr3[1] - fps);
            if (iAbs2 < iAbs) {
                iArr[0] = iArr3[0];
                iArr[1] = iArr3[1];
                iAbs = iAbs2;
            }
        }
        try {
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
            parameters.setPreviewFrameRate(this.mParam.getFps());
        } catch (Exception unused) {
        }
        LogUtil.d(TAG, "预览帧率 fps:" + iArr[0] + " - " + iArr[1]);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008c  */
    /* JADX WARN: Code duplicated, block: B:26:0x0092  */
    private void setPreviewOrientation(Camera.Parameters parameters, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        LogUtil.d(TAG, "SetRotation : " + i);
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.mParam.getCameraId(), cameraInfo);
        this.mScreen = 0;
        try {
            if (i != 0) {
                if (i == 90) {
                    if (cameraInfo.facing == 1) {
                        int i8 = (cameraInfo.orientation + this.mOrientation) % 360;
                        this.mDataOrientation = i8;
                        i6 = 360 - i8;
                    } else {
                        i6 = (cameraInfo.orientation - this.mOrientation) + 360;
                    }
                    this.mDataOrientation = (i6 + SCREEN_LANDSCAPE_RIGHT) % 360;
                } else if (i == SCREEN_LANDSCAPE_RIGHT) {
                    if (cameraInfo.facing == 1) {
                        int i9 = (cameraInfo.orientation + this.mOrientation) % 360;
                        this.mDataOrientation = i9;
                        i7 = 360 - i9;
                    } else {
                        i7 = (cameraInfo.orientation - this.mOrientation) + 360;
                    }
                    i2 = i7 + 90;
                }
                i3 = cameraInfo.facing;
                i4 = cameraInfo.orientation;
                if (i3 == 1) {
                    i5 = 360 - ((i4 + i) % 360);
                } else {
                    i5 = (i4 - i) + 360;
                }
                this.mCamera.setDisplayOrientation(i5 % 360);
                return;
            }
            if (cameraInfo.facing == 1) {
                int i10 = (cameraInfo.orientation + this.mOrientation) % 360;
                this.mDataOrientation = i10;
                i2 = (360 - i10) + 180;
            } else {
                i2 = (cameraInfo.orientation - this.mOrientation) + 360;
            }
            this.mCamera.setDisplayOrientation(i5 % 360);
            return;
        } catch (Exception unused) {
            return;
        }
        this.mDataOrientation = i2 % 360;
        i3 = cameraInfo.facing;
        i4 = cameraInfo.orientation;
        if (i3 == 1) {
            i5 = 360 - ((i4 + i) % 360);
        } else {
            i5 = (i4 - i) + 360;
        }
    }

    private void setPreviewSize(Camera.Parameters parameters) {
        int i;
        int i2;
        int i3;
        for (Integer num : parameters.getSupportedPreviewFormats()) {
            System.out.println("支持:" + num);
        }
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        Camera.Size size = null;
        Camera.Size size2 = null;
        Camera.Size size3 = null;
        int i4 = 0;
        for (Camera.Size size4 : supportedPreviewSizes) {
            LogUtil.d(TAG, "支持 " + size4.width + "x" + size4.height);
            if ((size4.width == this.mParam.getPreviewWidth() && size4.height == this.mParam.getPreviewHeight()) || (size4.width == this.mParam.getPreviewHeight() && size4.height == this.mParam.getPreviewWidth())) {
                size = size4;
            }
            int i5 = size4.width;
            if (((i5 == 720 && size4.height == 1280) || (i5 == 1280 && size4.height == 720)) && ((this.mParam.getPreviewWidth() > this.mParam.getPreviewHeight() && size4.width < size4.height) || (this.mParam.getPreviewWidth() < this.mParam.getPreviewHeight() && size4.width > size4.height))) {
                size2 = size4;
            }
            if ((size4.width >= this.mParam.getWidth() && size4.height >= this.mParam.getHeight()) || (size4.width >= this.mParam.getHeight() && size4.height >= this.mParam.getWidth())) {
                if (i4 == 0) {
                    i4 = size4.height * size4.width;
                } else {
                    int i6 = size4.width;
                    int i7 = size4.height;
                    int i8 = i6 * i7;
                    if (i8 < i4) {
                        size3 = size4;
                        i4 = i8;
                    } else if (i8 == i4 && ((i6 < i7 && this.mParam.getWidth() < this.mParam.getHeight()) || (size4.width > size4.height && this.mParam.getWidth() > this.mParam.getHeight()))) {
                    }
                }
                size3 = size4;
            }
            int i9 = size4.width * size4.height;
            int i10 = supportMaxWH;
            if (i9 <= i10) {
                i9 = i10;
            }
            supportMaxWH = i9;
        }
        if (size == null && size2 != null) {
            size = size2;
        }
        if (size != null || size3 == null) {
            size3 = size;
        }
        if (size3 == null) {
            size3 = supportedPreviewSizes.get(0);
        }
        if (buffer == null && (i3 = supportMaxWH) > 0) {
            buffer = new byte[(i3 * 3) / 2];
        }
        if (buffer1 == null && (i2 = supportMaxWH) > 0) {
            buffer1 = new byte[(i2 * 3) / 2];
        }
        if (buffer2 == null && (i = supportMaxWH) > 0) {
            buffer2 = new byte[(i * 3) / 2];
        }
        this.mParam.setWidth(size3.width);
        this.mParam.setHeight(size3.height);
        try {
            parameters.setPreviewSize(this.mParam.getWidth(), this.mParam.getHeight());
        } catch (Exception unused) {
        }
        LogUtil.d(TAG, "预览分辨率 width:" + this.mParam.getWidth() + " height:" + this.mParam.getHeight());
    }

    private void startPreview0() throws Exception {
        if (this.mPreviewRunning) {
            return;
        }
        Camera cameraOpen = Camera.open(this.mParam.getCameraId());
        this.mCamera = cameraOpen;
        try {
            Camera.Parameters parameters = cameraOpen.getParameters();
            if (!sSupportedResolutionMap.containsKey(Integer.valueOf(this.mParam.getCameraId()))) {
                sSupportedResolutionMap.put(Integer.valueOf(this.mParam.getCameraId()), parameters.getSupportedPreviewSizes());
            }
            if (sSupportedFormat.size() <= 0) {
                sSupportedFormat = parameters.getSupportedPictureFormats();
            }
            if (!isHasPermission()) {
                this.mCamera.release();
                this.mCamera = null;
                throw new Exception("permission not allowed");
            }
            if (this.mSurfaceCbMode) {
                parameters.setRecordingHint(true);
            } else {
                parameters.setPreviewFormat(17);
            }
            if (parameters.isZoomSupported()) {
                if (this.mParam.getCurrentZoom() >= parameters.getMaxZoom()) {
                    this.mParam.setCurrentZoom(parameters.getMaxZoom());
                }
                parameters.setZoom(this.mParam.getCurrentZoom());
                this.mParam.setMaxZoom(parameters.getMaxZoom());
            }
            setPreviewSize(parameters);
            setPreviewFpsRange(parameters);
            setPreviewOrientation(parameters, this.mParam.getRotation());
            try {
                this.mCamera.setParameters(parameters);
            } catch (Exception unused) {
            }
            LogUtil.d(TAG, "start camera, parameters " + parameters.getPreviewSize().width + ", " + parameters.getPreviewSize().height);
            if (buffer == null) {
                buffer = new byte[((this.mParam.getWidth() * this.mParam.getHeight()) * 3) / 2];
            }
            if (buffer1 == null) {
                buffer1 = new byte[((this.mParam.getWidth() * this.mParam.getHeight()) * 3) / 2];
            }
            if (buffer2 == null) {
                buffer2 = new byte[((this.mParam.getWidth() * this.mParam.getHeight()) * 3) / 2];
            }
            if (!this.mSurfaceCbMode || this.mSurfaceTextureId < 0) {
                try {
                    this.mCamera.setPreviewCallbackWithBuffer(null);
                } catch (Exception unused2) {
                }
                this.mCamera.addCallbackBuffer(buffer);
                this.mCamera.addCallbackBuffer(buffer1);
                this.mCamera.addCallbackBuffer(buffer2);
                try {
                    this.mCamera.setPreviewCallbackWithBuffer(this.mPreviewCallback);
                } catch (Exception unused3) {
                }
            } else {
                SurfaceTexture surfaceTexture = this.mSurfaceTexture;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    this.mSurfaceTexture = null;
                }
                SurfaceTexture surfaceTexture2 = new SurfaceTexture(this.mSurfaceTextureId);
                this.mSurfaceTexture = surfaceTexture2;
                surfaceTexture2.setOnFrameAvailableListener(this.mOnFrameAvailableListener);
            }
            try {
                this.mCamera.setPreviewTexture(this.mSurfaceTexture);
            } catch (Exception unused4) {
            }
            try {
                this.mCamera.startPreview();
            } catch (Exception unused5) {
            }
            this.mPreviewRunning = true;
            LogUtil.d(TAG, "start preivew over.");
        } catch (Exception unused6) {
            this.mCamera.release();
            this.mCamera = null;
            throw new Exception("permission not allowed");
        }
    }

    private static void turnLightOff(Camera camera) {
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = null;
        try {
            parameters = camera.getParameters();
        } catch (Exception unused) {
        }
        if (parameters == null) {
            return;
        }
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        String flashMode = parameters.getFlashMode();
        if (supportedFlashModes == null || "off".equals(flashMode)) {
            return;
        }
        if (!supportedFlashModes.contains("off")) {
            LogUtil.e(TAG, "FLASH_MODE_OFF not supported");
            return;
        }
        parameters.setFlashMode("off");
        try {
            camera.setParameters(parameters);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void turnLightOn(Camera camera) {
        List<String> supportedFlashModes;
        if (camera == null) {
            return;
        }
        Camera.Parameters parameters = null;
        try {
            parameters = camera.getParameters();
        } catch (Exception unused) {
        }
        if (parameters == null || (supportedFlashModes = parameters.getSupportedFlashModes()) == null || "torch".equals(parameters.getFlashMode()) || !supportedFlashModes.contains("torch")) {
            return;
        }
        parameters.setFlashMode("torch");
        try {
            camera.setParameters(parameters);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void destroy() {
        LogUtil.d(TAG, "destroy.");
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        this.mSurfaceTexture = null;
        this.mParam = null;
    }

    public int getCurrentExposure() {
        Camera camera = this.mCamera;
        if (camera == null) {
            return 0;
        }
        try {
            return camera.getParameters().getExposureCompensation();
        } catch (Exception unused) {
            return 0;
        }
    }

    public int getCurrentFps() {
        return this.mCurrentFps;
    }

    public int getCurrentZoom() {
        Camera camera = this.mCamera;
        if (camera == null) {
            return 1;
        }
        try {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.isZoomSupported()) {
                return parameters.getZoom();
            }
            return 1;
        } catch (Exception unused) {
            return 1;
        }
    }

    public long getLastCaptureTime() {
        return this.mLastCaptureTime;
    }

    public int getMaxExposure() {
        Camera camera = this.mCamera;
        if (camera == null) {
            return 0;
        }
        try {
            return camera.getParameters().getMaxExposureCompensation();
        } catch (Exception unused) {
            return 0;
        }
    }

    public int getMaxZoom() {
        Camera camera = this.mCamera;
        if (camera == null) {
            return 0;
        }
        try {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.isZoomSupported()) {
                return parameters.getMaxZoom();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public int getMinExposure() {
        Camera camera = this.mCamera;
        if (camera == null) {
            return 0;
        }
        try {
            return camera.getParameters().getMinExposureCompensation();
        } catch (Exception unused) {
            return 0;
        }
    }

    public void getTransformMatrix(float[] fArr) {
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture == null) {
            LogUtil.d("VideoPusherRotation", "getTransformMatrix return null !");
        } else {
            surfaceTexture.getTransformMatrix(fArr);
        }
    }

    public void init(int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, Context context) {
        this.mParam = new VideoParam(i2, i3, i4, i, i5);
        this.mSurfaceCbMode = z;
        this.mCustomRotation = i6;
        if (!z) {
            this.mSurfaceTexture = new SurfaceTexture(10);
        }
        if (this.mSensorManager == null) {
            this.mSensorManager = (SensorManager) context.getSystemService("sensor");
        }
        if (this.mAccelSensor == null) {
            this.mAccelSensor = this.mSensorManager.getDefaultSensor(1);
        }
        if (this.mMagneticSensor == null) {
            this.mMagneticSensor = this.mSensorManager.getDefaultSensor(2);
        }
        String str = Build.MODEL;
        if (str.contains("MI MAX") || "MIX".equals(str) || "MIX 2".equals(str)) {
            this.mSensorFocus = true;
        }
        if (z2) {
            this.mSensorFocus = true;
            LogUtil.d(TAG, "set focus by Sensor");
        }
        LogUtil.d(TAG, "====> Init src: " + i + ", width: " + i2 + ", height:" + i3 + ", fps:" + i4 + ", rotation:" + i5 + ", mSurfaceCbMode: " + this.mSurfaceCbMode);
    }

    public boolean isPreviewRunning() {
        return this.mPreviewRunning;
    }

    public boolean isSupportAutoFocus() {
        Camera camera = this.mCamera;
        if (camera == null) {
            return false;
        }
        try {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters == null || parameters.getSupportedFocusModes() == null || parameters.getSupportedFocusModes().size() <= 0) {
                return false;
            }
            return parameters.getSupportedFocusModes().contains("continuous-video");
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean isSupportFlash() {
        Camera camera = this.mCamera;
        if (camera == null) {
            return false;
        }
        try {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.getSupportedFlashModes() == null || parameters.getSupportedFlashModes().size() <= 0) {
                return false;
            }
            return parameters.getSupportedFlashModes().contains("torch");
        } catch (Exception unused) {
            return false;
        }
    }

    public void pause(boolean z) {
        LogUtil.d(TAG, "pause preview.");
        this.mPause = true;
    }

    public void resume() {
        LogUtil.d(TAG, "resume preview.");
        if (this.mPause) {
            stopInner();
            try {
                startInner();
                this.mPause = false;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void setAutoFocus(boolean z) {
        if (this.mCamera != null) {
            try {
                if (this.mParam.getCameraId() == 0) {
                    this.mCamera.cancelAutoFocus();
                    Camera.Parameters parameters = this.mCamera.getParameters();
                    String str = "auto";
                    if (!z) {
                        parameters.setFocusMode(str);
                    } else if (this.mSensorFocus) {
                        parameters.setFocusMode("auto");
                        try {
                            this.mCamera.autoFocus(null);
                        } catch (Exception unused) {
                        }
                    } else {
                        str = "continuous-video";
                        parameters.setFocusMode(str);
                    }
                    try {
                        this.mCamera.setParameters(parameters);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            } catch (Exception unused2) {
            }
        }
        this.mAutoFocus = z;
    }

    public void setExposure(int i) {
        Camera camera = this.mCamera;
        if (camera != null) {
            try {
                Camera.Parameters parameters = camera.getParameters();
                if (i < parameters.getMinExposureCompensation() || i > parameters.getMaxExposureCompensation()) {
                    return;
                }
                parameters.setExposureCompensation(i);
                this.mCamera.setParameters(parameters);
            } catch (Exception unused) {
            }
        }
    }

    public void setFlashOn(boolean z) {
        if (this.mCamera != null) {
            if (z && this.mParam.getCameraId() == 0) {
                turnLightOn(this.mCamera);
            } else {
                turnLightOff(this.mCamera);
            }
        }
        this.mFlashOn = z;
    }

    public void setFocus(float f2, float f3) {
        if (this.mCamera == null || this.mParam.getCameraId() == 1) {
            return;
        }
        Camera.Parameters parameters = null;
        try {
            parameters = this.mCamera.getParameters();
        } catch (Exception unused) {
        }
        LogUtil.d(TAG, "focusAreas is " + parameters.getMaxNumFocusAreas());
        if (parameters == null || parameters.getMaxNumFocusAreas() != 0) {
            Camera camera = this.mCamera;
            if (camera != null) {
                try {
                    camera.cancelAutoFocus();
                } catch (Exception unused2) {
                }
            }
            int i = (int) ((f2 * 2000.0f) - 1000.0f);
            int i2 = (int) ((f3 * 2000.0f) - 1000.0f);
            Camera.Area area = new Camera.Area(new Rect(i - 50, i2 - 50, i + 50, i2 + 50), 1);
            ArrayList arrayList = new ArrayList();
            arrayList.add(area);
            parameters.setFocusAreas(arrayList);
            try {
                this.mCamera.setParameters(parameters);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                this.mCamera.autoFocus(new Camera.AutoFocusCallback() { // from class: com.alivc.component.capture.VideoPusher.3
                    @Override // android.hardware.Camera.AutoFocusCallback
                    public void onAutoFocus(boolean z, Camera camera2) {
                        try {
                            camera2.cancelAutoFocus();
                        } catch (Exception unused3) {
                        }
                    }
                });
            } catch (Exception unused3) {
            }
        }
    }

    public void setLastCaptureTime(long j) {
        this.mLastCaptureTime = j;
    }

    public void setOrientation(int i) {
        LogUtil.d(TAG, "setOrientation.");
    }

    public void setVideoSourceListener(VideoSourceListener videoSourceListener) {
        this.mVideoSourceListener = videoSourceListener;
    }

    public void setVideoSourceTextureListener(VideoSourceTextureListener videoSourceTextureListener) {
        this.mVideoSourceTextureListener = videoSourceTextureListener;
    }

    public void setZoom(float f2) {
        VideoParam videoParam;
        Camera camera = this.mCamera;
        if (camera == null) {
            return;
        }
        try {
            Camera.Parameters parameters = camera.getParameters();
            if (!parameters.isZoomSupported()) {
                return;
            }
            int currentZoom = (int) (f2 * this.mParam.getCurrentZoom());
            int maxZoom = 1;
            try {
                if (currentZoom > 1) {
                    if (currentZoom >= parameters.getMaxZoom()) {
                        videoParam = this.mParam;
                        maxZoom = parameters.getMaxZoom();
                    } else {
                        this.mParam.setCurrentZoom(currentZoom);
                    }
                    parameters.setZoom(this.mParam.getCurrentZoom());
                    this.mCamera.setParameters(parameters);
                    return;
                }
                videoParam = this.mParam;
                this.mCamera.setParameters(parameters);
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
            videoParam.setCurrentZoom(maxZoom);
            parameters.setZoom(this.mParam.getCurrentZoom());
        } catch (Exception unused) {
        }
    }

    public void setZoom(int i) {
        Camera camera = this.mCamera;
        if (camera != null) {
            try {
                Camera.Parameters parameters = camera.getParameters();
                if (parameters.isZoomSupported() && i >= 0 && i <= parameters.getMaxZoom()) {
                    this.mParam.setCurrentZoom(i);
                    parameters.setZoom(this.mParam.getCurrentZoom());
                    try {
                        this.mCamera.setParameters(parameters);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public void start(int i) throws Exception {
        LogUtil.d(TAG, "start.");
        boolean z = this.mSurfaceCbMode;
        if (z && i >= 0) {
            this.mSurfaceTextureId = i;
        } else if (z && i < 0) {
            this.mSurfaceCbMode = false;
            if (this.mSurfaceTexture == null) {
                this.mSurfaceTexture = new SurfaceTexture(10);
            }
        }
        try {
            startInner();
        } catch (Exception e2) {
            throw e2;
        }
    }

    public void startInner() throws Exception {
        try {
            startPreview0();
        } catch (Throwable unused) {
            stopInner();
            try {
                startPreview0();
            } catch (Exception e2) {
                throw e2;
            }
        }
        boolean z = this.mFlashOn;
        if (z) {
            setFlashOn(z);
        }
        boolean z2 = this.mAutoFocus;
        if (z2) {
            setAutoFocus(z2);
        }
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager == null || !this.mSensorFocus) {
            return;
        }
        sensorManager.registerListener(this.mSensorEventListener, this.mAccelSensor, 2);
        this.mSensorManager.registerListener(this.mSensorEventListener, this.mMagneticSensor, 2);
    }

    public void stop() {
        SurfaceTexture surfaceTexture;
        LogUtil.d(TAG, "stop.");
        stopInner();
        if (!this.mSurfaceCbMode || (surfaceTexture = this.mSurfaceTexture) == null) {
            return;
        }
        surfaceTexture.release();
        this.mSurfaceTexture = null;
        this.mSurfaceTextureId = -1;
    }

    public void stopInner() {
        Camera camera;
        LogUtil.d(TAG, "stopInner.");
        SensorManager sensorManager = this.mSensorManager;
        if (sensorManager != null && this.mSensorFocus) {
            try {
                sensorManager.unregisterListener(this.mSensorEventListener);
            } catch (Exception unused) {
            }
        }
        if (!this.mPreviewRunning || (camera = this.mCamera) == null) {
            return;
        }
        try {
            camera.setPreviewCallback(null);
        } catch (Exception unused2) {
        }
        try {
            this.mCamera.stopPreview();
        } catch (Exception unused3) {
        }
        try {
            this.mCamera.release();
        } catch (Exception unused4) {
        }
        this.mCamera = null;
        this.mPreviewRunning = false;
        LogUtil.d(TAG, "stopInner over.");
    }

    public void switchCamera() throws Exception {
        VideoParam videoParam;
        int i;
        LogUtil.d(TAG, "switchCamera.");
        if (this.mParam.getCameraId() == 0) {
            videoParam = this.mParam;
            i = 1;
        } else {
            videoParam = this.mParam;
            i = 0;
        }
        videoParam.setCameraId(i);
        stopInner();
        startInner();
    }

    public int updateTexImage() {
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture == null) {
            return -1;
        }
        surfaceTexture.updateTexImage();
        return 0;
    }
}
