package com.alivc.component.capture;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.SystemClock;
import android.view.Surface;
import com.alivc.live.pusher.LogUtil;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(21)
public class ScreenPusher {
    private static final int DISPLAY_FLAGS = 3;
    private static final String TAG = "ScreenPusher";
    private ScreenVideoParam mParam;
    private MediaProjection mediaProjection;
    private VirtualDisplay virtualDisplay;
    private Surface mSurface = null;
    private int VIRTUAL_DISPLAY_DPI = Videoio.CAP_PROP_XI_DOWNSAMPLING;
    private final int TIME_MILLISECOND = 1000;
    private Intent mediaProjectionPermissionResultData = null;
    private MediaProjection.Callback mediaProjectionCallback = new MediaProjection.Callback() { // from class: com.alivc.component.capture.ScreenPusher.1
        @Override // android.media.projection.MediaProjection.Callback
        public void onStop() {
            super.onStop();
        }
    };
    private SurfaceTexture mSurfaceTexture = null;
    private MediaProjectionManager mediaProjectionManager = null;
    private VideoSourceTextureListener mVideoSourceTextureListener = null;
    private long mBaseWallTime = 0;
    private long mStartElapsedTime = 0;
    private boolean mPause = false;
    private long mLastCaptureTime = 0;
    private int mLastFpsCounter = 0;
    private SurfaceTexture.OnFrameAvailableListener mOnFrameAvailableListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: com.alivc.component.capture.ScreenPusher.2
        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public void onFrameAvailable(SurfaceTexture surfaceTexture) {
            System.currentTimeMillis();
            if (ScreenPusher.this.mVideoSourceTextureListener != null) {
                if (ScreenPusher.this.mBaseWallTime == 0) {
                    ScreenPusher.this.mBaseWallTime = System.currentTimeMillis();
                    ScreenPusher.this.mStartElapsedTime = SystemClock.elapsedRealtime();
                }
                if (!ScreenPusher.this.mPause && ScreenPusher.this.mParam != null) {
                    ScreenPusher.this.mVideoSourceTextureListener.onVideoFrame((ScreenPusher.this.mBaseWallTime + (SystemClock.elapsedRealtime() - ScreenPusher.this.mStartElapsedTime)) * 1000, ScreenPusher.this.mParam.getWidth(), ScreenPusher.this.mParam.getHeight(), 17);
                }
            }
            ScreenPusher.this.mLastCaptureTime = System.currentTimeMillis();
            ScreenPusher.access$608(ScreenPusher.this);
        }
    };

    public interface VideoSourceTextureListener {
        void onVideoFrame(long j, int i, int i2, int i3);
    }

    static /* synthetic */ int access$608(ScreenPusher screenPusher) {
        int i = screenPusher.mLastFpsCounter;
        screenPusher.mLastFpsCounter = i + 1;
        return i;
    }

    private void createVirtualDisplay() {
        this.mSurfaceTexture.setDefaultBufferSize(this.mParam.getWidth(), this.mParam.getHeight());
        this.virtualDisplay = this.mediaProjection.createVirtualDisplay("AlivcScreenCapture", this.mParam.getWidth(), this.mParam.getHeight(), this.VIRTUAL_DISPLAY_DPI, 3, this.mSurface, null, null);
    }

    public void destroy() {
        LogUtil.d(TAG, "destroy.");
        this.mParam = null;
    }

    public void getTransformMatrix(float[] fArr) {
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture == null) {
            return;
        }
        surfaceTexture.getTransformMatrix(fArr);
    }

    public void init(int i, int i2, int i3, int i4, int i5, Intent intent, Context context) {
        this.mParam = new ScreenVideoParam(i2, i3, i4, i, i5);
        this.VIRTUAL_DISPLAY_DPI = context.getResources().getDisplayMetrics().densityDpi;
        this.mediaProjectionPermissionResultData = intent;
        this.mediaProjectionManager = (MediaProjectionManager) context.getSystemService("media_projection");
        LogUtil.d("VideoPusher", "====> Init src: " + i + ", width: " + i2 + ", height:" + i3 + ", fps:" + i4);
    }

    public void setVideoSourceTextureListener(VideoSourceTextureListener videoSourceTextureListener) {
        this.mVideoSourceTextureListener = videoSourceTextureListener;
    }

    public void start(int i) throws Exception {
        MediaProjectionManager mediaProjectionManager;
        LogUtil.d(TAG, "start.");
        Intent intent = this.mediaProjectionPermissionResultData;
        if (intent == null || (mediaProjectionManager = this.mediaProjectionManager) == null) {
            throw new Exception("invalid parameters");
        }
        try {
            this.mediaProjection = mediaProjectionManager.getMediaProjection(-1, intent);
            this.mSurfaceTexture = new SurfaceTexture(i);
            this.mSurface = new Surface(this.mSurfaceTexture);
            this.mSurfaceTexture.setOnFrameAvailableListener(this.mOnFrameAvailableListener);
            createVirtualDisplay();
        } catch (Throwable unused) {
        }
    }

    public void stop() {
        LogUtil.d(TAG, "stop.");
        VirtualDisplay virtualDisplay = this.virtualDisplay;
        if (virtualDisplay != null) {
            virtualDisplay.release();
            this.virtualDisplay = null;
        }
        MediaProjection mediaProjection = this.mediaProjection;
        if (mediaProjection != null) {
            mediaProjection.stop();
            this.mediaProjection = null;
        }
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
