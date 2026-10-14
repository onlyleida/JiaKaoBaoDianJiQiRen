.class public Lcom/alivc/live/pusher/LivePusherJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;
    }
.end annotation


# static fields
.field private static SDK_CACHE_PATH:Ljava/lang/String; = null

.field public static SD_DIR:Ljava/lang/String; = ""

.field public static headSetOn:Z = false


# instance fields
.field private apiLevel:I

.field private audioBitRate:I

.field private audioCaptureWithouMix:Z

.field private audioChannel:I

.field private audioEncoderMode:I

.field private audioFormat:I

.field private audioOnly:Z

.field private audioProfile:I

.field private audioSample:I

.field private audioSceneMode:I

.field private autoFocus:Z

.field private bitrate:I

.field private cameraPosition:I

.field private connectRetryCount:I

.field private connectRetryInterval:I

.field public context:Landroid/content/Context;

.field private customDetect:Lcom/alivc/component/custom/AlivcLivePushCustomDetect;

.field private customFilter:Lcom/alivc/component/custom/AlivcLivePushCustomFilter;

.field private customRotation:I

.field private displayMode:I

.field private dropKeepVideoListSize:I

.field public enableAutoResolution:Z

.field public enableBitrateControl:Z

.field private enableCrashHandler:Z

.field private enableNarrowbandHDForScreenPusher:Z

.field private encoderMode:I

.field private exposure:I

.field private externMainStream:Z

.field private flash:Z

.field private focusBySensor:Z

.field private fps:I

.field private gop:I

.field private initialBitrate:I

.field private mCustomDetectorInited:Z

.field private mCustomFilterInited:Z

.field private mLivePusherListener:Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;

.field private mNativeHandler:J

.field private mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

.field private maxControlFailedTime:I

.field private maxTimeoutCount:I

.field private maxVideoListSize:I

.field public mediaProjectionPermissionResultData:Landroid/content/Intent;

.field private minBitrate:I

.field private minBitrateControlInterval:I

.field public minFps:I

.field private needUpBpsCacheSize:I

.field private orientaion:I

.field private previewMirror:Z

.field private ptsMaxDiff:J

.field private pushMirror:Z

.field private qualityMode:I

.field private queueSizeNeedBitrateControl:I

.field private requireGLSharedContext:Z

.field private resolutionHeight:I

.field private resolutionWidth:I

.field private rtmpUpBPsMinFreePrecent:I

.field private sendTimeout:I

.field public surfaceCbMode:Z

.field private targetBitrate:I

.field private upBpsRequestFreeDuration:I

.field private useAliPlayerForBGM:Z

.field private videoFormat:I

