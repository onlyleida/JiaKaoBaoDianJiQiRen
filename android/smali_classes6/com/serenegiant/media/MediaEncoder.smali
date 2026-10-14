.class public abstract Lcom/serenegiant/media/MediaEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/media/IMediaCodec;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

.field private final mEncodeTask:Ljava/lang/Runnable;

.field protected final mIsAudio:Z

.field protected volatile mIsCapturing:Z

.field protected mIsEOS:Z

.field protected mIsPrepared:Z

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMuxerStarted:Z

.field private mRequestDrain:I

.field protected volatile mRequestStop:Z

.field protected final mSync:Ljava/lang/Object;

.field protected mTrackIndex:I

.field protected final mWeakMuxer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/media/AbstractRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private prevOutputPTSUs:J


# direct methods
.method public constructor <init>(ZLcom/serenegiant/media/AbstractRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/serenegiant/media/MediaEncoder$1;

    invoke-direct {v1, p0}, Lcom/serenegiant/media/MediaEncoder$1;-><init>(Lcom/serenegiant/media/MediaEncoder;)V

    iput-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mEncodeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lcom/serenegiant/media/MediaEncoder;->prevOutputPTSUs:J

    const-string v2, "MediaEncoderListener is null"

    .line 6
    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "MediaMuxerWrapper is null"

    .line 7
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaEncoder;->mIsAudio:Z

    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/serenegiant/media/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {p2, p0}, Lcom/serenegiant/media/AbstractRecorder;->addEncoder(Lcom/serenegiant/media/MediaEncoder;)V

    .line 11
    iput-object p3, p0, Lcom/serenegiant/media/MediaEncoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/media/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 14
    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/serenegiant/media/MediaEncoder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestDrain:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/media/MediaEncoder;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestDrain:I

    return p1
.end method

.method static synthetic access$010(Lcom/serenegiant/media/MediaEncoder;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestDrain:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestDrain:I

    return v0
.end method


# virtual methods
.method protected callErrorHandler(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/serenegiant/media/IMediaCodecCallback;->onError(Lcom/serenegiant/media/IMediaCodec;Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected callOnPrepared()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onPrepared(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnPrepared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnRelease()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onRelease(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnRelease"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onStart(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnStart"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lcom/serenegiant/media/IMediaCodecCallback;->onStop(Lcom/serenegiant/media/IMediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnStop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected drain()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/media/AbstractRecorder;

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v1, "muxer is unexpectedly null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_f

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/serenegiant/media/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 7
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaEncoder;->mIsEOS:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    goto/16 :goto_5

    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 8
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_8

    .line 9
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaEncoder;->mMuxerStarted:Z

    if-eqz v4, :cond_6

    .line 10
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "format changed twice"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v4}, Lcom/serenegiant/media/MediaEncoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    throw v4

    .line 13
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 14
    invoke-virtual {v1, v4}, Lcom/serenegiant/media/AbstractRecorder;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/serenegiant/media/MediaEncoder;->mTrackIndex:I

    const/4 v4, 0x1

    .line 15
    iput-boolean v4, p0, Lcom/serenegiant/media/MediaEncoder;->mMuxerStarted:Z

    .line 16
    invoke-virtual {v1}, Lcom/serenegiant/media/AbstractRecorder;->start()Z

    move-result v4

    if-nez v4, :cond_2

    .line 17
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/serenegiant/media/AbstractRecorder;->isStarted()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x64

    .line 19
    :try_start_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 20
    :catch_0
    :try_start_3
    monitor-exit v1

    goto/16 :goto_5

    .line 21
    :cond_7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_8
    if-gez v4, :cond_9

    goto :goto_0

    .line 22
    :cond_9
    aget-object v5, v0, v4

    if-nez v5, :cond_b

    .line 23
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encoderOutputBuffer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " was null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v6}, Lcom/serenegiant/media/MediaEncoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    .line 25
    :cond_a
    throw v6

    .line 26
    :cond_b
    :goto_3
    iget-object v6, p0, Lcom/serenegiant/media/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_c

    .line 27
    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 28
    :cond_c
    iget v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v7, :cond_e

    .line 29
    iget-boolean v3, p0, Lcom/serenegiant/media/MediaEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_d

    .line 30
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaEncoder;->getPTSUs()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 31
    iget v3, p0, Lcom/serenegiant/media/MediaEncoder;->mTrackIndex:I

    iget-object v6, p0, Lcom/serenegiant/media/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v3, v5, v6}, Lcom/serenegiant/media/AbstractRecorder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 32
    iget-object v3, p0, Lcom/serenegiant/media/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lcom/serenegiant/media/MediaEncoder;->prevOutputPTSUs:J

    const/4 v3, 0x0

    goto :goto_4

    .line 33
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "drain:muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_e
    :goto_4
    iget-object v5, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 35
    iget-object v4, p0, Lcom/serenegiant/media/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 36
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaEncoder;->callErrorHandler(Ljava/lang/Exception;)Z

    :cond_f
    :goto_5
    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/serenegiant/media/MediaEncoder;->getPTSUs()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/serenegiant/media/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 6
    aget-object v0, v0, v5

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    if-lez p2, :cond_3

    .line 9
    iget-object v4, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaEncoder;->mIsEOS:Z

    .line 11
    iget-object v4, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public frameAvailableSoon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestDrain:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestDrain:I

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

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

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/media/AbstractRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/media/AbstractRecorder;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getPTSUs()J
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
    iget-wide v2, p0, Lcom/serenegiant/media/MediaEncoder;->prevOutputPTSUs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public isAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mIsAudio:Z

    return v0
.end method

.method public isCapturing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mIsPrepared:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    return v0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 5
    iput-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaEncoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v3, "failed releasing MediaCodec"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/media/AbstractRecorder;

    if-eqz v0, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {v0}, Lcom/serenegiant/media/AbstractRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaEncoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/serenegiant/media/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v3, "failed stopping muxer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 14
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaEncoder;->callOnRelease()V

    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaEncoder;->getPTSUs()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/serenegiant/media/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

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

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaEncoder;->mRequestStop:Z

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaEncoder;->mSync:Ljava/lang/Object;

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
