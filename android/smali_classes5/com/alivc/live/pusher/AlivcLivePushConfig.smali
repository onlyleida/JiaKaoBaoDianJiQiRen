.class public Lcom/alivc/live/pusher/AlivcLivePushConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONFIG:Ljava/lang/String; = "AlivcLivePushConfig"

.field private static final RESOLUTION_ALIGN:I = 0x10

.field private static mediaProjectionPermissionResultData:Landroid/content/Intent;


# instance fields
.field private audioBitRate:I

.field private audioProfile:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

.field private audioSceneMode:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

.field private enableAutoResolution:Z

.field private enableBitrateControl:Z

.field private enableNarrowbandHDForScreenPusher:Z

.field private enableSDKCrashMechanism:Z

.field private externMainStream:Z

.field private initBitFlag:Z

.field private mAlivcExternMainImageFormat:Lcom/alivc/live/pusher/AlivcImageFormat;

.field private mAlivcExternMainSoundFormat:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field private mAudioCaptureWithouMix:Z

.field private mAudioChannels:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

.field private mAudioEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

.field private mAudioFormat:I

.field private mAudioOnly:Z

.field private mAudioSamepleRate:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

.field private mAutoFocus:Z

.field private mCameraType:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

.field private mConnectRetryCount:I

.field private mConnectRetryInterval:I

.field private mExposure:I

.field private mExtraInfo:Ljava/lang/String;

.field private mFlash:Z

.field private mFocusBySensor:Z

.field private mFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field private mHeight:I

.field private mInitialVideoBitrate:I

.field private mMaxTimeoutCount:I

.field private mMinVideoBitrate:I

.field private mNetworkPoorPushImagePath:Ljava/lang/String;

.field private mPausePushImagePath:Ljava/lang/String;

.field private mPreviewDisplayMode:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

.field private mPreviewMirror:Z

.field private mPreviewOrientation:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

.field private mPreviewRotation:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

.field private mPtsMaxDiff:J

.field private mPushMirror:Z

.field private mResolution:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field private mTargetVideoBitrate:I

.field private mUseAliPlayerForBGM:Z

.field private mVideoEncodeGop:Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;

.field private mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

.field private mVideoFormat:I

.field private mVideoOnly:Z

.field private mWidth:I

.field private minBitFlag:Z

.field private minFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field private qualityMode:Lcom/alivc/live/pusher/AlivcQualityModeEnum;

.field private requireGLSharedContext:Z

.field private sendDataTimeout:I

.field private targetBitFlag:Z

