package com.alivc.component.encoder;

import android.annotation.TargetApi;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(19)
public class SurfaceReader {
    private static final String TAG = "SurfaceReader";
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    private ImageReader.OnImageAvailableListener mOnImageAvailableListener;
    private ImageReader mReader;
    private long mBufferCallback = 0;
    private long timeStamp = 0;

    public SurfaceReader(int i, int i2, int i3, int i4) {
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        this.mBackgroundHandler = new Handler(this.mBackgroundThread.getLooper());
        this.mReader = ImageReader.newInstance(i, i2, i3, i4);
        Log.e(TAG, "ImageReader format " + this.mReader.getImageFormat() + "maximage" + this.mReader.getMaxImages());
        ImageReader.OnImageAvailableListener onImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: com.alivc.component.encoder.SurfaceReader.1
            @Override // android.media.ImageReader.OnImageAvailableListener
            public void onImageAvailable(ImageReader imageReader) {
                Image imageAcquireNextImage = imageReader.acquireNextImage();
                if (imageAcquireNextImage == null) {
                    return;
                }
                if (imageAcquireNextImage.getFormat() == 1) {
                    SurfaceReader surfaceReader = SurfaceReader.this;
                    surfaceReader.nativeWriteRGBABuffer(surfaceReader.mBufferCallback, imageAcquireNextImage.getPlanes()[0].getRowStride(), imageAcquireNextImage.getWidth(), imageAcquireNextImage.getHeight(), SurfaceReader.this.timeStamp, imageAcquireNextImage.getPlanes()[0].getBuffer());
                } else {
                    int length = imageAcquireNextImage.getPlanes().length;
                    ByteBuffer[] byteBufferArr = new ByteBuffer[length];
                    for (int i5 = 0; i5 < length; i5++) {
                        byteBufferArr[i5] = imageAcquireNextImage.getPlanes()[i5].getBuffer();
                    }
                    SurfaceReader surfaceReader2 = SurfaceReader.this;
                    surfaceReader2.nativeWriteYUV420Buffer(surfaceReader2.mBufferCallback, imageAcquireNextImage.getWidth(), imageAcquireNextImage.getHeight(), SurfaceReader.this.timeStamp, byteBufferArr);
                }
                SurfaceReader.this.timeStamp += 40000;
                imageAcquireNextImage.close();
            }
        };
        this.mOnImageAvailableListener = onImageAvailableListener;
        this.mReader.setOnImageAvailableListener(onImageAvailableListener, this.mBackgroundHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeWriteRGBABuffer(long j, int i, int i2, int i3, long j2, ByteBuffer byteBuffer);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeWriteYUV420Buffer(long j, int i, int i2, long j2, ByteBuffer[] byteBufferArr);

    @NativeUsed
    public Surface getSurface() {
        ImageReader imageReader = this.mReader;
        if (imageReader != null) {
            return imageReader.getSurface();
        }
        return null;
    }

    @NativeUsed
    public void release() {
        ImageReader imageReader = this.mReader;
        if (imageReader != null) {
            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
            if (imageAcquireLatestImage != null) {
                imageAcquireLatestImage.close();
            }
            this.mReader.close();
        }
        this.mReader = null;
        this.mOnImageAvailableListener = null;
        this.mBackgroundThread.quitSafely();
        try {
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            Log.d(TAG, "setting background handler to null");
            this.mBackgroundHandler = null;
            Log.d(TAG, "background handler is now null");
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }

    @NativeUsed
    public void setBufferCallback(long j) {
        this.mBufferCallback = j;
    }
}
