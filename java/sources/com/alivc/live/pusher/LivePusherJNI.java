package com.alivc.live.pusher;

import a.a.a.a;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Environment;
import android.view.Surface;
import com.alivc.component.custom.AlivcLivePushCustomDetect;
import com.alivc.component.custom.AlivcLivePushCustomFilter;
import com.serenegiant.media.AbstractAudioEncoder;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class LivePusherJNI {
    private static String SDK_CACHE_PATH = null;
    public static String SD_DIR = "";
    public static boolean headSetOn = false;
    private int apiLevel;
    private int audioBitRate;
    private boolean audioCaptureWithouMix;
    private int audioChannel;
    private int audioEncoderMode;
    private int audioFormat;
    private boolean audioOnly;
    private int audioProfile;
    private int audioSample;
    private int audioSceneMode;
    private boolean autoFocus;
    private int bitrate;
    private int cameraPosition;
    private int connectRetryCount;
    private int connectRetryInterval;
    public Context context;
    private AlivcLivePushCustomDetect customDetect;
    private AlivcLivePushCustomFilter customFilter;
    private int customRotation;
    private int displayMode;
    private int dropKeepVideoListSize;
    public boolean enableAutoResolution;
    public boolean enableBitrateControl;
    private boolean enableCrashHandler;
    private boolean enableNarrowbandHDForScreenPusher;
    private int encoderMode;
    private int exposure;
    private boolean externMainStream;
    private boolean flash;
    private boolean focusBySensor;
    private int fps;
    private int gop;
    private int initialBitrate;
    private boolean mCustomDetectorInited;
    private boolean mCustomFilterInited;
    private LivePusherListener mLivePusherListener;
    private long mNativeHandler = 0;
    private AlivcSnapshotListener mSnapshotListener;
    private int maxControlFailedTime;
    private int maxTimeoutCount;
    private int maxVideoListSize;
    public Intent mediaProjectionPermissionResultData;
    private int minBitrate;
    private int minBitrateControlInterval;
    public int minFps;
    private int needUpBpsCacheSize;
    private int orientaion;
    private boolean previewMirror;
    private long ptsMaxDiff;
    private boolean pushMirror;
    private int qualityMode;
    private int queueSizeNeedBitrateControl;
    private boolean requireGLSharedContext;
    private int resolutionHeight;
    private int resolutionWidth;
    private int rtmpUpBPsMinFreePrecent;
    private int sendTimeout;
    public boolean surfaceCbMode;
    private int targetBitrate;
    private int upBpsRequestFreeDuration;
    private boolean useAliPlayerForBGM;
    private int videoFormat;
    private boolean videoOnly;

    public interface LivePusherListener {
        void onNotify(int i, String str, int i2, int i3, int i4, int i5, int i6, long j, String str2, String str3);
    }

    static {
        System.loadLibrary("RtsSDK");
        System.loadLibrary("live-rtmp");
        System.loadLibrary("live-fdkaac");
        System.loadLibrary("live-pusher");
    }

    public LivePusherJNI(Context context, AlivcLivePushConfig alivcLivePushConfig, LivePusherListener livePusherListener) {
        StringBuilder sb;
        this.resolutionWidth = 0;
        this.resolutionHeight = 0;
        this.fps = 20;
        this.targetBitrate = 1500;
        this.minBitrate = 300;
        this.bitrate = 800;
        this.initialBitrate = 800;
        this.audioSample = AlivcLivePushConstants.DEFAULT_VALUE_INT_AUDIO_SAMPLE_RATE;
        this.audioChannel = 2;
        this.audioProfile = 2;
        this.audioBitRate = AbstractAudioEncoder.DEFAULT_BIT_RATE;
        this.audioSceneMode = 1;
        this.connectRetryCount = 5;
        this.connectRetryInterval = 1000;
        this.sendTimeout = 5000;
        this.orientaion = 0;
        this.customRotation = 0;
        this.cameraPosition = 1;
        this.pushMirror = false;
        this.previewMirror = false;
        this.audioOnly = false;
        this.videoOnly = false;
        this.autoFocus = true;
        this.focusBySensor = false;
        this.flash = false;
        this.encoderMode = 0;
        this.audioEncoderMode = 0;
        this.videoFormat = 0;
        this.audioFormat = 0;
        this.exposure = 0;
        this.useAliPlayerForBGM = false;
        this.enableNarrowbandHDForScreenPusher = true;
        this.enableCrashHandler = true;
        this.gop = 1;
        int i = Build.VERSION.SDK_INT;
        this.apiLevel = i;
        this.ptsMaxDiff = 300L;
        this.maxTimeoutCount = 10;
        this.maxVideoListSize = 200;
        this.dropKeepVideoListSize = 40;
        this.queueSizeNeedBitrateControl = 30;
        this.minBitrateControlInterval = 3000000;
        this.upBpsRequestFreeDuration = 60000000;
        this.rtmpUpBPsMinFreePrecent = 50;
        this.needUpBpsCacheSize = 1;
        this.maxControlFailedTime = 3;
        this.context = null;
        this.surfaceCbMode = true;
        this.enableBitrateControl = true;
        this.enableAutoResolution = false;
        this.qualityMode = 0;
        this.displayMode = 0;
        this.mediaProjectionPermissionResultData = null;
        this.requireGLSharedContext = false;
        this.audioCaptureWithouMix = false;
        this.mLivePusherListener = null;
        this.customFilter = null;
        this.mCustomFilterInited = false;
        this.customDetect = null;
        this.mCustomDetectorInited = false;
        this.externMainStream = false;
        this.mSnapshotListener = null;
        if (context == null) {
            throw new IllegalStateException("context can not be null!");
        }
        this.context = context;
        a.a(context);
        String str = SD_DIR;
        if (str == null || str.isEmpty()) {
            SD_DIR = this.context.getFilesDir().getPath() + File.separator;
        }
        String str2 = SDK_CACHE_PATH;
        if (str2 == null || str2.isEmpty()) {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                sb = new StringBuilder();
                sb.append(this.context.getExternalFilesDir("private_data").getAbsolutePath());
                sb.append(File.separator);
            } else {
                sb = new StringBuilder();
                sb.append(this.context.getFilesDir());
                String str3 = File.separator;
                sb.append(str3);
                sb.append("private_data");
                sb.append(str3);
            }
            SDK_CACHE_PATH = sb.toString();
            File file = new File(SDK_CACHE_PATH);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        this.resolutionWidth = alivcLivePushConfig.getWidth();
        this.resolutionHeight = alivcLivePushConfig.getHeight();
        this.fps = alivcLivePushConfig.getFps();
        this.gop = alivcLivePushConfig.getVideoEncodeGop();
        this.targetBitrate = alivcLivePushConfig.getTargetVideoBitrate();
        this.minBitrate = alivcLivePushConfig.getMinVideoBitrate();
        this.bitrate = alivcLivePushConfig.getInitialVideoBitrate();
        this.initialBitrate = alivcLivePushConfig.getInitialVideoBitrate();
        this.audioSample = alivcLivePushConfig.getAudioSamepleRate().getAudioSampleRate();
        this.audioChannel = JNIUtils.AudioChannelToNative(alivcLivePushConfig.getAudioChannels() > 0 ? alivcLivePushConfig.getAudioChannels() : 12);
        this.connectRetryCount = alivcLivePushConfig.getConnectRetryCount();
        this.connectRetryInterval = alivcLivePushConfig.getConnectRetryInterval();
        this.orientaion = alivcLivePushConfig.getPreviewOrientation();
        this.customRotation = alivcLivePushConfig.getPreviewRotation();
        if (this.orientaion == AlivcPreviewOrientationEnum.ORIENTATION_LANDSCAPE_HOME_LEFT.getOrientation() || this.orientaion == AlivcPreviewOrientationEnum.ORIENTATION_LANDSCAPE_HOME_RIGHT.getOrientation()) {
            this.resolutionWidth = alivcLivePushConfig.getHeight();
            this.resolutionHeight = alivcLivePushConfig.getWidth();
        }
        if (this.customRotation == AlivcPreviewRotationEnum.ROTATION_90.getRotation() || this.customRotation == AlivcPreviewRotationEnum.ROTATION_270.getRotation()) {
            int i2 = this.resolutionWidth;
            this.resolutionWidth = this.resolutionHeight;
            this.resolutionHeight = i2;
        }
        this.cameraPosition = alivcLivePushConfig.getCameraType();
        this.pushMirror = alivcLivePushConfig.isPushMirror();
        this.previewMirror = alivcLivePushConfig.isPreviewMirror();
        this.audioOnly = alivcLivePushConfig.isAudioOnly();
        this.videoOnly = alivcLivePushConfig.isVideoOnly();
        this.autoFocus = alivcLivePushConfig.isAutoFocus();
        this.focusBySensor = alivcLivePushConfig.isFocusBySensor();
        this.flash = alivcLivePushConfig.isFlash();
        this.displayMode = alivcLivePushConfig.getPreviewDisplayMode().getPreviewDisplayMode();
        this.encoderMode = alivcLivePushConfig.getVideoEncodeMode().ordinal();
        this.audioEncoderMode = alivcLivePushConfig.getAudioEncodeMode().ordinal();
        this.videoFormat = JNIUtils.VideoFormatToNative(alivcLivePushConfig.getVideoFormat());
        this.audioFormat = JNIUtils.AudioFormatToNative(alivcLivePushConfig.getAudioFormat());
        this.exposure = 0;
        this.useAliPlayerForBGM = alivcLivePushConfig.useAliPlayerForBGM();
        this.enableNarrowbandHDForScreenPusher = alivcLivePushConfig.isEnableNarrowbandHDForScreenPusher();
        this.enableCrashHandler = alivcLivePushConfig.isEnableSDKCrashMechanism();
        this.mLivePusherListener = livePusherListener;
        this.minFps = alivcLivePushConfig.getMinFps();
        this.qualityMode = alivcLivePushConfig.getQualityMode().getQualityMode();
        this.audioProfile = alivcLivePushConfig.getAudioProfile().getAudioProfile();
        this.audioBitRate = alivcLivePushConfig.getAudioBitRate();
        this.audioSceneMode = alivcLivePushConfig.getAudioSceneMode().getAudioSceneMode();
        if (i >= 21) {
            this.mediaProjectionPermissionResultData = alivcLivePushConfig.getMediaProjectionPermissionResultData();
        }
        if (this.mediaProjectionPermissionResultData != null) {
            this.displayMode = AlivcPreviewDisplayMode.ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FILL.getPreviewDisplayMode();
        }
        this.enableAutoResolution = alivcLivePushConfig.isEnableAutoResolution();
        this.enableBitrateControl = alivcLivePushConfig.isEnableBitrateControl();
        boolean zIsExternMainStream = alivcLivePushConfig.isExternMainStream();
        this.externMainStream = zIsExternMainStream;
        if (zIsExternMainStream) {
            this.surfaceCbMode = false;
            this.videoFormat = alivcLivePushConfig.getAlivcExternMainImageFormat().getAlivcImageFormat();
            this.audioFormat = alivcLivePushConfig.getAlivcExternMainSoundFormat().getAlivcSoundFormat();
        }
        this.sendTimeout = alivcLivePushConfig.getSendDataTimeout();
        this.requireGLSharedContext = alivcLivePushConfig.getRequireRenderContextNotify();
        this.audioCaptureWithouMix = alivcLivePushConfig.getAudioCaptureWithoutMix();
    }

    private native void addLiveWaterMark(String str, float f2, float f3, float f4, float f5);

    private native int addNativeAddons(String str, long j, long j2, float f2, float f3, float f4, float f5, int i, boolean z);

    private native int addNativeMixAudio(int i, int i2, int i3);

    private native int addNativeMixVideo(int i, int i2, int i3, int i4, float f2, float f3, float f4, float f5, boolean z);

    private native void addNativePushImage(String str, String str2);

    private native void addNativeSeiInfo(String str, int i, int i2, boolean z, boolean z2);

    private native void changeNativeResolution(int i, int i2);

    private native int getLiveCameraCurrentExposure();

    private native int getLiveCameraCurrentZoom();

    private native int getLiveCameraMaxExposure();

    private native int getLiveCameraMaxZoom();

    private native int getLiveCameraMinExposure();

    private native String getLivePerformanceInfo();

    private native String getLivePusherInfo();

    private native String getLiveTraceId();

    private static native String getNativeSDKVersion();

    public static String getSdkVersion() {
        return getNativeSDKVersion();
    }

    private native long initLive(boolean z);

    private native boolean inputNativeMixAudioData(int i, byte[] bArr, int i2, long j);

    private native boolean inputNativeMixAudioPtr(int i, long j, int i2, long j2);

    private native void inputNativeMixTexture(int i, int i2, int i3, int i4, long j, int i5);

    private native void inputNativeMixVideoData(int i, byte[] bArr, int i2, int i3, int i4, int i5, long j, int i6);

    private native void inputNativeMixVideoPtr(int i, long j, int i2, int i3, int i4, int i5, long j2, int i6);

    private native void inputNativeStreamAudioData(byte[] bArr, int i, int i2, int i3, long j);

    private native void inputNativeStreamAudioPtr(long j, int i, int i2, int i3, long j2);

    private native void inputNativeStreamTexture(int i, int i2, int i3, int i4, long j, int i5, long j2);

    private native void inputNativeStreamVideoData(byte[] bArr, int i, int i2, int i3, int i4, long j, int i5);

    private native void inputNativeStreamVideoPtr(long j, int i, int i2, int i3, int i4, long j2, int i5);

    private native boolean isLiveNetworkPushing();

    private native boolean isLivePushing();

    private native boolean isLiveSupportAutoFocus();

    private native boolean isLiveSupportFlash();

    private native int mixVideoChangePosition(int i, float f2, float f3, float f4, float f5);

    private native void mixVideoMirror(int i, boolean z);

    private native int mixVideoRequireMain(int i, boolean z);

    private native void notifyLiveSurfaceChanged(Surface surface, int i);

    private native void notifyLiveSurfaceDestroy();

    private native void notifyLiveSurfaceRecreate(Surface surface);

    private native void pauseLive();

    private native void pauseLiveScreenCapture();

    private native void pauseNativeBGM();

    private native int reconnectLive(String str, boolean z);

    private native void removeNativeAddons(int i);

    private native void removeNativeMixAudio(int i);

    private native void removeNativeMixVideo(int i);

    private native void removeNativePushImage();

    private native int restartLivePush(Surface surface, boolean z, int i);

    private native void resumeLive(boolean z);

    private native int resumeLiveScreenCapture();

    private native void resumeNativeBGM();

    private native int screenCaptureStartCamera(Surface surface);

    private native int screenCaptureStartMix(float f2, float f3, float f4, float f5);

    private native void screenCaptureStopCamera();

    private native void screenCaptureStopMix();

    private native void screenSetScreenOrientation(int i);

    private native int setLiveCameraExposure(int i);

    private native int setLiveCameraFocus(boolean z, float f2, float f3);

    private native int setLiveCameraZoom(float f2);

    private native int setLiveFlash(boolean z);

    private native int setLiveMute(boolean z);

    private native void setLivePreviewMirror(boolean z);

    private native void setLivePusherMirror(boolean z);

    private native void setLiveScreenOrientation(int i);

    private native void setLiveVideoBitrateRange(int i, int i2, int i3);

    private native void setNativeBGMLoop(boolean z);

    private native void setNativeBackgroundMusicVolume(int i);

    private native void setNativeCaptureAudioVolume(int i);

    private native void setNativeDenoise(boolean z);

    private native void setNativeDisplayMode(int i);

    private native void setNativeEarsBack(boolean z);

    private native void setNativeHeadSet(boolean z);

    private native void setNativeLogDirPath(String str);

    private native void setNativeLogLevel(int i);

    private native void setNativeMainStreamPosition(float f2, float f3, float f4, float f5);

    private native void setNativeQualityMode(int i);

    private native void setNativeWatermarkVisible(boolean z);

    private native void snapshotNative(int i, int i2);

    private native int startLivePreview(Surface surface, boolean z, boolean z2);

    private native int startLivePush(String str, boolean z, boolean z2);

    private native void startNativeBGMAsync(String str);

    private native int stopLivePreview();

    private native int stopLivePush();

    private native void stopNativeBGM();

    private native int switchLiveCamera();

    private native void unInitLive();

    public int addDynamicsAddons(String str, long j, long j2, float f2, float f3, float f4, float f5, int i, boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return addNativeAddons(str, j, j2, f2, f3, f4, f5, i, z);
    }

    public int addMixAudio(int i, int i2, int i3) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return addNativeMixAudio(i, i2, i3);
    }

    public int addMixVideo(int i, int i2, int i3, int i4, float f2, float f3, float f4, float f5, boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return addNativeMixVideo(i, i2, i3, i4, f2, f3, f4, f5, z);
    }

    public void addPushImage(String str, String str2) {
        if (this.mNativeHandler == 0) {
            return;
        }
        addNativePushImage(str, str2);
    }

    public void addSeiInfo(String str, int i, int i2, boolean z, boolean z2) {
        if (this.mNativeHandler == 0) {
            return;
        }
        addNativeSeiInfo(str, i, i2, z, z2);
    }

    public void addWaterMark(String str, float f2, float f3, float f4, float f5) {
        if (this.mNativeHandler == 0) {
            return;
        }
        addLiveWaterMark(str, f2, f3, f4, f5);
    }

    void changeResolution(int i, int i2) {
        if (this.mNativeHandler == 0) {
            return;
        }
        if (this.orientaion == AlivcPreviewOrientationEnum.ORIENTATION_LANDSCAPE_HOME_LEFT.getOrientation() || this.orientaion == AlivcPreviewOrientationEnum.ORIENTATION_LANDSCAPE_HOME_RIGHT.getOrientation()) {
            this.resolutionWidth = i2;
            this.resolutionHeight = i;
        } else {
            this.resolutionWidth = i;
            this.resolutionHeight = i2;
        }
        changeNativeResolution(this.resolutionWidth, this.resolutionHeight);
    }

    void customBeautyCreate() {
        AlivcLivePushCustomFilter alivcLivePushCustomFilter = this.customFilter;
        if (alivcLivePushCustomFilter == null) {
            return;
        }
        alivcLivePushCustomFilter.customFilterCreate();
        this.mCustomFilterInited = true;
    }

    void customBeautyDestroy() {
        AlivcLivePushCustomFilter alivcLivePushCustomFilter = this.customFilter;
        if (alivcLivePushCustomFilter == null) {
            return;
        }
        if (this.mCustomFilterInited) {
            alivcLivePushCustomFilter.customFilterDestroy();
        }
        this.mCustomFilterInited = false;
    }

    int customBeautyProcess(int i, int i2, int i3, long j) {
        AlivcLivePushCustomFilter alivcLivePushCustomFilter = this.customFilter;
        return (alivcLivePushCustomFilter != null && this.mCustomFilterInited) ? alivcLivePushCustomFilter.customFilterProcess(i, i2, i3, j) : i;
    }

    void customDetectCreate() {
        AlivcLivePushCustomDetect alivcLivePushCustomDetect = this.customDetect;
        if (alivcLivePushCustomDetect == null) {
            return;
        }
        alivcLivePushCustomDetect.customDetectCreate();
        this.mCustomDetectorInited = true;
    }

    void customDetectDestroy() {
        AlivcLivePushCustomDetect alivcLivePushCustomDetect = this.customDetect;
        if (alivcLivePushCustomDetect == null) {
            return;
        }
        if (this.mCustomDetectorInited) {
            alivcLivePushCustomDetect.customDetectDestroy();
        }
        this.mCustomDetectorInited = false;
    }

    long customDetectProcess(long j, int i, int i2, int i3, int i4, long j2) {
        AlivcLivePushCustomDetect alivcLivePushCustomDetect = this.customDetect;
        if (alivcLivePushCustomDetect != null && this.mCustomDetectorInited) {
            return alivcLivePushCustomDetect.customDetectProcess(j, i, i2, i3, i4, j2);
        }
        return 0L;
    }

    public int getCameraCurrentZoom() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return getLiveCameraCurrentZoom();
    }

    public int getCameraMaxZoom() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return getLiveCameraMaxZoom();
    }

    public int getCurrentExposureCompensation() {
        if (this.mNativeHandler == 0) {
            return 0;
        }
        return getLiveCameraCurrentExposure();
    }

    public int getMaxExposureCompensation() {
        if (this.mNativeHandler == 0) {
            return 0;
        }
        return getLiveCameraMaxExposure();
    }

    public int getMinExposureCompensation() {
        if (this.mNativeHandler == 0) {
            return 0;
        }
        return getLiveCameraMinExposure();
    }

    public String getPerformanceInfo() {
        if (this.mNativeHandler == 0) {
            return null;
        }
        return getLivePerformanceInfo();
    }

    public long getPusherHandler() {
        LogUtil.d("LivePusherJNI", "getPusherHandler " + this.mNativeHandler);
        return this.mNativeHandler;
    }

    public String getPusherInfo() {
        if (this.mNativeHandler == 0) {
            return null;
        }
        return getLivePusherInfo();
    }

    public String getPusherTraceId() {
        if (this.mNativeHandler == 0) {
            return null;
        }
        return getLiveTraceId();
    }

    public void init() {
        initLive(this.externMainStream);
        LogUtil.d("LivePusherJNI", "native handler " + this.mNativeHandler);
    }

    public void initStream() {
        initLive(true);
        LogUtil.d("LivePusherJNI", "native handler " + this.mNativeHandler);
    }

    public boolean inputMixAudioData(int i, byte[] bArr, int i2, long j) {
        if (this.mNativeHandler == 0) {
            return false;
        }
        return inputNativeMixAudioData(i, bArr, i2, j);
    }

    public boolean inputMixAudioPtr(int i, long j, int i2, long j2) {
        if (this.mNativeHandler == 0) {
            return false;
        }
        return inputNativeMixAudioPtr(i, j, i2, j2);
    }

    public void inputMixTexture(int i, int i2, int i3, int i4, long j, int i5) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeMixTexture(i, i2, i3, i4, j, i5);
    }

    public void inputMixVideoData(int i, byte[] bArr, int i2, int i3, int i4, int i5, long j, int i6) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeMixVideoData(i, bArr, i2, i3, i4, i5, j, i6);
    }

    public void inputMixVideoPtr(int i, long j, int i2, int i3, int i4, int i5, long j2, int i6) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeMixVideoPtr(i, j, i2, i3, i4, i5, j2, i6);
    }

    public void inputStreamAudioData(byte[] bArr, int i, int i2, int i3, long j) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeStreamAudioData(bArr, i, i2, i3, j);
    }

    public void inputStreamAudioPtr(long j, int i, int i2, int i3, long j2) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeStreamAudioPtr(j, i, i2, i3, j2);
    }

    public void inputStreamTexture(int i, int i2, int i3, int i4, long j, int i5, long j2) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeStreamTexture(i, i2, i3, i4, j, i5, j2);
    }

    public void inputStreamVideoData(byte[] bArr, int i, int i2, int i3, int i4, long j, int i5) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeStreamVideoData(bArr, i, i2, i3, i4, j, i5);
    }

    public void inputStreamVideoPtr(long j, int i, int i2, int i3, int i4, long j2, int i5) {
        if (this.mNativeHandler == 0) {
            return;
        }
        inputNativeStreamVideoPtr(j, i, i2, i3, i4, j2, i5);
    }

    public boolean isCameraSupportAutoFocus() {
        if (this.mNativeHandler == 0) {
            return false;
        }
        return isLiveSupportAutoFocus();
    }

    public boolean isCameraSupportFlash() {
        if (this.mNativeHandler == 0) {
            return false;
        }
        return isLiveSupportFlash();
    }

    public boolean isNetworkPushing() {
        if (this.mNativeHandler == 0) {
            return false;
        }
        return isLiveNetworkPushing();
    }

    public boolean isPushing() {
        if (this.mNativeHandler == 0) {
            return false;
        }
        return isLivePushing();
    }

    public int mixStreamChangePosition(int i, float f2, float f3, float f4, float f5) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return mixVideoChangePosition(i, f2, f3, f4, f5);
    }

    public int mixStreamRequireMain(int i, boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return mixVideoRequireMain(i, z);
    }

    public void notifySurfaceChange(Surface surface, int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        notifyLiveSurfaceChanged(surface, i);
    }

    public void notifySurfaceDestroy() {
        if (this.mNativeHandler == 0) {
            return;
        }
        notifyLiveSurfaceDestroy();
    }

    public void notifySurfaceReCreate(Surface surface) {
        if (this.mNativeHandler == 0) {
            return;
        }
        notifyLiveSurfaceRecreate(surface);
    }

    public int onNotification(int i, String str, int i2, int i3, int i4, int i5, int i6, long j, String str2, String str3) {
        LivePusherListener livePusherListener = this.mLivePusherListener;
        if (livePusherListener == null) {
            return 0;
        }
        livePusherListener.onNotify(i, str, i2, i3, i4, i5, i6, j, str2, str3);
        return 0;
    }

    public void pause() {
        if (this.mNativeHandler == 0) {
            return;
        }
        pauseLive();
    }

    public void pauseBGM() {
        pauseNativeBGM();
    }

    public void pauseScreenCapture() {
        if (this.mNativeHandler == 0) {
            return;
        }
        pauseLiveScreenCapture();
    }

    public int reconnect(String str, boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return reconnectLive(str, z);
    }

    public void release() {
        if (this.mNativeHandler == 0) {
            return;
        }
        unInitLive();
        this.mNativeHandler = 0L;
    }

    public void releaseStream() {
        if (this.mNativeHandler == 0) {
            return;
        }
        unInitLive();
        this.mNativeHandler = 0L;
    }

    public void removeDynamicsAddons(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        removeNativeAddons(i);
    }

    public void removeMixAudio(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        removeNativeMixAudio(i);
    }

    public void removeMixVideo(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        removeNativeMixVideo(i);
    }

    public void removePushImage() {
        if (this.mNativeHandler == 0) {
            return;
        }
        removeNativePushImage();
    }

    public int restartPush(Surface surface, boolean z, int i) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return restartLivePush(surface, z, i);
    }

    public void resume(boolean z) {
        if (this.mNativeHandler == 0) {
            return;
        }
        resumeLive(z);
    }

    public void resumeBGM() {
        resumeNativeBGM();
    }

    public int resumeScreenCapture() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return resumeLiveScreenCapture();
    }

    public void setAudioDenoise(boolean z) {
        setNativeDenoise(z);
    }

    public void setAudioVolume(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setNativeCaptureAudioVolume(i);
    }

    public void setBGMLoop(boolean z) {
        setNativeBGMLoop(z);
    }

    public void setBackgroundMusicVolume(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setNativeBackgroundMusicVolume(i);
    }

    public int setCameraFocus(boolean z, float f2, float f3) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return setLiveCameraFocus(z, f2, f3);
    }

    public int setCameraZoom(float f2) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return setLiveCameraZoom(f2);
    }

    public void setCustomDetect(AlivcLivePushCustomDetect alivcLivePushCustomDetect) {
        this.customDetect = alivcLivePushCustomDetect;
    }

    public void setCustomFilter(AlivcLivePushCustomFilter alivcLivePushCustomFilter) {
        this.customFilter = alivcLivePushCustomFilter;
    }

    public void setDisplayMode(int i) {
        setNativeDisplayMode(i);
    }

    public void setEarsBack(boolean z) {
        setNativeEarsBack(z);
    }

    public void setExposureCompensation(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setLiveCameraExposure(i);
    }

    public int setFlash(boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return setLiveFlash(z);
    }

    public void setFps(int i) {
        this.fps = i;
    }

    public void setGop(int i) {
        this.gop = i;
    }

    public void setHeadSet(boolean z) {
        headSetOn = z;
        if (this.mNativeHandler == 0) {
            return;
        }
        setNativeHeadSet(z);
    }

    public void setLogDirPath(String str) {
        setNativeLogDirPath(str);
    }

    public void setLogLevel(int i) {
        setNativeLogLevel(i);
    }

    public void setMainStreamPosition(float f2, float f3, float f4, float f5) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setNativeMainStreamPosition(f2, f3, f4, f5);
    }

    public void setMixStreamMirror(int i, boolean z) {
        if (this.mNativeHandler == 0) {
            return;
        }
        mixVideoMirror(i, z);
    }

    public int setMute(boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        LogUtil.d("LivePusherJNI", "setMute");
        return setLiveMute(z);
    }

    public void setOrientaion(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setLiveScreenOrientation(i);
    }

    public void setPreOrientaion(int i) {
        this.orientaion = i;
    }

    public void setPreviewMirror(boolean z) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setLivePreviewMirror(z);
    }

    public void setPusherMirror(boolean z) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setLivePusherMirror(z);
    }

    public void setQualityMode(int i) {
        setNativeQualityMode(i);
    }

    public void setScreenOrientation(int i) {
        if (this.mNativeHandler == 0) {
            return;
        }
        screenSetScreenOrientation(i);
    }

    public void setVideoBitrateRange(int i, int i2, int i3) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setLiveVideoBitrateRange(i, i2, i3);
    }

    public void setWaterMarkVisible(boolean z) {
        if (this.mNativeHandler == 0) {
            return;
        }
        setNativeWatermarkVisible(z);
    }

    public void snapshot(int i, int i2, AlivcSnapshotListener alivcSnapshotListener) {
        if (this.mNativeHandler == 0) {
            return;
        }
        this.mSnapshotListener = alivcSnapshotListener;
        snapshotNative(i, i2);
    }

    void snapshotCallback(Bitmap bitmap) {
        AlivcSnapshotListener alivcSnapshotListener;
        if (bitmap == null || (alivcSnapshotListener = this.mSnapshotListener) == null) {
            return;
        }
        alivcSnapshotListener.onSnapshot(bitmap);
    }

    public void startBGMAsync(String str) {
        setNativeHeadSet(headSetOn);
        startNativeBGMAsync(str);
    }

    public int startCamera(Surface surface) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return screenCaptureStartCamera(surface);
    }

    public int startCameraMix(float f2, float f3, float f4, float f5) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return screenCaptureStartMix(f2, f3, f4, f5);
    }

    public int startPreview(Surface surface, boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return startLivePreview(surface, z, this.externMainStream);
    }

    public int startPreviewStream(Surface surface) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return startLivePreview(surface, true, true);
    }

    public int startPush(String str, boolean z) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        setNativeHeadSet(headSetOn);
        return startLivePush(str, z, this.externMainStream);
    }

    public int startPushStream(String str) {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        setNativeHeadSet(headSetOn);
        return startLivePush(str, true, true);
    }

    public void stopBGM() {
        stopNativeBGM();
    }

    public void stopCamera() {
        if (this.mNativeHandler == 0) {
            return;
        }
        screenCaptureStopCamera();
    }

    public void stopCameraMix() {
        if (this.mNativeHandler == 0) {
            return;
        }
        screenCaptureStopMix();
    }

    public int stopPreview() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return stopLivePreview();
    }

    public int stopPreviewStream() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return stopLivePreview();
    }

    public int stopPush() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return stopLivePush();
    }

    public int stopPushStream() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return stopLivePush();
    }

    public int switchCamera() {
        if (this.mNativeHandler == 0) {
            return -1;
        }
        return switchLiveCamera();
    }
}
