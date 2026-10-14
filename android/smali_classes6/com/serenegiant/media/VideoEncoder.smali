.class public final Lcom/serenegiant/media/VideoEncoder;
.super Lcom/serenegiant/media/AbstractVideoEncoder;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEncoder"

.field private static isLoaded:Z = false


# instance fields
.field private BUF_SIZE:I

.field private final mAlign16:Z

.field private mColorFormat:I

.field private mEncodeBytes:[B

.field protected mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    if-nez v0, :cond_0

    const-string v0, "c++_shared"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jpeg-turbo2000"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "png16"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "common"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mediaencoder"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/serenegiant/media/VideoEncoder;->isLoaded:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/media/Recorder;Lcom/serenegiant/media/EncoderListener;Z)V
    .locals 2

    const-string v0, "video/avc"

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/AbstractVideoEncoder;-><init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V

    .line 2
    iget p1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    iget p2, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    int-to-float p2, p2

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/serenegiant/media/VideoEncoder;->BUF_SIZE:I

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/serenegiant/media/VideoEncoder;->mEncodeBytes:[B

    .line 4
    iput-boolean p3, p0, Lcom/serenegiant/media/VideoEncoder;->mAlign16:Z

    .line 5
    invoke-direct {p0}, Lcom/serenegiant/media/VideoEncoder;->nativeCreate()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    return-void
.end method

.method private final native nativeCreate()J
.end method

.method private final native nativeDestroy(J)V
.end method

.method private static final native nativePrepare(JIII)I
.end method

.method private static final native nativeResize(JIII)I
.end method

.method private static final native nativeStop(J)I
.end method


# virtual methods
.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->getInputPTSUs()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/serenegiant/media/AbstractEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/AbstractEncoder;->callOnError(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 7
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCaptureFormat()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected internalPrepare()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    .line 3
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    const-string v2, "video/avc"

    .line 4
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->selectVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    sget-object v0, Lcom/serenegiant/media/VideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find an appropriate codec for video/avc"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_0
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_1

    iget v6, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    if-lt v6, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 7
    :cond_2
    iget v5, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    invoke-static {v2, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 8
    invoke-static {v3, v2}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/serenegiant/media/VideoEncoder;->mColorFormat:I

    const-string v6, "color-format"

    .line 9
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    iget v5, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mBitRate:I

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    iget v6, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    .line 11
    invoke-static {v5, v6}, Lcom/serenegiant/media/VideoConfig;->getBitrate(II)I

    move-result v5

    :goto_0
    const-string v6, "bitrate"

    .line 12
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 13
    iget v5, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mFramerate:I

    if-lez v5, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getCaptureFps()I

    move-result v5

    :goto_1
    const-string v6, "frame-rate"

    .line 15
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    iget v5, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mIFrameIntervals:I

    if-lez v5, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getIFrame()I

    move-result v5

    :goto_2
    const-string v6, "i-frame-interval"

    .line 18
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    sget-object v5, Lcom/serenegiant/media/VideoEncoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    .line 21
    invoke-virtual {v5, v4, v6, v6, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 22
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 23
    iget-boolean v4, p0, Lcom/serenegiant/media/VideoEncoder;->mAlign16:Z

    if-eqz v4, :cond_7

    .line 24
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    div-int/lit8 v5, v4, 0x10

    mul-int/lit8 v5, v5, 0x10

    if-eq v5, v4, :cond_6

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    .line 25
    :cond_6
    iget v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    div-int/lit8 v5, v4, 0x10

    mul-int/lit8 v5, v5, 0x10

    if-eq v5, v4, :cond_7

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    .line 26
    :cond_7
    iget-wide v4, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    iget v1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I

    iget v6, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    .line 27
    invoke-static {v3, v2}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v2

    .line 28
    invoke-static {v4, v5, v1, v6, v2}, Lcom/serenegiant/media/VideoEncoder;->nativePrepare(JIII)I

    return v0
.end method

.method public release()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/media/VideoEncoder;->stop()V

    .line 2
    iget-wide v0, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/media/VideoEncoder;->nativeDestroy(J)V

    .line 4
    iput-wide v2, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/media/AbstractEncoder;->release()V

    return-void
.end method

.method protected declared-synchronized startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "width"

    .line 1
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :catch_0
    :try_start_1
    iget v0, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string v1, "height"

    .line 3
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4
    :catch_1
    :try_start_3
    iget v1, p0, Lcom/serenegiant/media/AbstractVideoEncoder;->mHeight:I

    .line 5
    :goto_1
    iget-wide v2, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    iget v4, p0, Lcom/serenegiant/media/VideoEncoder;->mColorFormat:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/serenegiant/media/VideoEncoder;->nativeResize(JIII)I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    .line 6
    div-int/lit8 v0, v0, 0x4

    .line 7
    iget v1, p0, Lcom/serenegiant/media/VideoEncoder;->BUF_SIZE:I

    if-eq v0, v1, :cond_0

    .line 8
    iput v0, p0, Lcom/serenegiant/media/VideoEncoder;->BUF_SIZE:I

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/serenegiant/media/VideoEncoder;->mEncodeBytes:[B

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/serenegiant/media/AbstractEncoder;->startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/serenegiant/media/VideoEncoder;->nativeStop(J)I

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/media/AbstractEncoder;->stop()V

    return-void
.end method

.method protected stopRecorder(Lcom/serenegiant/media/IRecorder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/serenegiant/media/VideoEncoder;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/media/VideoEncoder;->nativeStop(J)I

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/serenegiant/media/AbstractEncoder;->stopRecorder(Lcom/serenegiant/media/IRecorder;)V

    return-void
.end method