.field private videoOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RtsSDK"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "live-rtmp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "live-fdkaac"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "live-pusher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePushConfig;Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->fps:I

    const/16 v1, 0x5dc

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->targetBitrate:I

    const/16 v1, 0x12c

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->minBitrate:I

    const/16 v1, 0x320

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->bitrate:I

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->initialBitrate:I

    const/16 v1, 0x7d00

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioSample:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioChannel:I

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioProfile:I

    const v1, 0xfa00

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioBitRate:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioSceneMode:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->connectRetryCount:I

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->connectRetryInterval:I

    const/16 v2, 0x1388

    iput v2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->sendTimeout:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->orientaion:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customRotation:I

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->cameraPosition:I

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->pushMirror:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->previewMirror:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioOnly:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->videoOnly:Z

    iput-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->autoFocus:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->focusBySensor:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->flash:Z

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->encoderMode:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioEncoderMode:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->videoFormat:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioFormat:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->exposure:I

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->useAliPlayerForBGM:Z

    iput-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableNarrowbandHDForScreenPusher:Z

    iput-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableCrashHandler:Z

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->gop:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->apiLevel:I

    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->ptsMaxDiff:J

    const/16 v3, 0xa

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->maxTimeoutCount:I

    const/16 v3, 0xc8

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->maxVideoListSize:I

    const/16 v3, 0x28

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->dropKeepVideoListSize:I

    const/16 v3, 0x1e

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->queueSizeNeedBitrateControl:I

    const v3, 0x2dc6c0

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->minBitrateControlInterval:I

    const v3, 0x3938700

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->upBpsRequestFreeDuration:I

    const/16 v3, 0x32

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->rtmpUpBPsMinFreePrecent:I

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->needUpBpsCacheSize:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->maxControlFailedTime:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->context:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->surfaceCbMode:Z

    iput-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableBitrateControl:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableAutoResolution:Z

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->qualityMode:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->displayMode:I

    iput-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->requireGLSharedContext:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioCaptureWithouMix:Z

    iput-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mLivePusherListener:Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;

    iput-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customFilter:Lcom/alivc/component/custom/AlivcLivePushCustomFilter;

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomFilterInited:Z

    iput-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customDetect:Lcom/alivc/component/custom/AlivcLivePushCustomDetect;

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomDetectorInited:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->externMainStream:Z

    iput-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    if-eqz p1, :cond_d

    iput-object p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->context:Landroid/content/Context;

    invoke-static {p1}, La/a/a/a;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/alivc/live/pusher/LivePusherJNI;->SD_DIR:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alivc/live/pusher/LivePusherJNI;->SD_DIR:Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/alivc/live/pusher/LivePusherJNI;->SDK_CACHE_PATH:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mounted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "private_data"

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alivc/live/pusher/LivePusherJNI;->SDK_CACHE_PATH:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/alivc/live/pusher/LivePusherJNI;->SDK_CACHE_PATH:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_4
    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getFps()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->fps:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getVideoEncodeGop()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->gop:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getTargetVideoBitrate()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->targetBitrate:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinVideoBitrate()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->minBitrate:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getInitialVideoBitrate()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->bitrate:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getInitialVideoBitrate()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->initialBitrate:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioSamepleRate()Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->getAudioSampleRate()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioSample:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioChannels()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioChannels()I

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0xc

    :goto_1
    invoke-static {p1}, Lcom/alivc/live/pusher/JNIUtils;->AudioChannelToNative(I)I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioChannel:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryCount()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->connectRetryCount:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryInterval()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->connectRetryInterval:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewOrientation()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->orientaion:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewRotation()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customRotation:I

    iget p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->orientaion:I

    sget-object v1, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_LEFT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result v1

    if-eq p1, v1, :cond_6

    iget p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->orientaion:I

    sget-object v1, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_RIGHT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result v1

    if-ne p1, v1, :cond_7

    :cond_6
    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    :cond_7
    iget p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customRotation:I

    sget-object v1, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_90:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->getRotation()I

    move-result v1

    if-eq p1, v1, :cond_8

    iget p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customRotation:I

    sget-object v1, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_270:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->getRotation()I

    move-result v1

    if-ne p1, v1, :cond_9

    :cond_8
    iget p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    iget v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    iput v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    :cond_9
    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getCameraType()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->cameraPosition:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isPushMirror()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->pushMirror:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isPreviewMirror()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->previewMirror:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioOnly:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->videoOnly:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAutoFocus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->autoFocus:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isFocusBySensor()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->focusBySensor:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isFlash()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->flash:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewDisplayMode()Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->getPreviewDisplayMode()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->displayMode:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getVideoEncodeMode()Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->encoderMode:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioEncodeMode()Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioEncoderMode:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getVideoFormat()I

    move-result p1

    invoke-static {p1}, Lcom/alivc/live/pusher/JNIUtils;->VideoFormatToNative(I)I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->videoFormat:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioFormat()I

    move-result p1

    invoke-static {p1}, Lcom/alivc/live/pusher/JNIUtils;->AudioFormatToNative(I)I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioFormat:I

    iput v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->exposure:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->useAliPlayerForBGM()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->useAliPlayerForBGM:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isEnableNarrowbandHDForScreenPusher()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableNarrowbandHDForScreenPusher:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isEnableSDKCrashMechanism()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableCrashHandler:Z

    iput-object p3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mLivePusherListener:Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinFps()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->minFps:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getQualityMode()Lcom/alivc/live/pusher/AlivcQualityModeEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcQualityModeEnum;->getQualityMode()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->qualityMode:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioProfile()Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->getAudioProfile()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioProfile:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioBitRate()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioBitRate:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioSceneMode()Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->getAudioSceneMode()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioSceneMode:I

    const/16 p1, 0x15

    if-lt v2, p1, :cond_a

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    :cond_a
    iget-object p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    if-eqz p1, :cond_b

    sget-object p1, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FILL:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->getPreviewDisplayMode()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->displayMode:I

    :cond_b
    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isEnableAutoResolution()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableAutoResolution:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isEnableBitrateControl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->enableBitrateControl:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isExternMainStream()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->externMainStream:Z

    if-eqz p1, :cond_c

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->surfaceCbMode:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAlivcExternMainImageFormat()Lcom/alivc/live/pusher/AlivcImageFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcImageFormat;->getAlivcImageFormat()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->videoFormat:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAlivcExternMainSoundFormat()Lcom/alivc/live/pusher/AlivcSoundFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcSoundFormat;->getAlivcSoundFormat()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioFormat:I

    :cond_c
    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getSendDataTimeout()I

    move-result p1

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->sendTimeout:I

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getRequireRenderContextNotify()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->requireGLSharedContext:Z

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioCaptureWithoutMix()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->audioCaptureWithouMix:Z

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "context can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native addLiveWaterMark(Ljava/lang/String;FFFF)V
.end method

