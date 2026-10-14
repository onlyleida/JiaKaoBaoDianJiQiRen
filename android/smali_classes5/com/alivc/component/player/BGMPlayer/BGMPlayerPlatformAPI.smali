.class Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;


# static fields
.field private static final AF_SAMPLE_FMT_S16:I = 0x1

.field private static final DECODE_TIME_OUT_US:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "BGMPlayerPlatformAPI"


# instance fields
.field private audioUrl:Ljava/lang/String;

.field private inputAudioChannels:I

.field private inputAudioDuration:J

.field private inputAudioFormat:I

.field private inputAudioSampleRate:I

.field private isAutoPlay:Z

.field private volatile isLoop:Z

.field private volatile isPaused:Z

.field private volatile isStopped:Z

.field private lastPauseTime:J

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaExtractor:Landroid/media/MediaExtractor;

.field private playerThread:Ljava/lang/Thread;

.field private totalPauseDuration:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isAutoPlay:Z

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isLoop:Z

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isStopped:Z

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isPaused:Z

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->playerThread:Ljava/lang/Thread;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioDuration:J

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->lastPauseTime:J

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->totalPauseDuration:J

    const p1, 0xac44

    iput p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioSampleRate:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioChannels:I

    iput p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioFormat:I

    invoke-virtual {p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isSDKReady()Z

    move-result p1

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;)V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->doPlay()V

    return-void
.end method

.method private doPlay()V
    .locals 27

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v0, 0x0

    :goto_0
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :cond_0
    :goto_1
    iget-boolean v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isStopped:Z

    if-nez v8, :cond_6

    iget-object v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v8, :cond_6

    iget-boolean v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isPaused:Z

    if-eqz v8, :cond_1

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, -0x1

    const-string v4, "sleep failed"

    goto/16 :goto_4

    :cond_1
    iget-object v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v9, 0x2710

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    if-gez v12, :cond_2

    const/4 v0, -0x2

    const-string v4, "dequeueInputBuffer failed"

    goto/16 :goto_4

    :cond_2
    invoke-direct {v1, v12}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v11, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v8, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iget-object v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    if-lez v14, :cond_6

    iget-object v11, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    iget-object v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    :goto_2
    invoke-virtual {v8, v5, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    if-ltz v8, :cond_0

    iget v11, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v11, :cond_0

    invoke-direct {v1, v8}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget v12, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v12, v12, [B

    if-eqz v11, :cond_5

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-wide v13, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_3

    move-wide/from16 v21, v13

    goto :goto_3

    :cond_3
    move-wide/from16 v21, v18

    :goto_3
    const-wide/16 v13, 0x3e8

    div-long v13, v21, v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sub-long v23, v23, v6

    iget-wide v9, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->totalPauseDuration:J

    sub-long v23, v23, v9

    sub-long v9, v13, v23

    cmp-long v11, v9, v15

    if-lez v11, :cond_4

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    :cond_4
    invoke-static {v13, v14}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onPlayProgressEvent(J)V

    const/4 v9, 0x1

    new-array v9, v9, [[B

    aput-object v12, v9, v3

    iget v10, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v11, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioChannels:I

    div-int/2addr v10, v11

    div-int/lit8 v24, v10, 0x2

    iget v10, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioSampleRate:I

    const/16 v23, 0x1

    move-object/from16 v20, v9

    move/from16 v25, v11

    move/from16 v26, v10

    invoke-static/range {v20 .. v26}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onRenderAudioFrameEvent([[BJIIII)Z

    iget-object v9, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9, v8, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v8, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v9, 0x2710

    goto :goto_2

    :cond_5
    const/4 v0, -0x4

    const-string v4, "getOutputBuffer pcmData failed"

    goto/16 :goto_1

    :cond_6
    :goto_4
    iget-object v5, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    iget-object v5, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {v0, v4, v2}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onErrorEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-boolean v5, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isLoop:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isStopped:Z

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->resetPlayer()Z

    goto/16 :goto_0

    :cond_a
    :goto_5
    iget-boolean v2, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isStopped:Z

    if-nez v2, :cond_b

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onStateChangedEvent(I)V

    :cond_b
    return-void
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private initMediaCodec()Z
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "pcm-encoding"

    const-string v2, "sample-rate"

    const-string v3, "channel-count"

    const-string v4, "durationUs"

    const-string v5, "mime"

    const-string v6, "Exception occurred, error="

    const-string v7, "BGMPlayerPlatformAPI"

    const/4 v8, 0x0

    const/4 v9, -0x1

    :try_start_0
    new-instance v10, Landroid/media/MediaExtractor;

    invoke-direct {v10}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v10, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v11, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->audioUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object v12, v10

    move-object v13, v12

    const/4 v11, 0x0

    :goto_0
    iget-object v14, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v14

    if-ge v11, v14, :cond_6

    iget-object v13, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v13, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_0
    invoke-virtual {v13, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioDuration:J

    :cond_1
    invoke-virtual {v13, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v13, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioChannels:I

    :cond_2
    invoke-virtual {v13, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v13, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioSampleRate:I

    :cond_3
    invoke-virtual {v13, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioFormat:I

    :cond_4
    const-string v14, "audio"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found audio index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    const/4 v11, -0x1

    :goto_1
    if-ne v11, v9, :cond_7

    const-string v0, "initAudioDecoder: Not found audio track"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "No audio track found in this data source"

    const-string v2, ""

    invoke-static {v9, v0, v2}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onErrorEvent(ILjava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_7
    iget-object v0, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-static {v12}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v13, v10, v10, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->mInputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v9, v2, v0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onErrorEvent(ILjava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private playAudio()V
    .locals 4

    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->playerThread:Ljava/lang/Thread;

    const-string v1, "BGMPlayerPlatformAPI"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->playerThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v0, "player thread joined failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const-string v2, "Thread joined failed"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onErrorEvent(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->resetPlayer()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reset player failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI$1;

    invoke-direct {v2, p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI$1;-><init>(Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;)V

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->playerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private resetPlayer()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isPaused:Z

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isStopped:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->lastPauseTime:J

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->totalPauseDuration:J

    invoke-direct {p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->initMediaCodec()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->inputAudioDuration:J

    return-wide v0
.end method

.method public isSDKReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isPaused:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->lastPauseTime:J

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onStateChangedEvent(I)V

    return-void
.end method

.method public prepare()V
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isAutoPlay:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->playAudio()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isAutoPlay:Z

    return-void
.end method

.method public setListenerHandler(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/alivc/component/player/BGMPlayerEventJNI;->setListenerHandler(J)V

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isLoop:Z

    return-void
.end method

.method public setUrlSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 6

    iget-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isPaused:Z

    iget-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->totalPauseDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->lastPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->totalPauseDuration:J

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onStateChangedEvent(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->playAudio()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isPaused:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->lastPauseTime:J

    iput-wide v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->totalPauseDuration:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->isStopped:Z

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onStateChangedEvent(I)V

    return-void
.end method
