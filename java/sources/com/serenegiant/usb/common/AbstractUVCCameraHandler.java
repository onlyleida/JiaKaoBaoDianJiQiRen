package com.serenegiant.usb.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.YuvImage;
import android.hardware.usb.UsbDevice;
import android.media.MediaScannerConnection;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.serenegiant.usb.IFrameCallback;
import com.serenegiant.usb.Size;
import com.serenegiant.usb.USBMonitor;
import com.serenegiant.usb.UVCCamera;
import com.serenegiant.usb.widget.CameraViewInterface;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractUVCCameraHandler extends Handler {
    private static final boolean DEBUG = true;
    private static final int MSG_CAMERA_FOUCS = 10;
    private static final int MSG_CAPTURE_STILL = 4;
    private static final int MSG_CLOSE = 1;
    private static final int MSG_MEDIA_UPDATE = 7;
    private static final int MSG_OPEN = 0;
    private static final int MSG_PREVIEW_START = 2;
    private static final int MSG_PREVIEW_STOP = 3;
    private static final int MSG_RELEASE = 9;
    private static final String TAG = "AbsUVCCameraHandler";
    protected static boolean isCaptureStill;
    public static OnCaptureListener mCaptureListener;
    public static OnPreViewResultListener mPreviewListener;
    private volatile boolean mReleased;
    private final WeakReference<CameraThread> mWeakThread;

    public interface CameraCallback {
        void onClose();

        void onError(Exception exc);

        void onOpen();

        void onStartPreview();

        void onStopPreview();
    }

    public static final class CameraThread extends Thread {
        private static final String TAG_THREAD = "CameraThread";
        private float mBandwidthFactor;
        private final Set<CameraCallback> mCallbacks;
        private final int mEncoderType;
        private AbstractUVCCameraHandler mHandler;
        private final Class<? extends AbstractUVCCameraHandler> mHandlerClass;
        private int mHeight;
        private final IFrameCallback mIFrameCallback;
        private boolean mIsPreviewing;
        private boolean mIsRecording;
        private int mPreviewMode;
        private final Object mSync;
        private UVCCamera mUVCCamera;
        private final WeakReference<CameraViewInterface> mWeakCameraView;
        private final WeakReference<Activity> mWeakParent;
        private int mWidth;
        private String picPath;
        private byte[] yuv;

        CameraThread(Class<? extends AbstractUVCCameraHandler> cls, Activity activity, CameraViewInterface cameraViewInterface, int i, int i2, int i3, int i4, float f2) {
            super(TAG_THREAD);
            this.mSync = new Object();
            this.mCallbacks = new CopyOnWriteArraySet();
            this.picPath = null;
            this.yuv = null;
            this.mIFrameCallback = new IFrameCallback() { // from class: com.serenegiant.usb.common.AbstractUVCCameraHandler.CameraThread.1
                @Override // com.serenegiant.usb.IFrameCallback
                public void onFrame(ByteBuffer byteBuffer) {
                    int iCapacity = byteBuffer.capacity();
                    if (CameraThread.this.yuv == null || CameraThread.this.yuv.length != iCapacity) {
                        CameraThread.this.yuv = new byte[iCapacity];
                    }
                    byteBuffer.get(CameraThread.this.yuv);
                    OnPreViewResultListener onPreViewResultListener = AbstractUVCCameraHandler.mPreviewListener;
                    if (onPreViewResultListener != null) {
                        onPreViewResultListener.onPreviewResult(CameraThread.this.yuv);
                    }
                    if (!AbstractUVCCameraHandler.isCaptureStill || TextUtils.isEmpty(CameraThread.this.picPath)) {
                        return;
                    }
                    AbstractUVCCameraHandler.isCaptureStill = false;
                    new Thread(new Runnable() { // from class: com.serenegiant.usb.common.AbstractUVCCameraHandler.CameraThread.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CameraThread cameraThread = CameraThread.this;
                            cameraThread.saveYuv2Jpeg(cameraThread.picPath, CameraThread.this.yuv);
                        }
                    }).start();
                }
            };
            this.mHandlerClass = cls;
            this.mEncoderType = i;
            this.mWidth = i2;
            this.mHeight = i3;
            this.mPreviewMode = i4;
            this.mBandwidthFactor = f2;
            this.mWeakParent = new WeakReference<>(activity);
            this.mWeakCameraView = new WeakReference<>(cameraViewInterface);
        }

        private void callOnClose() {
            for (CameraCallback cameraCallback : this.mCallbacks) {
                try {
                    cameraCallback.onClose();
                } catch (Exception e2) {
                    this.mCallbacks.remove(cameraCallback);
                    Log.w(AbstractUVCCameraHandler.TAG, e2);
                }
            }
        }

        private void callOnError(Exception exc) {
            for (CameraCallback cameraCallback : this.mCallbacks) {
                try {
                    cameraCallback.onError(exc);
                } catch (Exception unused) {
                    this.mCallbacks.remove(cameraCallback);
                    Log.w(AbstractUVCCameraHandler.TAG, exc);
                }
            }
        }

        private void callOnOpen() {
            for (CameraCallback cameraCallback : this.mCallbacks) {
                try {
                    cameraCallback.onOpen();
                } catch (Exception e2) {
                    this.mCallbacks.remove(cameraCallback);
                    Log.w(AbstractUVCCameraHandler.TAG, e2);
                }
            }
        }

        private void callOnStartPreview() {
            for (CameraCallback cameraCallback : this.mCallbacks) {
                try {
                    cameraCallback.onStartPreview();
                } catch (Exception e2) {
                    this.mCallbacks.remove(cameraCallback);
                    Log.w(AbstractUVCCameraHandler.TAG, e2);
                }
            }
        }

        private void callOnStopPreview() {
            for (CameraCallback cameraCallback : this.mCallbacks) {
                try {
                    cameraCallback.onStopPreview();
                } catch (Exception e2) {
                    this.mCallbacks.remove(cameraCallback);
                    Log.w(AbstractUVCCameraHandler.TAG, e2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void saveYuv2Jpeg(String str, byte[] bArr) {
            YuvImage yuvImage = new YuvImage(bArr, 17, this.mWidth, this.mHeight, null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            if (yuvImage.compressToJpeg(new Rect(0, 0, this.mWidth, this.mHeight), 100, byteArrayOutputStream)) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
                    fileOutputStream.write(byteArray);
                    fileOutputStream.close();
                } catch (FileNotFoundException e2) {
                    e2.printStackTrace();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                OnCaptureListener onCaptureListener = AbstractUVCCameraHandler.mCaptureListener;
                if (onCaptureListener != null) {
                    onCaptureListener.onCaptureResult(str);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }

        protected void finalize() throws Throwable {
            Log.i(AbstractUVCCameraHandler.TAG, "CameraThread#finalize");
            super.finalize();
        }

        public AbstractUVCCameraHandler getHandler() {
            Log.v(TAG_THREAD, "getHandler:");
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

        public int getHeight() {
            int i;
            synchronized (this.mSync) {
                i = this.mHeight;
            }
            return i;
        }

        public List<Size> getSupportedSizes() {
            UVCCamera uVCCamera = this.mUVCCamera;
            if (uVCCamera == null || !this.mIsPreviewing) {
                return null;
            }
            return uVCCamera.getSupportedSizeList();
        }

        public int getWidth() {
            int i;
            synchronized (this.mSync) {
                i = this.mWidth;
            }
            return i;
        }

        public void handleCameraFoucs() {
            Log.v(TAG_THREAD, "handleStartPreview:");
            UVCCamera uVCCamera = this.mUVCCamera;
            if (uVCCamera == null || !this.mIsPreviewing) {
                return;
            }
            uVCCamera.setAutoFocus(true);
        }

        public void handleCaptureStill(String str) {
            Log.v(TAG_THREAD, "handleCaptureStill:");
            if (this.mWeakParent.get() == null) {
                return;
            }
            try {
                Bitmap bitmapCaptureStillImage = this.mWeakCameraView.get().captureStillImage(this.mWidth, this.mHeight);
                File file = new File(str);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                try {
                    bitmapCaptureStillImage.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
                    bufferedOutputStream.flush();
                    AbstractUVCCameraHandler abstractUVCCameraHandler = this.mHandler;
                    abstractUVCCameraHandler.sendMessage(abstractUVCCameraHandler.obtainMessage(7, file.getPath()));
                } catch (IOException unused) {
                } catch (Throwable th) {
                    bufferedOutputStream.close();
                    throw th;
                }
                bufferedOutputStream.close();
                OnCaptureListener onCaptureListener = AbstractUVCCameraHandler.mCaptureListener;
                if (onCaptureListener != null) {
                    onCaptureListener.onCaptureResult(str);
                }
            } catch (Exception e2) {
                callOnError(e2);
            }
        }

        public void handleClose() {
            UVCCamera uVCCamera;
            Log.v(TAG_THREAD, "handleClose:");
            synchronized (this.mSync) {
                uVCCamera = this.mUVCCamera;
                this.mUVCCamera = null;
            }
            if (uVCCamera != null) {
                uVCCamera.stopPreview();
                uVCCamera.destroy();
                callOnClose();
            }
        }

        public void handleOpen(USBMonitor.UsbControlBlock usbControlBlock) {
            Log.v(TAG_THREAD, "handleOpen:");
            handleClose();
            try {
                UVCCamera uVCCamera = new UVCCamera();
                uVCCamera.open(usbControlBlock);
                synchronized (this.mSync) {
                    this.mUVCCamera = uVCCamera;
                }
                callOnOpen();
            } catch (Exception e2) {
                callOnError(e2);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("supportedSize:");
            UVCCamera uVCCamera2 = this.mUVCCamera;
            sb.append(uVCCamera2 != null ? uVCCamera2.getSupportedSize() : null);
            Log.i(AbstractUVCCameraHandler.TAG, sb.toString());
        }

        public void handleRelease() {
            Log.v(TAG_THREAD, "handleRelease:mIsRecording=" + this.mIsRecording);
            handleClose();
            this.mCallbacks.clear();
            if (!this.mIsRecording) {
                this.mHandler.mReleased = true;
                Looper.myLooper().quit();
            }
            Log.v(TAG_THREAD, "handleRelease:finished");
        }

        public void handleStartPreview(Object obj) {
            Log.v(TAG_THREAD, "handleStartPreview:");
            UVCCamera uVCCamera = this.mUVCCamera;
            if (uVCCamera == null || this.mIsPreviewing) {
                return;
            }
            try {
                try {
                    uVCCamera.setPreviewSize(this.mWidth, this.mHeight, 1, 31, this.mPreviewMode, this.mBandwidthFactor);
                    this.mUVCCamera.setFrameCallback(this.mIFrameCallback, 4);
                } catch (IllegalArgumentException e2) {
                    callOnError(e2);
                    return;
                }
            } catch (IllegalArgumentException unused) {
                this.mUVCCamera.setPreviewSize(this.mWidth, this.mHeight, 1, 31, 0, this.mBandwidthFactor);
            }
            if (obj instanceof SurfaceHolder) {
                this.mUVCCamera.setPreviewDisplay((SurfaceHolder) obj);
            }
            if (obj instanceof Surface) {
                this.mUVCCamera.setPreviewDisplay((Surface) obj);
            } else {
                this.mUVCCamera.setPreviewTexture((SurfaceTexture) obj);
            }
            this.mUVCCamera.startPreview();
            this.mUVCCamera.updateCameraParams();
            synchronized (this.mSync) {
                this.mIsPreviewing = true;
            }
            callOnStartPreview();
        }

        public void handleStillPicture(String str) {
            this.picPath = str;
        }

        public void handleStopPreview() {
            Log.v(TAG_THREAD, "handleStopPreview:");
            if (this.mIsPreviewing) {
                UVCCamera uVCCamera = this.mUVCCamera;
                if (uVCCamera != null) {
                    uVCCamera.stopPreview();
                    this.mUVCCamera.setFrameCallback(null, 0);
                }
                synchronized (this.mSync) {
                    this.mIsPreviewing = false;
                    this.mSync.notifyAll();
                }
                callOnStopPreview();
            }
            Log.v(TAG_THREAD, "handleStopPreview:finished");
        }

        @TargetApi(17)
        public void handleUpdateMedia(String str) {
            Log.v(TAG_THREAD, "handleUpdateMedia:path=" + str);
            Activity activity = this.mWeakParent.get();
            AbstractUVCCameraHandler abstractUVCCameraHandler = this.mHandler;
            boolean z = abstractUVCCameraHandler == null || abstractUVCCameraHandler.mReleased;
            if (activity == null || activity.getApplicationContext() == null) {
                Log.w(AbstractUVCCameraHandler.TAG, "MainActivity already destroyed");
                handleRelease();
                return;
            }
            try {
                Log.i(AbstractUVCCameraHandler.TAG, "MediaScannerConnection#scanFile");
                MediaScannerConnection.scanFile(activity.getApplicationContext(), new String[]{str}, null, null);
            } catch (Exception e2) {
                Log.e(AbstractUVCCameraHandler.TAG, "handleUpdateMedia:", e2);
            }
            if (z || activity.isDestroyed()) {
                handleRelease();
            }
        }

        public boolean isCameraOpened() {
            boolean z;
            synchronized (this.mSync) {
                z = this.mUVCCamera != null;
            }
            return z;
        }

        public boolean isEqual(UsbDevice usbDevice) {
            UVCCamera uVCCamera = this.mUVCCamera;
            return (uVCCamera == null || uVCCamera.getDevice() == null || !this.mUVCCamera.getDevice().equals(usbDevice)) ? false : true;
        }

        public boolean isPreviewing() {
            boolean z;
            synchronized (this.mSync) {
                z = this.mUVCCamera != null && this.mIsPreviewing;
            }
            return z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AbstractUVCCameraHandler abstractUVCCameraHandlerNewInstance;
            Looper.prepare();
            try {
                abstractUVCCameraHandlerNewInstance = this.mHandlerClass.getDeclaredConstructor(CameraThread.class).newInstance(this);
            } catch (IllegalAccessException e2) {
                Log.w(AbstractUVCCameraHandler.TAG, e2);
                abstractUVCCameraHandlerNewInstance = null;
            } catch (InstantiationException e3) {
                Log.w(AbstractUVCCameraHandler.TAG, e3);
                abstractUVCCameraHandlerNewInstance = null;
            } catch (NoSuchMethodException e4) {
                Log.w(AbstractUVCCameraHandler.TAG, e4);
                abstractUVCCameraHandlerNewInstance = null;
            } catch (InvocationTargetException e5) {
                Log.w(AbstractUVCCameraHandler.TAG, e5);
                abstractUVCCameraHandlerNewInstance = null;
            }
            if (abstractUVCCameraHandlerNewInstance != null) {
                synchronized (this.mSync) {
                    this.mHandler = abstractUVCCameraHandlerNewInstance;
                    this.mSync.notifyAll();
                }
                Looper.loop();
                AbstractUVCCameraHandler abstractUVCCameraHandler = this.mHandler;
                if (abstractUVCCameraHandler != null) {
                    abstractUVCCameraHandler.mReleased = true;
                }
            }
            this.mCallbacks.clear();
            synchronized (this.mSync) {
                this.mHandler = null;
                this.mSync.notifyAll();
            }
        }
    }

    public interface OnCaptureListener {
        void onCaptureResult(String str);
    }

    public interface OnPreViewResultListener {
        void onPreviewResult(byte[] bArr);
    }

    protected AbstractUVCCameraHandler(CameraThread cameraThread) {
        this.mWeakThread = new WeakReference<>(cameraThread);
    }

    public void addCallback(CameraCallback cameraCallback) {
        CameraThread cameraThread;
        checkReleased();
        if (this.mReleased || cameraCallback == null || (cameraThread = this.mWeakThread.get()) == null) {
            return;
        }
        cameraThread.mCallbacks.add(cameraCallback);
    }

    public void captureStill(String str, OnCaptureListener onCaptureListener) {
        mCaptureListener = onCaptureListener;
        checkReleased();
        sendMessage(obtainMessage(4, str));
        isCaptureStill = true;
    }

    protected void checkReleased() {
        if (isReleased()) {
            throw new IllegalStateException("already released");
        }
    }

    public boolean checkSupportFlag(long j) {
        checkReleased();
        CameraThread cameraThread = this.mWeakThread.get();
        return (cameraThread == null || cameraThread.mUVCCamera == null || !cameraThread.mUVCCamera.checkSupportFlag(j)) ? false : true;
    }

    public void close() {
        Log.v(TAG, "close:");
        if (isOpened()) {
            stopPreview();
            sendEmptyMessage(1);
        }
        Log.v(TAG, "close:finished");
    }

    public int getHeight() {
        CameraThread cameraThread = this.mWeakThread.get();
        if (cameraThread != null) {
            return cameraThread.getHeight();
        }
        return 0;
    }

    public List<Size> getSupportedPreviewSizes() {
        return this.mWeakThread.get().getSupportedSizes();
    }

    public int getValue(int i) {
        checkReleased();
        CameraThread cameraThread = this.mWeakThread.get();
        UVCCamera uVCCamera = cameraThread != null ? cameraThread.mUVCCamera : null;
        if (uVCCamera != null) {
            if (i == -2147483647) {
                return uVCCamera.getBrightness();
            }
            if (i == -2147483646) {
                return uVCCamera.getContrast();
            }
        }
        throw new IllegalStateException();
    }

    public int getWidth() {
        CameraThread cameraThread = this.mWeakThread.get();
        if (cameraThread != null) {
            return cameraThread.getWidth();
        }
        return 0;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        CameraThread cameraThread = this.mWeakThread.get();
        if (cameraThread == null) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            cameraThread.handleOpen((USBMonitor.UsbControlBlock) message.obj);
            return;
        }
        if (i == 1) {
            cameraThread.handleClose();
            return;
        }
        if (i == 2) {
            cameraThread.handleStartPreview(message.obj);
            return;
        }
        if (i == 3) {
            cameraThread.handleStopPreview();
            return;
        }
        if (i == 4) {
            cameraThread.handleStillPicture((String) message.obj);
            return;
        }
        if (i == 7) {
            cameraThread.handleUpdateMedia((String) message.obj);
            return;
        }
        if (i == 9) {
            cameraThread.handleRelease();
        } else {
            if (i == 10) {
                cameraThread.handleCameraFoucs();
                return;
            }
            throw new RuntimeException("unsupported message:what=" + message.what);
        }
    }

    protected boolean isCameraThread() {
        CameraThread cameraThread = this.mWeakThread.get();
        return cameraThread != null && cameraThread.getId() == Thread.currentThread().getId();
    }

    public boolean isEqual(UsbDevice usbDevice) {
        CameraThread cameraThread = this.mWeakThread.get();
        return cameraThread != null && cameraThread.isEqual(usbDevice);
    }

    public boolean isOpened() {
        CameraThread cameraThread = this.mWeakThread.get();
        return cameraThread != null && cameraThread.isCameraOpened();
    }

    public boolean isPreviewing() {
        CameraThread cameraThread = this.mWeakThread.get();
        return cameraThread != null && cameraThread.isPreviewing();
    }

    protected boolean isReleased() {
        return this.mReleased || this.mWeakThread.get() == null;
    }

    public void open(USBMonitor.UsbControlBlock usbControlBlock) {
        checkReleased();
        sendMessage(obtainMessage(0, usbControlBlock));
    }

    public void release() {
        this.mReleased = true;
        close();
        sendEmptyMessage(9);
    }

    public void removeCallback(CameraCallback cameraCallback) {
        CameraThread cameraThread;
        if (cameraCallback == null || (cameraThread = this.mWeakThread.get()) == null) {
            return;
        }
        cameraThread.mCallbacks.remove(cameraCallback);
    }

    public int resetValue(int i) {
        checkReleased();
        CameraThread cameraThread = this.mWeakThread.get();
        UVCCamera uVCCamera = cameraThread != null ? cameraThread.mUVCCamera : null;
        if (uVCCamera != null) {
            if (i == -2147483647) {
                uVCCamera.resetBrightness();
                return uVCCamera.getBrightness();
            }
            if (i == -2147483646) {
                uVCCamera.resetContrast();
                return uVCCamera.getContrast();
            }
        }
        throw new IllegalStateException();
    }

    public void resize(int i, int i2) {
        checkReleased();
        throw new UnsupportedOperationException("does not support now");
    }

    public void setOnPreViewResultListener(OnPreViewResultListener onPreViewResultListener) {
        mPreviewListener = onPreViewResultListener;
    }

    public int setValue(int i, int i2) {
        checkReleased();
        CameraThread cameraThread = this.mWeakThread.get();
        UVCCamera uVCCamera = cameraThread != null ? cameraThread.mUVCCamera : null;
        if (uVCCamera != null) {
            if (i == -2147483647) {
                uVCCamera.setBrightness(i2);
                return uVCCamera.getBrightness();
            }
            if (i == -2147483646) {
                uVCCamera.setContrast(i2);
                return uVCCamera.getContrast();
            }
        }
        throw new IllegalStateException();
    }

    public void startCameraFoucs() {
        sendEmptyMessage(10);
    }

    public void startPreview(Object obj) {
        checkReleased();
        if ((obj instanceof SurfaceHolder) || (obj instanceof Surface) || (obj instanceof SurfaceTexture)) {
            sendMessage(obtainMessage(2, obj));
            return;
        }
        throw new IllegalArgumentException("surface should be one of SurfaceHolder, Surface or SurfaceTexture: " + obj);
    }

    public void stopPreview() {
        Log.v(TAG, "stopPreview:");
        removeMessages(2);
        if (isPreviewing()) {
            CameraThread cameraThread = this.mWeakThread.get();
            if (cameraThread == null) {
                return;
            }
            synchronized (cameraThread.mSync) {
                sendEmptyMessage(3);
                if (!isCameraThread()) {
                    try {
                        cameraThread.mSync.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        Log.v(TAG, "stopPreview:finished");
    }

    protected void updateMedia(String str) {
        sendMessage(obtainMessage(7, str));
    }
}
