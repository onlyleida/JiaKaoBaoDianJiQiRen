.class public abstract Lcom/serenegiant/media/AbstractEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/media/Encoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractEncoder"

.field public static final TIMEOUT_USEC:I = 0x2710


# instance fields
.field protected final MIME_TYPE:Ljava/lang/String;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mDrainTask:Ljava/lang/Runnable;

.field protected volatile mIsCapturing:Z

.field protected volatile mIsEOS:Z

.field private final mListener:Lcom/serenegiant/media/EncoderListener;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field private mRecorder:Lcom/serenegiant/media/IRecorder;

.field protected volatile mRecorderStarted:Z

.field private volatile mRequestDrain:I

.field protected volatile mRequestStop:Z

.field protected final mSync:Ljava/lang/Object;

.field protected mTrackIndex:I

.field private prevInputPTSUs:J

.field private prevOutputPTSUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/serenegiant/media/IRecorder;Lcom/serenegiant/media/EncoderListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/serenegiant/media/AbstractEncoder$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/AbstractEncoder$1;-><init>(Lcom/serenegiant/media/AbstractEncoder;)V

    iput-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mDrainTask:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevOutputPTSUs:J

    .line 5
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevInputPTSUs:J

    const-string v0, "EncodeListener is null"

    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "IMuxer is null"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/serenegiant/media/AbstractEncoder;->MIME_TYPE:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    .line 10
    iput-object p3, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    .line 11
    invoke-interface {p2, p0}, Lcom/serenegiant/media/IRecorder;->addEncoder(Lcom/serenegiant/media/Encoder;)V

    .line 12
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/AbstractEncoder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/media/AbstractEncoder;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    return p1
.end method