.method private native addNativeAddons(Ljava/lang/String;JJFFFFIZ)I
.end method

.method private native addNativeMixAudio(III)I
.end method

.method private native addNativeMixVideo(IIIIFFFFZ)I
.end method

.method private native addNativePushImage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native addNativeSeiInfo(Ljava/lang/String;IIZZ)V
.end method

.method private native changeNativeResolution(II)V
.end method

.method private native getLiveCameraCurrentExposure()I
.end method

.method private native getLiveCameraCurrentZoom()I
.end method

.method private native getLiveCameraMaxExposure()I
.end method

.method private native getLiveCameraMaxZoom()I
.end method

.method private native getLiveCameraMinExposure()I
.end method

.method private native getLivePerformanceInfo()Ljava/lang/String;
.end method

.method private native getLivePusherInfo()Ljava/lang/String;
.end method

.method private native getLiveTraceId()Ljava/lang/String;
.end method

.method private static native getNativeSDKVersion()Ljava/lang/String;
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alivc/live/pusher/LivePusherJNI;->getNativeSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native initLive(Z)J
.end method

.method private native inputNativeMixAudioData(I[BIJ)Z
.end method

.method private native inputNativeMixAudioPtr(IJIJ)Z
.end method

.method private native inputNativeMixTexture(IIIIJI)V
.end method

.method private native inputNativeMixVideoData(I[BIIIIJI)V
.end method

.method private native inputNativeMixVideoPtr(IJIIIIJI)V
.end method

.method private native inputNativeStreamAudioData([BIIIJ)V
.end method

.method private native inputNativeStreamAudioPtr(JIIIJ)V
.end method

.method private native inputNativeStreamTexture(IIIIJIJ)V
.end method

.method private native inputNativeStreamVideoData([BIIIIJI)V
.end method

.method private native inputNativeStreamVideoPtr(JIIIIJI)V
.end method

.method private native isLiveNetworkPushing()Z
.end method

.method private native isLivePushing()Z
.end method

.method private native isLiveSupportAutoFocus()Z
.end method

.method private native isLiveSupportFlash()Z
.end method

.method private native mixVideoChangePosition(IFFFF)I
.end method

.method private native mixVideoMirror(IZ)V
.end method

.method private native mixVideoRequireMain(IZ)I
.end method

.method private native notifyLiveSurfaceChanged(Landroid/view/Surface;I)V
.end method

.method private native notifyLiveSurfaceDestroy()V
.end method

.method private native notifyLiveSurfaceRecreate(Landroid/view/Surface;)V
.end method

.method private native pauseLive()V
.end method

.method private native pauseLiveScreenCapture()V
.end method

.method private native pauseNativeBGM()V
.end method

.method private native reconnectLive(Ljava/lang/String;Z)I
.end method

.method private native removeNativeAddons(I)V
.end method

.method private native removeNativeMixAudio(I)V
.end method

.method private native removeNativeMixVideo(I)V
.end method

.method private native removeNativePushImage()V
.end method

.method private native restartLivePush(Landroid/view/Surface;ZI)I
.end method

.method private native resumeLive(Z)V
.end method

.method private native resumeLiveScreenCapture()I
.end method

.method private native resumeNativeBGM()V
.end method

.method private native screenCaptureStartCamera(Landroid/view/Surface;)I
.end method

.method private native screenCaptureStartMix(FFFF)I
.end method

.method private native screenCaptureStopCamera()V
.end method

.method private native screenCaptureStopMix()V
.end method

.method private native screenSetScreenOrientation(I)V
.end method

.method private native setLiveCameraExposure(I)I
.end method

.method private native setLiveCameraFocus(ZFF)I
.end method

.method private native setLiveCameraZoom(F)I
.end method

.method private native setLiveFlash(Z)I
.end method

.method private native setLiveMute(Z)I
.end method

.method private native setLivePreviewMirror(Z)V
.end method

.method private native setLivePusherMirror(Z)V
.end method

.method private native setLiveScreenOrientation(I)V
.end method

.method private native setLiveVideoBitrateRange(III)V
.end method

.method private native setNativeBGMLoop(Z)V
.end method

.method private native setNativeBackgroundMusicVolume(I)V
.end method

.method private native setNativeCaptureAudioVolume(I)V
.end method

.method private native setNativeDenoise(Z)V
.end method

.method private native setNativeDisplayMode(I)V
.end method

.method private native setNativeEarsBack(Z)V
.end method

.method private native setNativeHeadSet(Z)V
.end method

.method private native setNativeLogDirPath(Ljava/lang/String;)V
.end method

.method private native setNativeLogLevel(I)V
.end method

.method private native setNativeMainStreamPosition(FFFF)V
.end method

.method private native setNativeQualityMode(I)V
.end method

.method private native setNativeWatermarkVisible(Z)V
.end method

.method private native snapshotNative(II)V
.end method

.method private native startLivePreview(Landroid/view/Surface;ZZ)I
.end method

.method private native startLivePush(Ljava/lang/String;ZZ)I
.end method

.method private native startNativeBGMAsync(Ljava/lang/String;)V
.end method

.method private native stopLivePreview()I
.end method

.method private native stopLivePush()I
.end method

.method private native stopNativeBGM()V
.end method

.method private native switchLiveCamera()I
.end method

.method private native unInitLive()V
.end method


# virtual methods
.method public addDynamicsAddons(Ljava/lang/String;JJFFFFIZ)I
    .locals 6

    move-object v0, p0

    iget-wide v1, v0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-direct/range {p0 .. p11}, Lcom/alivc/live/pusher/LivePusherJNI;->addNativeAddons(Ljava/lang/String;JJFFFFIZ)I

    move-result v1

    return v1
.end method

.method public addMixAudio(III)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/live/pusher/LivePusherJNI;->addNativeMixAudio(III)I

    move-result p1

    return p1
.end method

.method public addMixVideo(IIIIFFFFZ)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/alivc/live/pusher/LivePusherJNI;->addNativeMixVideo(IIIIFFFFZ)I

    move-result p1

    return p1
.end method

.method public addPushImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->addNativePushImage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addSeiInfo(Ljava/lang/String;IIZZ)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/alivc/live/pusher/LivePusherJNI;->addNativeSeiInfo(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public addWaterMark(Ljava/lang/String;FFFF)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/alivc/live/pusher/LivePusherJNI;->addLiveWaterMark(Ljava/lang/String;FFFF)V

    return-void
.end method

.method changeResolution(II)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->orientaion:I

    sget-object v1, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_LEFT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->orientaion:I

    sget-object v1, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_RIGHT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    iput p2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    goto :goto_1

    :cond_2
    :goto_0
    iput p2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    :goto_1
    iget p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionWidth:I

    iget p2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->resolutionHeight:I

    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->changeNativeResolution(II)V

    return-void
.end method

.method customBeautyCreate()V
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customFilter:Lcom/alivc/component/custom/AlivcLivePushCustomFilter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/alivc/component/custom/AlivcLivePushCustomFilter;->customFilterCreate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomFilterInited:Z

    return-void
.end method

.method customBeautyDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customFilter:Lcom/alivc/component/custom/AlivcLivePushCustomFilter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomFilterInited:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/alivc/component/custom/AlivcLivePushCustomFilter;->customFilterDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomFilterInited:Z

    return-void
.end method

.method customBeautyProcess(IIIJ)I
    .locals 6

    iget-object v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customFilter:Lcom/alivc/component/custom/AlivcLivePushCustomFilter;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomFilterInited:Z

    if-eqz v1, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alivc/component/custom/AlivcLivePushCustomFilter;->customFilterProcess(IIIJ)I

    move-result p1

    :cond_1
    return p1
.end method

.method customDetectCreate()V
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customDetect:Lcom/alivc/component/custom/AlivcLivePushCustomDetect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/alivc/component/custom/AlivcLivePushCustomDetect;->customDetectCreate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomDetectorInited:Z

    return-void
.end method

.method customDetectDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customDetect:Lcom/alivc/component/custom/AlivcLivePushCustomDetect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomDetectorInited:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/alivc/component/custom/AlivcLivePushCustomDetect;->customDetectDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomDetectorInited:Z

    return-void
.end method

.method customDetectProcess(JIIIIJ)J
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/alivc/live/pusher/LivePusherJNI;->customDetect:Lcom/alivc/component/custom/AlivcLivePushCustomDetect;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-boolean v4, v0, Lcom/alivc/live/pusher/LivePusherJNI;->mCustomDetectorInited:Z

    if-eqz v4, :cond_1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/alivc/component/custom/AlivcLivePushCustomDetect;->customDetectProcess(JIIIIJ)J

    move-result-wide v1

    return-wide v1

    :cond_1
    return-wide v2
.end method

.method public getCameraCurrentZoom()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLiveCameraCurrentZoom()I

    move-result v0

    return v0
.end method

.method public getCameraMaxZoom()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLiveCameraMaxZoom()I

    move-result v0

    return v0
.end method

.method public getCurrentExposureCompensation()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLiveCameraCurrentExposure()I

    move-result v0

    return v0
.end method

.method public getMaxExposureCompensation()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLiveCameraMaxExposure()I

    move-result v0

    return v0
.end method

.method public getMinExposureCompensation()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLiveCameraMinExposure()I

    move-result v0

    return v0
.end method

.method public getPerformanceInfo()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLivePerformanceInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPusherHandler()J
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPusherHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    return-wide v0
.end method

.method public getPusherInfo()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLivePusherInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPusherTraceId()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->getLiveTraceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    iget-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->externMainStream:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->initLive(Z)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initStream()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->initLive(Z)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePusherJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public inputMixAudioData(I[BIJ)Z
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeMixAudioData(I[BIJ)Z

    move-result p1

    return p1
.end method

.method public inputMixAudioPtr(IJIJ)Z
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeMixAudioPtr(IJIJ)Z

    move-result p1

    return p1
.end method

.method public inputMixTexture(IIIIJI)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeMixTexture(IIIIJI)V

    return-void
.end method

.method public inputMixVideoData(I[BIIIIJI)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeMixVideoData(I[BIIIIJI)V

    return-void
.end method

.method public inputMixVideoPtr(IJIIIIJI)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p10}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeMixVideoPtr(IJIIIIJI)V

    return-void
.end method

.method public inputStreamAudioData([BIIIJ)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeStreamAudioData([BIIIJ)V

    return-void
.end method

.method public inputStreamAudioPtr(JIIIJ)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeStreamAudioPtr(JIIIJ)V

    return-void
.end method

.method public inputStreamTexture(IIIIJIJ)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeStreamTexture(IIIIJIJ)V

    return-void
.end method

.method public inputStreamVideoData([BIIIIJI)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeStreamVideoData([BIIIIJI)V

    return-void
.end method

.method public inputStreamVideoPtr(JIIIIJI)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/alivc/live/pusher/LivePusherJNI;->inputNativeStreamVideoPtr(JIIIIJI)V

    return-void
.end method

.method public isCameraSupportAutoFocus()Z
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->isLiveSupportAutoFocus()Z

    move-result v0

    return v0
.end method

.method public isCameraSupportFlash()Z
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->isLiveSupportFlash()Z

    move-result v0

    return v0
.end method

.method public isNetworkPushing()Z
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->isLiveNetworkPushing()Z

    move-result v0

    return v0
.end method

.method public isPushing()Z
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->isLivePushing()Z

    move-result v0

    return v0
.end method

.method public mixStreamChangePosition(IFFFF)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/alivc/live/pusher/LivePusherJNI;->mixVideoChangePosition(IFFFF)I

    move-result p1

    return p1
.end method

.method public mixStreamRequireMain(IZ)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->mixVideoRequireMain(IZ)I

    move-result p1

    return p1
.end method

.method public notifySurfaceChange(Landroid/view/Surface;I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->notifyLiveSurfaceChanged(Landroid/view/Surface;I)V

    return-void
.end method

.method public notifySurfaceDestroy()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->notifyLiveSurfaceDestroy()V

    return-void
.end method

.method public notifySurfaceReCreate(Landroid/view/Surface;)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->notifyLiveSurfaceRecreate(Landroid/view/Surface;)V

    return-void
.end method

.method public onNotification(ILjava/lang/String;IIIIIJLjava/lang/String;Ljava/lang/String;)I
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/alivc/live/pusher/LivePusherJNI;->mLivePusherListener:Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;->onNotify(ILjava/lang/String;IIIIIJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public pause()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->pauseLive()V

    return-void
.end method

.method public pauseBGM()V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->pauseNativeBGM()V

    return-void
.end method

.method public pauseScreenCapture()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->pauseLiveScreenCapture()V

    return-void
.end method

.method public reconnect(Ljava/lang/String;Z)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->reconnectLive(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->unInitLive()V

    iput-wide v2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    return-void
.end method

.method public releaseStream()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->unInitLive()V

    iput-wide v2, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    return-void
.end method

.method public removeDynamicsAddons(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->removeNativeAddons(I)V

    return-void
.end method

.method public removeMixAudio(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->removeNativeMixAudio(I)V

    return-void
.end method

.method public removeMixVideo(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->removeNativeMixVideo(I)V

    return-void
.end method

.method public removePushImage()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->removeNativePushImage()V

    return-void
.end method

.method public restartPush(Landroid/view/Surface;ZI)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/live/pusher/LivePusherJNI;->restartLivePush(Landroid/view/Surface;ZI)I

    move-result p1

    return p1
.end method

.method public resume(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->resumeLive(Z)V

    return-void
.end method

.method public resumeBGM()V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->resumeNativeBGM()V

    return-void
.end method

.method public resumeScreenCapture()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->resumeLiveScreenCapture()I

    move-result v0

    return v0
.end method

.method public setAudioDenoise(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeDenoise(Z)V

    return-void
.end method

.method public setAudioVolume(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeCaptureAudioVolume(I)V

    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeBGMLoop(Z)V

    return-void
.end method

.method public setBackgroundMusicVolume(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeBackgroundMusicVolume(I)V

    return-void
.end method

.method public setCameraFocus(ZFF)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/live/pusher/LivePusherJNI;->setLiveCameraFocus(ZFF)I

    move-result p1

    return p1
.end method

.method public setCameraZoom(F)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLiveCameraZoom(F)I

    move-result p1

    return p1
.end method

.method public setCustomDetect(Lcom/alivc/component/custom/AlivcLivePushCustomDetect;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customDetect:Lcom/alivc/component/custom/AlivcLivePushCustomDetect;

    return-void
.end method

.method public setCustomFilter(Lcom/alivc/component/custom/AlivcLivePushCustomFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->customFilter:Lcom/alivc/component/custom/AlivcLivePushCustomFilter;

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeDisplayMode(I)V

    return-void
.end method

.method public setEarsBack(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeEarsBack(Z)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLiveCameraExposure(I)I

    return-void
.end method

.method public setFlash(Z)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLiveFlash(Z)I

    move-result p1

    return p1
.end method

.method public setFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->fps:I

    return-void
.end method

.method public setGop(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->gop:I

    return-void
.end method

.method public setHeadSet(Z)V
    .locals 5

    sput-boolean p1, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeHeadSet(Z)V

    return-void
.end method

.method public setLogDirPath(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeLogDirPath(Ljava/lang/String;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeLogLevel(I)V

    return-void
.end method

.method public setMainStreamPosition(FFFF)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeMainStreamPosition(FFFF)V

    return-void
.end method

.method public setMixStreamMirror(IZ)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->mixVideoMirror(IZ)V

    return-void
.end method

.method public setMute(Z)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v0, "LivePusherJNI"

    const-string v1, "setMute"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLiveMute(Z)I

    move-result p1

    return p1
.end method

.method public setOrientaion(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLiveScreenOrientation(I)V

    return-void
.end method

.method public setPreOrientaion(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/LivePusherJNI;->orientaion:I

    return-void
.end method

.method public setPreviewMirror(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLivePreviewMirror(Z)V

    return-void
.end method

.method public setPusherMirror(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLivePusherMirror(Z)V

    return-void
.end method

.method public setQualityMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeQualityMode(I)V

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->screenSetScreenOrientation(I)V

    return-void
.end method

.method public setVideoBitrateRange(III)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/live/pusher/LivePusherJNI;->setLiveVideoBitrateRange(III)V

    return-void
.end method

.method public setWaterMarkVisible(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeWatermarkVisible(Z)V

    return-void
.end method

.method public snapshot(IILcom/alivc/live/pusher/AlivcSnapshotListener;)V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->snapshotNative(II)V

    return-void
.end method

.method snapshotCallback(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alivc/live/pusher/AlivcSnapshotListener;->onSnapshot(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public startBGMAsync(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    invoke-direct {p0, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeHeadSet(Z)V

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->startNativeBGMAsync(Ljava/lang/String;)V

    return-void
.end method

.method public startCamera(Landroid/view/Surface;)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->screenCaptureStartCamera(Landroid/view/Surface;)I

    move-result p1

    return p1
.end method

.method public startCameraMix(FFFF)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alivc/live/pusher/LivePusherJNI;->screenCaptureStartMix(FFFF)I

    move-result p1

    return p1
.end method

.method public startPreview(Landroid/view/Surface;Z)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->externMainStream:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->startLivePreview(Landroid/view/Surface;ZZ)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startPreviewStream(Landroid/view/Surface;)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->startLivePreview(Landroid/view/Surface;ZZ)I

    move-result p1

    return p1
.end method

.method public startPush(Ljava/lang/String;Z)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sget-boolean v0, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    invoke-direct {p0, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeHeadSet(Z)V

    iget-boolean v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->externMainStream:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->startLivePush(Ljava/lang/String;ZZ)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startPushStream(Ljava/lang/String;)I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sget-boolean v0, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    invoke-direct {p0, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->setNativeHeadSet(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->startLivePush(Ljava/lang/String;ZZ)I

    move-result p1

    return p1
.end method

.method public stopBGM()V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopNativeBGM()V

    return-void
.end method

.method public stopCamera()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->screenCaptureStopCamera()V

    return-void
.end method

.method public stopCameraMix()V
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->screenCaptureStopMix()V

    return-void
.end method

.method public stopPreview()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopLivePreview()I

    move-result v0

    return v0
.end method

.method public stopPreviewStream()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopLivePreview()I

    move-result v0

    return v0
.end method

.method public stopPush()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopLivePush()I

    move-result v0

    return v0
.end method

.method public stopPushStream()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopLivePush()I

    move-result v0

    return v0
.end method

.method public switchCamera()I
    .locals 5

    iget-wide v0, p0, Lcom/alivc/live/pusher/LivePusherJNI;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/live/pusher/LivePusherJNI;->switchLiveCamera()I

    move-result v0

    return v0
.end method
