package com.alivc.live.pusher;

import android.content.Intent;
import android.os.Build;
import com.serenegiant.media.AbstractAudioEncoder;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class AlivcLivePushConfig implements Serializable {
    public static final String CONFIG = "AlivcLivePushConfig";
    private static final int RESOLUTION_ALIGN = 16;
    private static Intent mediaProjectionPermissionResultData;
    private int audioBitRate;
    private AlivcAudioAACProfileEnum audioProfile;
    private AlivcAudioSceneModeEnum audioSceneMode;
    private boolean enableAutoResolution;
    private boolean enableBitrateControl;
    private boolean enableNarrowbandHDForScreenPusher;
    private boolean enableSDKCrashMechanism;
    private boolean externMainStream;
    private boolean initBitFlag;
    private AlivcImageFormat mAlivcExternMainImageFormat;
    private AlivcSoundFormat mAlivcExternMainSoundFormat;
    private boolean mAudioCaptureWithouMix;
    private AlivcAudioChannelEnum mAudioChannels;
    private AlivcEncodeModeEnum mAudioEncodeMode;
    private int mAudioFormat;
    private boolean mAudioOnly;
    private AlivcAudioSampleRateEnum mAudioSamepleRate;
    private boolean mAutoFocus;
    private AlivcLivePushCameraTypeEnum mCameraType;
    private int mConnectRetryCount;
    private int mConnectRetryInterval;
    private int mExposure;
    private String mExtraInfo;
    private boolean mFlash;
    private boolean mFocusBySensor;
    private AlivcFpsEnum mFps;
    private int mHeight;
    private int mInitialVideoBitrate;
    private int mMaxTimeoutCount;
    private int mMinVideoBitrate;
    private String mNetworkPoorPushImagePath;
    private String mPausePushImagePath;
    private AlivcPreviewDisplayMode mPreviewDisplayMode;
    private boolean mPreviewMirror;
    private AlivcPreviewOrientationEnum mPreviewOrientation;
    private AlivcPreviewRotationEnum mPreviewRotation;
    private long mPtsMaxDiff;
    private boolean mPushMirror;
    private AlivcResolutionEnum mResolution;
    private int mTargetVideoBitrate;
    private boolean mUseAliPlayerForBGM;
    private AlivcVideoEncodeGopEnum mVideoEncodeGop;
    private AlivcEncodeModeEnum mVideoEncodeMode;
    private int mVideoFormat;
    private boolean mVideoOnly;
    private int mWidth;
    private boolean minBitFlag;
    private AlivcFpsEnum minFps;
    private AlivcQualityModeEnum qualityMode;
    private boolean requireGLSharedContext;
    private int sendDataTimeout;
    private boolean targetBitFlag;
    private ArrayList<WaterMarkInfo> waterMarkInfos;

    public AlivcLivePushConfig() {
        AlivcResolutionEnum alivcResolutionEnum = AlivcLivePushConstants.DEFAULT_VALUE_INT_DEFINITION;
        this.mResolution = alivcResolutionEnum;
        this.mFps = AlivcFpsEnum.FPS_20;
        this.mTargetVideoBitrate = 1200;
        this.mMinVideoBitrate = 300;
        this.mInitialVideoBitrate = 1000;
        this.mAudioSamepleRate = AlivcAudioSampleRateEnum.AUDIO_SAMPLE_RATE_48000;
        this.mPreviewOrientation = AlivcPreviewOrientationEnum.ORIENTATION_PORTRAIT;
        this.mPreviewRotation = AlivcPreviewRotationEnum.ROTATION_0;
        this.mPreviewDisplayMode = AlivcPreviewDisplayMode.ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FIT;
        this.mCameraType = AlivcLivePushCameraTypeEnum.CAMERA_TYPE_FRONT;
        this.mPreviewMirror = false;
        this.mPushMirror = false;
        this.mAudioOnly = false;
        this.mVideoOnly = false;
        this.mAutoFocus = true;
        this.mFocusBySensor = false;
        this.mFlash = false;
        this.mWidth = AlivcResolutionEnum.GetResolutionWidth(alivcResolutionEnum);
        this.mHeight = AlivcResolutionEnum.GetResolutionHeight(alivcResolutionEnum);
        this.mConnectRetryCount = 5;
        this.mConnectRetryInterval = 1000;
        this.mPtsMaxDiff = 300L;
        this.mMaxTimeoutCount = 10;
        this.mAudioChannels = AlivcAudioChannelEnum.AUDIO_CHANNEL_TWO;
        this.mVideoEncodeMode = AlivcEncodeModeEnum.Encode_MODE_HARD;
        this.mAudioEncodeMode = AlivcEncodeModeEnum.Encode_MODE_SOFT;
        this.mVideoFormat = 17;
        this.mAudioFormat = 2;
        this.mAlivcExternMainImageFormat = AlivcImageFormat.IMAGE_FORMAT_YUV420P;
        this.mAlivcExternMainSoundFormat = AlivcSoundFormat.SOUND_FORMAT_S16;
        this.mVideoEncodeGop = AlivcVideoEncodeGopEnum.GOP_TWO;
        this.mExposure = 0;
        this.mUseAliPlayerForBGM = false;
        this.enableNarrowbandHDForScreenPusher = true;
        this.enableSDKCrashMechanism = true;
        this.minFps = AlivcFpsEnum.FPS_8;
        this.enableBitrateControl = true;
        this.enableAutoResolution = false;
        this.initBitFlag = false;
        this.minBitFlag = false;
        this.targetBitFlag = false;
        this.externMainStream = false;
        this.sendDataTimeout = 3000;
        this.qualityMode = AlivcQualityModeEnum.QM_RESOLUTION_FIRST;
        this.audioProfile = AlivcAudioAACProfileEnum.AAC_LC;
        this.audioBitRate = AbstractAudioEncoder.DEFAULT_BIT_RATE;
        this.audioSceneMode = AlivcAudioSceneModeEnum.AUDIO_SCENE_DEFAULT_MODE;
        this.mPausePushImagePath = "";
        this.mNetworkPoorPushImagePath = "";
        this.requireGLSharedContext = false;
        this.mAudioCaptureWithouMix = false;
        this.waterMarkInfos = new ArrayList<>();
        mediaProjectionPermissionResultData = null;
        if (Build.MANUFACTURER.equals("Letv") || Build.MODEL.equals("Le X620")) {
            this.mAudioCaptureWithouMix = true;
        }
    }

    public static void setMediaProjectionPermissionResultData(Intent intent) {
        mediaProjectionPermissionResultData = intent;
    }

    public void addWaterMark(String str, float f2, float f3, float f4) {
        WaterMarkInfo waterMarkInfo = new WaterMarkInfo();
        waterMarkInfo.mWaterMarkPath = str;
        waterMarkInfo.mWaterMarkCoordX = f2;
        waterMarkInfo.mWaterMarkCoordY = f3;
        waterMarkInfo.mWaterMarkWidth = f4;
        if (this.waterMarkInfos.size() < 3) {
            this.waterMarkInfos.add(waterMarkInfo);
        }
    }

    public void clearWaterMark() {
        this.waterMarkInfos.clear();
    }

    public AlivcImageFormat getAlivcExternMainImageFormat() {
        return this.mAlivcExternMainImageFormat;
    }

    public AlivcSoundFormat getAlivcExternMainSoundFormat() {
        return this.mAlivcExternMainSoundFormat;
    }

    public int getAudioBitRate() {
        return this.audioBitRate;
    }

    protected boolean getAudioCaptureWithoutMix() {
        return this.mAudioCaptureWithouMix;
    }

    protected int getAudioChannels() {
        return this.mAudioChannels.getChannelCount();
    }

    protected AlivcEncodeModeEnum getAudioEncodeMode() {
        return this.mAudioEncodeMode;
    }

    protected int getAudioFormat() {
        return this.mAudioFormat;
    }

    public AlivcAudioAACProfileEnum getAudioProfile() {
        return this.audioProfile;
    }

    protected AlivcAudioSampleRateEnum getAudioSamepleRate() {
        return this.mAudioSamepleRate;
    }

    public AlivcAudioSceneModeEnum getAudioSceneMode() {
        return this.audioSceneMode;
    }

    public int getCameraType() {
        return this.mCameraType.getCameraId();
    }

    protected int getConnectRetryCount() {
        return this.mConnectRetryCount;
    }

    protected int getConnectRetryInterval() {
        return this.mConnectRetryInterval;
    }

    protected int getExposure() {
        return this.mExposure;
    }

    public String getExtraInfo() {
        return this.mExtraInfo;
    }

    protected int getFps() {
        return this.mFps.getFps();
    }

    protected int getHeight() {
        return this.mHeight;
    }

    protected int getInitialVideoBitrate() {
        return this.mInitialVideoBitrate;
    }

    public Intent getMediaProjectionPermissionResultData() {
        return mediaProjectionPermissionResultData;
    }

    protected int getMinFps() {
        return this.minFps.getFps();
    }

    protected int getMinVideoBitrate() {
        return this.mMinVideoBitrate;
    }

    public String getNetworkPoorPushImage() {
        return this.mNetworkPoorPushImagePath;
    }

    public String getPausePushImage() {
        return this.mPausePushImagePath;
    }

    public AlivcPreviewDisplayMode getPreviewDisplayMode() {
        return this.mPreviewDisplayMode;
    }

    public int getPreviewOrientation() {
        return this.mPreviewOrientation.getOrientation();
    }

    protected int getPreviewRotation() {
        return this.mPreviewRotation.getRotation();
    }

    public AlivcQualityModeEnum getQualityMode() {
        return this.qualityMode;
    }

    public boolean getRequireRenderContextNotify() {
        return this.requireGLSharedContext;
    }

    protected AlivcResolutionEnum getResolution() {
        return this.mResolution;
    }

    public int getSendDataTimeout() {
        return this.sendDataTimeout;
    }

    protected int getTargetVideoBitrate() {
        return this.mTargetVideoBitrate;
    }

    protected int getVideoEncodeGop() {
        return this.mVideoEncodeGop.getGop();
    }

    protected AlivcEncodeModeEnum getVideoEncodeMode() {
        return this.mVideoEncodeMode;
    }

    protected int getVideoFormat() {
        return this.mVideoFormat;
    }

    ArrayList<WaterMarkInfo> getWaterMarkInfos() {
        return this.waterMarkInfos;
    }

    protected int getWidth() {
        return this.mWidth;
    }

    public boolean isAudioOnly() {
        return this.mAudioOnly;
    }

    protected boolean isAutoFocus() {
        return this.mAutoFocus;
    }

    public boolean isEnableAutoResolution() {
        return this.enableAutoResolution;
    }

    public boolean isEnableBitrateControl() {
        return this.enableBitrateControl;
    }

    protected boolean isEnableNarrowbandHDForScreenPusher() {
        return this.enableNarrowbandHDForScreenPusher;
    }

    protected boolean isEnableSDKCrashMechanism() {
        return this.enableSDKCrashMechanism;
    }

    public boolean isExternMainStream() {
        return this.externMainStream;
    }

    protected boolean isFlash() {
        return this.mFlash;
    }

    protected boolean isFocusBySensor() {
        return this.mFocusBySensor;
    }

    protected boolean isPreviewMirror() {
        return this.mPreviewMirror;
    }

    protected boolean isPushMirror() {
        return this.mPushMirror;
    }

    public boolean isVideoOnly() {
        return this.mVideoOnly;
    }

    public void removeWaterMark(String str) {
        for (WaterMarkInfo waterMarkInfo : this.waterMarkInfos) {
            if (str != null && str.equals(waterMarkInfo.mWaterMarkPath)) {
                this.waterMarkInfos.remove(waterMarkInfo);
                return;
            }
        }
    }

    public void setAlivcExternMainImageFormat(AlivcImageFormat alivcImageFormat) {
        this.mAlivcExternMainImageFormat = alivcImageFormat;
    }

    public void setAlivcExternMainSoundFormat(AlivcSoundFormat alivcSoundFormat) {
        this.mAlivcExternMainSoundFormat = alivcSoundFormat;
    }

    public void setAudioBitRate(int i) {
        this.audioBitRate = i;
    }

    public void setAudioCaptureWithoutMix(boolean z) {
        this.mAudioCaptureWithouMix = z;
    }

    public void setAudioChannels(AlivcAudioChannelEnum alivcAudioChannelEnum) {
        this.mAudioChannels = alivcAudioChannelEnum;
    }

    public void setAudioEncodeMode(AlivcEncodeModeEnum alivcEncodeModeEnum) {
        this.mAudioEncodeMode = alivcEncodeModeEnum;
    }

    protected void setAudioFormat(int i) {
        this.mAudioFormat = i;
    }

    public void setAudioOnly(boolean z) {
        this.mAudioOnly = z;
    }

    public void setAudioProfile(AlivcAudioAACProfileEnum alivcAudioAACProfileEnum) {
        this.audioProfile = alivcAudioAACProfileEnum;
    }

    public void setAudioSamepleRate(AlivcAudioSampleRateEnum alivcAudioSampleRateEnum) {
        this.mAudioSamepleRate = alivcAudioSampleRateEnum;
    }

    public void setAudioSceneMode(AlivcAudioSceneModeEnum alivcAudioSceneModeEnum) {
        this.audioSceneMode = alivcAudioSceneModeEnum;
    }

    public void setAutoFocus(boolean z) {
        this.mAutoFocus = z;
    }

    public void setCameraType(AlivcLivePushCameraTypeEnum alivcLivePushCameraTypeEnum) {
        this.mCameraType = alivcLivePushCameraTypeEnum;
    }

    public void setConnectRetryCount(int i) {
        this.mConnectRetryCount = i;
    }

    public void setConnectRetryInterval(int i) {
        this.mConnectRetryInterval = i;
    }

    public void setEnableAutoResolution(boolean z) {
        this.enableAutoResolution = z;
    }

    public void setEnableBitrateControl(boolean z) {
        this.enableBitrateControl = z;
    }

    public void setEnableNarrowbandHDForScreenPusher(boolean z) {
        this.enableNarrowbandHDForScreenPusher = z;
    }

    public void setEnableSDKCrashMechanism(boolean z) {
        this.enableSDKCrashMechanism = z;
    }

    public void setExposure(int i) {
        this.mExposure = i;
    }

    public void setExternMainStream(boolean z) {
        this.externMainStream = z;
    }

    public void setExternMainStream(boolean z, AlivcImageFormat alivcImageFormat, AlivcSoundFormat alivcSoundFormat) {
        this.externMainStream = z;
        this.mAlivcExternMainImageFormat = alivcImageFormat;
        this.mAlivcExternMainSoundFormat = alivcSoundFormat;
    }

    public void setExtraInfo(String str) {
        this.mExtraInfo = str;
    }

    public void setFlash(boolean z) {
        this.mFlash = z;
    }

    public void setFocusBySensor(boolean z) {
        this.mFocusBySensor = z;
    }

    public void setFps(AlivcFpsEnum alivcFpsEnum) {
        this.mFps = alivcFpsEnum;
    }

    public void setInitialVideoBitrate(int i) {
        this.mInitialVideoBitrate = i;
        this.initBitFlag = true;
    }

    public void setMinFps(AlivcFpsEnum alivcFpsEnum) {
        this.minFps = alivcFpsEnum;
    }

    public void setMinVideoBitrate(int i) {
        this.mMinVideoBitrate = i;
        this.minBitFlag = true;
    }

    public void setNetworkPoorPushImage(String str) {
        this.mNetworkPoorPushImagePath = str;
    }

    public void setPausePushImage(String str) {
        this.mPausePushImagePath = str;
    }

    public void setPreviewDisplayMode(AlivcPreviewDisplayMode alivcPreviewDisplayMode) {
        this.mPreviewDisplayMode = alivcPreviewDisplayMode;
    }

    public void setPreviewMirror(boolean z) {
        this.mPreviewMirror = z;
    }

    public void setPreviewOrientation(AlivcPreviewOrientationEnum alivcPreviewOrientationEnum) {
        this.mPreviewOrientation = alivcPreviewOrientationEnum;
    }

    public void setPreviewRotation(AlivcPreviewRotationEnum alivcPreviewRotationEnum) {
        this.mPreviewRotation = alivcPreviewRotationEnum;
    }

    public void setPushMirror(boolean z) {
        this.mPushMirror = z;
    }

    public void setQualityMode(AlivcQualityModeEnum alivcQualityModeEnum) {
        this.qualityMode = alivcQualityModeEnum;
    }

    public void setRequireRenderContextNotify(boolean z) {
        this.requireGLSharedContext = z;
    }

    public void setResolution(AlivcResolutionEnum alivcResolutionEnum) {
        this.mResolution = alivcResolutionEnum;
        if (!this.targetBitFlag) {
            this.mTargetVideoBitrate = AlivcResolutionEnum.getTargetBitrate(alivcResolutionEnum);
        }
        if (!this.initBitFlag) {
            this.mInitialVideoBitrate = AlivcResolutionEnum.getInitBitrate(alivcResolutionEnum);
        }
        if (!this.minBitFlag) {
            this.mMinVideoBitrate = AlivcResolutionEnum.getMinBitrate(alivcResolutionEnum);
        }
        this.mWidth = AlivcResolutionEnum.GetResolutionWidth(alivcResolutionEnum);
        this.mHeight = AlivcResolutionEnum.GetResolutionHeight(alivcResolutionEnum);
    }

    public void setSendDataTimeout(int i) {
        this.sendDataTimeout = i;
    }

    public void setTargetVideoBitrate(int i) {
        this.mTargetVideoBitrate = i;
        this.targetBitFlag = true;
    }

    public void setUseAliPlayerForBGM(boolean z) {
        this.mUseAliPlayerForBGM = z;
    }

    public void setVideoEncodeGop(AlivcVideoEncodeGopEnum alivcVideoEncodeGopEnum) {
        this.mVideoEncodeGop = alivcVideoEncodeGopEnum;
    }

    public void setVideoEncodeMode(AlivcEncodeModeEnum alivcEncodeModeEnum) {
        this.mVideoEncodeMode = alivcEncodeModeEnum;
    }

    protected void setVideoFormat(int i) {
        this.mVideoFormat = i;
    }

    public void setVideoOnly(boolean z) {
        this.mVideoOnly = z;
    }

    protected boolean useAliPlayerForBGM() {
        return this.mUseAliPlayerForBGM;
    }
}