.field private waterMarkInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alivc/live/pusher/WaterMarkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants;->DEFAULT_VALUE_INT_DEFINITION:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mResolution:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    sget-object v1, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_20:Lcom/alivc/live/pusher/AlivcFpsEnum;

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

    const/16 v1, 0x4b0

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mTargetVideoBitrate:I

    const/16 v1, 0x12c

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mMinVideoBitrate:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mInitialVideoBitrate:I

    sget-object v2, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->AUDIO_SAMPLE_RATE_48000:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    iput-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioSamepleRate:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    sget-object v2, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_PORTRAIT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    iput-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewOrientation:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    sget-object v2, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_0:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    iput-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewRotation:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    sget-object v2, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FIT:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    iput-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewDisplayMode:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->CAMERA_TYPE_FRONT:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    iput-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mCameraType:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewMirror:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPushMirror:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioOnly:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoOnly:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAutoFocus:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFocusBySensor:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFlash:Z

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionWidth(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v4

    iput v4, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mWidth:I

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionHeight(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v0

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mHeight:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mConnectRetryCount:I

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mConnectRetryInterval:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPtsMaxDiff:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mMaxTimeoutCount:I

    sget-object v0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->AUDIO_CHANNEL_TWO:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioChannels:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    sget-object v0, Lcom/alivc/live/pusher/AlivcEncodeModeEnum;->Encode_MODE_HARD:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    sget-object v0, Lcom/alivc/live/pusher/AlivcEncodeModeEnum;->Encode_MODE_SOFT:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    const/16 v0, 0x11

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoFormat:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioFormat:I

    sget-object v0, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUV420P:Lcom/alivc/live/pusher/AlivcImageFormat;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainImageFormat:Lcom/alivc/live/pusher/AlivcImageFormat;

    sget-object v0, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_S16:Lcom/alivc/live/pusher/AlivcSoundFormat;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainSoundFormat:Lcom/alivc/live/pusher/AlivcSoundFormat;

    sget-object v0, Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;->GOP_TWO:Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoEncodeGop:Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;

    iput v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mExposure:I

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mUseAliPlayerForBGM:Z

    iput-boolean v3, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableNarrowbandHDForScreenPusher:Z

    iput-boolean v3, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableSDKCrashMechanism:Z

    sget-object v0, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_8:Lcom/alivc/live/pusher/AlivcFpsEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->minFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

    iput-boolean v3, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableBitrateControl:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableAutoResolution:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->initBitFlag:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->minBitFlag:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->targetBitFlag:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->externMainStream:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->sendDataTimeout:I

    sget-object v0, Lcom/alivc/live/pusher/AlivcQualityModeEnum;->QM_RESOLUTION_FIRST:Lcom/alivc/live/pusher/AlivcQualityModeEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->qualityMode:Lcom/alivc/live/pusher/AlivcQualityModeEnum;

    sget-object v0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->AAC_LC:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioProfile:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    const v0, 0xfa00

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioBitRate:I

    sget-object v0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->AUDIO_SCENE_DEFAULT_MODE:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioSceneMode:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    const-string v0, ""

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPausePushImagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mNetworkPoorPushImagePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->requireGLSharedContext:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioCaptureWithouMix:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->waterMarkInfos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Letv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Le X620"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioCaptureWithouMix:Z

    :cond_1
    return-void
.end method

.method public static setMediaProjectionPermissionResultData(Landroid/content/Intent;)V
    .locals 0

    sput-object p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addWaterMark(Ljava/lang/String;FFF)V
    .locals 1

    new-instance v0, Lcom/alivc/live/pusher/WaterMarkInfo;

    invoke-direct {v0}, Lcom/alivc/live/pusher/WaterMarkInfo;-><init>()V

    iput-object p1, v0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkPath:Ljava/lang/String;

    iput p2, v0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordX:F

    iput p3, v0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordY:F

    iput p4, v0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->waterMarkInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->waterMarkInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearWaterMark()V
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->waterMarkInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAlivcExternMainImageFormat()Lcom/alivc/live/pusher/AlivcImageFormat;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainImageFormat:Lcom/alivc/live/pusher/AlivcImageFormat;

    return-object v0
.end method

.method public getAlivcExternMainSoundFormat()Lcom/alivc/live/pusher/AlivcSoundFormat;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainSoundFormat:Lcom/alivc/live/pusher/AlivcSoundFormat;

    return-object v0
.end method

.method public getAudioBitRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioBitRate:I

    return v0
.end method

.method protected getAudioCaptureWithoutMix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioCaptureWithouMix:Z

    return v0
.end method

.method protected getAudioChannels()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioChannels:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->getChannelCount()I

    move-result v0

    return v0
.end method

.method protected getAudioEncodeMode()Lcom/alivc/live/pusher/AlivcEncodeModeEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    return-object v0
.end method

.method protected getAudioFormat()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioFormat:I

    return v0
.end method

.method public getAudioProfile()Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioProfile:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    return-object v0
.end method

.method protected getAudioSamepleRate()Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioSamepleRate:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    return-object v0
.end method

.method public getAudioSceneMode()Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioSceneMode:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    return-object v0
.end method

.method public getCameraType()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mCameraType:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->getCameraId()I

    move-result v0

    return v0
.end method

.method protected getConnectRetryCount()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mConnectRetryCount:I

    return v0
.end method

.method protected getConnectRetryInterval()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mConnectRetryInterval:I

    return v0
.end method

.method protected getExposure()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mExposure:I

    return v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected getFps()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcFpsEnum;->getFps()I

    move-result v0

    return v0
.end method

.method protected getHeight()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mHeight:I

    return v0
.end method

.method protected getInitialVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mInitialVideoBitrate:I

    return v0
.end method

.method public getMediaProjectionPermissionResultData()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    return-object v0
.end method

.method protected getMinFps()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->minFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcFpsEnum;->getFps()I

    move-result v0

    return v0
.end method

.method protected getMinVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mMinVideoBitrate:I

    return v0
.end method

.method public getNetworkPoorPushImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mNetworkPoorPushImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPausePushImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPausePushImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewDisplayMode()Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewDisplayMode:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    return-object v0
.end method

.method public getPreviewOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewOrientation:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result v0

    return v0
.end method

.method protected getPreviewRotation()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewRotation:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->getRotation()I

    move-result v0

    return v0
.end method

.method public getQualityMode()Lcom/alivc/live/pusher/AlivcQualityModeEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->qualityMode:Lcom/alivc/live/pusher/AlivcQualityModeEnum;

    return-object v0
.end method

.method public getRequireRenderContextNotify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->requireGLSharedContext:Z

    return v0
.end method

.method protected getResolution()Lcom/alivc/live/pusher/AlivcResolutionEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mResolution:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    return-object v0
.end method

.method public getSendDataTimeout()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->sendDataTimeout:I

    return v0
.end method

.method protected getTargetVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mTargetVideoBitrate:I

    return v0
.end method

.method protected getVideoEncodeGop()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoEncodeGop:Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;->getGop()I

    move-result v0

    return v0
.end method

.method protected getVideoEncodeMode()Lcom/alivc/live/pusher/AlivcEncodeModeEnum;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    return-object v0
.end method

.method protected getVideoFormat()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoFormat:I

    return v0
.end method

.method getWaterMarkInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alivc/live/pusher/WaterMarkInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->waterMarkInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getWidth()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mWidth:I

    return v0
.end method

.method public isAudioOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioOnly:Z

    return v0
.end method

.method protected isAutoFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAutoFocus:Z

    return v0
.end method

.method public isEnableAutoResolution()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableAutoResolution:Z

    return v0
.end method

.method public isEnableBitrateControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableBitrateControl:Z

    return v0
.end method

.method protected isEnableNarrowbandHDForScreenPusher()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableNarrowbandHDForScreenPusher:Z

    return v0
.end method

.method protected isEnableSDKCrashMechanism()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableSDKCrashMechanism:Z

    return v0
.end method

.method public isExternMainStream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->externMainStream:Z

    return v0
.end method

.method protected isFlash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFlash:Z

    return v0
.end method

.method protected isFocusBySensor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFocusBySensor:Z

    return v0
.end method

.method protected isPreviewMirror()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewMirror:Z

    return v0
.end method

.method protected isPushMirror()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPushMirror:Z

    return v0
.end method

.method public isVideoOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoOnly:Z

    return v0
.end method

.method public removeWaterMark(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->waterMarkInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->waterMarkInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setAlivcExternMainImageFormat(Lcom/alivc/live/pusher/AlivcImageFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainImageFormat:Lcom/alivc/live/pusher/AlivcImageFormat;

    return-void
.end method

.method public setAlivcExternMainSoundFormat(Lcom/alivc/live/pusher/AlivcSoundFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainSoundFormat:Lcom/alivc/live/pusher/AlivcSoundFormat;

    return-void
.end method

.method public setAudioBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioBitRate:I

    return-void
.end method

.method public setAudioCaptureWithoutMix(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioCaptureWithouMix:Z

    return-void
.end method

.method public setAudioChannels(Lcom/alivc/live/pusher/AlivcAudioChannelEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioChannels:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    return-void
.end method

.method public setAudioEncodeMode(Lcom/alivc/live/pusher/AlivcEncodeModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    return-void
.end method

.method protected setAudioFormat(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioFormat:I

    return-void
.end method

.method public setAudioOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioOnly:Z

    return-void
.end method

.method public setAudioProfile(Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioProfile:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    return-void
.end method

.method public setAudioSamepleRate(Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAudioSamepleRate:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    return-void
.end method

.method public setAudioSceneMode(Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->audioSceneMode:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAutoFocus:Z

    return-void
.end method

.method public setCameraType(Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mCameraType:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    return-void
.end method

.method public setConnectRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mConnectRetryCount:I

    return-void
.end method

.method public setConnectRetryInterval(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mConnectRetryInterval:I

    return-void
.end method

.method public setEnableAutoResolution(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableAutoResolution:Z

    return-void
.end method

.method public setEnableBitrateControl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableBitrateControl:Z

    return-void
.end method

.method public setEnableNarrowbandHDForScreenPusher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableNarrowbandHDForScreenPusher:Z

    return-void
.end method

.method public setEnableSDKCrashMechanism(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->enableSDKCrashMechanism:Z

    return-void
.end method

.method public setExposure(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mExposure:I

    return-void
.end method

.method public setExternMainStream(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->externMainStream:Z

    return-void
.end method

.method public setExternMainStream(ZLcom/alivc/live/pusher/AlivcImageFormat;Lcom/alivc/live/pusher/AlivcSoundFormat;)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->externMainStream:Z

    iput-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainImageFormat:Lcom/alivc/live/pusher/AlivcImageFormat;

    iput-object p3, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mAlivcExternMainSoundFormat:Lcom/alivc/live/pusher/AlivcSoundFormat;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public setFlash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFlash:Z

    return-void
.end method

.method public setFocusBySensor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFocusBySensor:Z

    return-void
.end method

.method public setFps(Lcom/alivc/live/pusher/AlivcFpsEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

    return-void
.end method

.method public setInitialVideoBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mInitialVideoBitrate:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->initBitFlag:Z

    return-void
.end method

.method public setMinFps(Lcom/alivc/live/pusher/AlivcFpsEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->minFps:Lcom/alivc/live/pusher/AlivcFpsEnum;

    return-void
.end method

.method public setMinVideoBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mMinVideoBitrate:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->minBitFlag:Z

    return-void
.end method

.method public setNetworkPoorPushImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mNetworkPoorPushImagePath:Ljava/lang/String;

    return-void
.end method

.method public setPausePushImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPausePushImagePath:Ljava/lang/String;

    return-void
.end method

.method public setPreviewDisplayMode(Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewDisplayMode:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    return-void
.end method

.method public setPreviewMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewMirror:Z

    return-void
.end method

.method public setPreviewOrientation(Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewOrientation:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    return-void
.end method

.method public setPreviewRotation(Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPreviewRotation:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    return-void
.end method

.method public setPushMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mPushMirror:Z

    return-void
.end method

.method public setQualityMode(Lcom/alivc/live/pusher/AlivcQualityModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->qualityMode:Lcom/alivc/live/pusher/AlivcQualityModeEnum;

    return-void
.end method

.method public setRequireRenderContextNotify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->requireGLSharedContext:Z

    return-void
.end method

.method public setResolution(Lcom/alivc/live/pusher/AlivcResolutionEnum;)V
    .locals 1

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mResolution:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->targetBitFlag:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->getTargetBitrate(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v0

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mTargetVideoBitrate:I

    :cond_0
    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->initBitFlag:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->getInitBitrate(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v0

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mInitialVideoBitrate:I

    :cond_1
    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->minBitFlag:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->getMinBitrate(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v0

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mMinVideoBitrate:I

    :cond_2
    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionWidth(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v0

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mWidth:I

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionHeight(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mHeight:I

    return-void
.end method

.method public setSendDataTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->sendDataTimeout:I

    return-void
.end method

.method public setTargetVideoBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mTargetVideoBitrate:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->targetBitFlag:Z

    return-void
.end method

.method public setUseAliPlayerForBGM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mUseAliPlayerForBGM:Z

    return-void
.end method

.method public setVideoEncodeGop(Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoEncodeGop:Lcom/alivc/live/pusher/AlivcVideoEncodeGopEnum;

    return-void
.end method

.method public setVideoEncodeMode(Lcom/alivc/live/pusher/AlivcEncodeModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoEncodeMode:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    return-void
.end method

.method protected setVideoFormat(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoFormat:I

    return-void
.end method

.method public setVideoOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mVideoOnly:Z

    return-void
.end method

.method protected useAliPlayerForBGM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConfig;->mUseAliPlayerForBGM:Z

    return v0
.end method