.method static synthetic access$010(Lcom/serenegiant/media/AbstractEncoder;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    return v0
.end method

.method static synthetic access$100(Lcom/serenegiant/media/AbstractEncoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/media/AbstractEncoder;->drain()V

    return-void
.end method

.method private final drain()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_d

    .line 5
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 6
    iget-boolean v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    goto/16 :goto_3

    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 7
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_6

    .line 8
    iget-boolean v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-nez v4, :cond_5

    .line 9
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 10
    invoke-virtual {p0, v1, v4}, Lcom/serenegiant/media/AbstractEncoder;->startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-gez v4, :cond_7

    goto :goto_0

    .line 12
    :cond_7
    aget-object v5, v0, v4

    if-eqz v5, :cond_c

    .line 13
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    .line 14
    iget-boolean v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-nez v6, :cond_8

    .line 15
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v8, v6, [B

    .line 16
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v8, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    sget-object v6, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    array-length v7, v6

    invoke-static {v8, v2, v6, v7}, Lcom/serenegiant/utils/BufferHelper;->byteComp([BI[BI)I

    move-result v10

    add-int/lit8 v7, v10, 0x2

    .line 20
    array-length v9, v6

    invoke-static {v8, v7, v6, v9}, Lcom/serenegiant/utils/BufferHelper;->byteComp([BI[BI)I

    move-result v11

    add-int/lit8 v7, v11, 0x2

    .line 21
    array-length v9, v6

    invoke-static {v8, v7, v6, v9}, Lcom/serenegiant/utils/BufferHelper;->byteComp([BI[BI)I

    move-result v12

    .line 22
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/serenegiant/media/AbstractEncoder;->createOutputFormat([BIIII)Landroid/media/MediaFormat;

    move-result-object v6

    .line 23
    invoke-virtual {p0, v1, v6}, Lcom/serenegiant/media/AbstractEncoder;->startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 24
    :cond_8
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 25
    :cond_9
    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_b

    .line 26
    iget-boolean v3, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-eqz v3, :cond_a

    .line 27
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v6, v7}, Lcom/serenegiant/media/AbstractEncoder;->getNextOutputPTSUs(J)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 28
    iget v3, p0, Lcom/serenegiant/media/AbstractEncoder;->mTrackIndex:I

    iget-object v6, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v1, v3, v5, v6}, Lcom/serenegiant/media/IRecorder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Lcom/serenegiant/media/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 29
    :catch_0
    invoke-interface {v1}, Lcom/serenegiant/media/IRecorder;->stopRecording()V

    goto :goto_1

    .line 30
    :catch_1
    invoke-interface {v1}, Lcom/serenegiant/media/IRecorder;->stopRecording()V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 31
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "drain:muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_b
    :goto_2
    iget-object v5, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 33
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 34
    invoke-virtual {p0, v1}, Lcom/serenegiant/media/AbstractEncoder;->stopRecorder(Lcom/serenegiant/media/IRecorder;)V

    goto :goto_3

    .line 35
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    :cond_d
    :goto_3
    return-void
.end method


# virtual methods
.method protected callOnError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p1}, Lcom/serenegiant/media/EncoderListener;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/serenegiant/media/AbstractEncoder;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected abstract createOutputFormat([BIIII)Landroid/media/MediaFormat;
.end method

.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 4
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_6

    .line 7
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    .line 8
    aget-object v0, v0, v5

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    if-gtz p2, :cond_4

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsEOS:Z

    .line 15
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v4, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->frameAvailableSoon()V

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    .line 18
    :cond_7
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->release()V

    .line 3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public frameAvailableSoon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureFormat()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getInputPTSUs()J
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcom/serenegiant/media/AbstractEncoder;->prevInputPTSUs:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x25ab

    add-long/2addr v0, v2

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevInputPTSUs:J

    return-wide v0
.end method

.method protected getNextOutputPTSUs(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/media/AbstractEncoder;->prevOutputPTSUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x25ab

    add-long/2addr p1, v0

    .line 2
    :cond_0
    iput-wide p1, p0, Lcom/serenegiant/media/AbstractEncoder;->prevOutputPTSUs:J

    return-wide p1
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/serenegiant/media/IRecorder;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRecorder()Lcom/serenegiant/media/IRecorder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    return-object v0
.end method

.method protected abstract internalPrepare()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isCapturing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->internalPrepare()Z

    move-result v0

    .line 2
    instance-of v1, p0, Lcom/serenegiant/media/ISurfaceEncoder;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/serenegiant/media/ISurfaceEncoder;

    .line 3
    invoke-interface {v1}, Lcom/serenegiant/media/ISurfaceEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->getCaptureFormat()I

    move-result v3

    invoke-interface {v2, p0, v1, v3, v0}, Lcom/serenegiant/media/EncoderListener;->onStartEncode(Lcom/serenegiant/media/Encoder;Landroid/view/Surface;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/serenegiant/media/AbstractEncoder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mDrainTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :catch_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p0}, Lcom/serenegiant/media/EncoderListener;->onStopEncode(Lcom/serenegiant/media/Encoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 6
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 7
    iput-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 8
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    if-eqz v1, :cond_2

    .line 9
    iput-boolean v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    .line 10
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    if-eqz v0, :cond_2

    .line 11
    :try_start_2
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IRecorder;->stop(Lcom/serenegiant/media/Encoder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 12
    :catch_2
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mListener:Lcom/serenegiant/media/EncoderListener;

    invoke-interface {v0, p0}, Lcom/serenegiant/media/EncoderListener;->onDestroy(Lcom/serenegiant/media/Encoder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 13
    :catch_3
    iput-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 14
    iput-object v2, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorder:Lcom/serenegiant/media/IRecorder;

    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/media/AbstractEncoder;->getInputPTSUs()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/serenegiant/media/AbstractEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 4
    iput v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestDrain:I

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected startRecorder(Lcom/serenegiant/media/IRecorder;Landroid/media/MediaFormat;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0xa

    .line 3
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 4
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5
    invoke-interface {p1, p0, p2}, Lcom/serenegiant/media/IRecorder;->addTrack(Lcom/serenegiant/media/Encoder;Landroid/media/MediaFormat;)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/media/AbstractEncoder;->mTrackIndex:I

    if-ltz p2, :cond_2

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    .line 7
    invoke-interface {p1, p0}, Lcom/serenegiant/media/IRecorder;->start(Lcom/serenegiant/media/Encoder;)Z

    move-result p2

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {p1, p0}, Lcom/serenegiant/media/IRecorder;->removeEncoder(Lcom/serenegiant/media/Encoder;)V

    .line 9
    :cond_3
    :goto_2
    invoke-interface {p1}, Lcom/serenegiant/media/IRecorder;->isStarted()Z

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRequestStop:Z

    .line 5
    iget-object v1, p0, Lcom/serenegiant/media/AbstractEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected stopRecorder(Lcom/serenegiant/media/IRecorder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mIsCapturing:Z

    iput-boolean p1, p0, Lcom/serenegiant/media/AbstractEncoder;->mRecorderStarted:Z

    return-void
.end method
