.class public Lcom/serenegiant/media/SurfaceEncoder;
.super Lcom/serenegiant/media/AbstractVideoEncoder;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/media/ISurfaceEncoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field protected mInputSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V
    .locals 1

    const-string v0, "video/avc"

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/AbstractVideoEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    return-void
.end method


# virtual methods
.method public getCaptureFormat()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/SurfaceEncoder;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method protected internalPrepare()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    .line 4
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    const-string v2, "video/avc"

    .line 5
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->selectVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_0

    return v1

    .line 6
    :cond_0
    iget v3, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_1

    iget v5, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    if-lt v5, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 7
    :cond_2
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const v4, 0x7f000789

    const-string v5, "color-format"

    .line 8
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mBitRate:I

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    iget v5, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    .line 10
    invoke-static {v4, v5}, Lcom/serenegiant/media/VideoConfig;->getBitrate(II)I

    move-result v4

    :goto_0
    const-string v5, "bitrate"

    .line 11
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mFramerate:I

    if-lez v4, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getCaptureFps()I

    move-result v4

    :goto_1
    const-string v5, "frame-rate"

    .line 14
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 15
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mIFrameIntervals:I

    if-lez v4, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getIFrame()I

    move-result v4

    :goto_2
    const-string v5, "i-frame-interval"

    .line 17
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 18
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    .line 19
    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 20
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/media/SurfaceEncoder;->mInputSurface:Landroid/view/Surface;

    .line 21
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/serenegiant/media/AbstractEncoder;->release()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/serenegiant/media/SurfaceEncoder;->mInputSurface:Landroid/view/Surface;

    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_0
    return-void
.end method
