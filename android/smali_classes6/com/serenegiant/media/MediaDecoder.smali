.class public abstract Lcom/serenegiant/media/MediaDecoder;
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

.field protected static final STATE_INITIALIZED:I = 0x1

.field protected static final STATE_PAUSED:I = 0x4

.field protected static final STATE_PLAYING:I = 0x3

.field protected static final STATE_PREPARED:I = 0x2

.field protected static final STATE_UNINITIALIZED:I = 0x0

.field protected static final STATE_WAIT:I = 0x5

.field private static final TAG_STATIC:Ljava/lang/String; = "MediaDecoder"

.field private static final TIMEOUT_USEC:I = 0x2710


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mBitRate:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

.field private mDuration:J

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private volatile mInputDone:Z

.field private volatile mIsRunning:Z

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private volatile mOutputDone:Z

.field private final mPlaybackTask:Ljava/lang/Runnable;

.field private mRequestTime:J

.field private mStartTime:J

.field protected mState:I

.field private final mSync:Ljava/lang/Object;

.field private mTrackIndex:I

.field private presentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 6
    new-instance v0, Lcom/serenegiant/media/MediaDecoder$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/MediaDecoder$1;-><init>(Lcom/serenegiant/media/MediaDecoder;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mPlaybackTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/media/MediaDecoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/media/MediaDecoder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/serenegiant/media/MediaDecoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputDone:Z

    return p0
.end method

.method static synthetic access$102(Lcom/serenegiant/media/MediaDecoder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/serenegiant/media/MediaDecoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$202(Lcom/serenegiant/media/MediaDecoder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/serenegiant/media/MediaDecoder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/serenegiant/media/MediaDecoder;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/media/MediaDecoder;->handleSeek(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/serenegiant/media/MediaDecoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$600(Lcom/serenegiant/media/MediaDecoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/serenegiant/media/MediaDecoder;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/serenegiant/media/MediaDecoder;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/serenegiant/media/MediaDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_stop()V

    return-void
.end method

.method private final handleSeek(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3
    iget-object p1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1
    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    return-void
.end method

.method private internal_release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 3
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 6
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 9
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    :cond_2
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mDuration:J

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    return-void
.end method

.method private final internal_stop()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    :cond_1
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    :goto_0
    return-void
.end method

.method protected static final selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 3
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method protected adjustPresentationTime(JJ)J
    .locals 10

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isJellyBeanMr1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/serenegiant/media/MediaDecoder;->adjustPresentationTimeAPI17(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    :goto_0
    sub-long/2addr v4, p1

    sub-long v4, p3, v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 4
    iget-object v6, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 5
    :try_start_0
    iget-object v7, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    div-long v8, v4, v2

    rem-long/2addr v4, v2

    mul-long v4, v4, v2

    long-to-int v5, v4

    invoke-virtual {v7, v8, v9, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :catch_0
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    if-nez v4, :cond_1

    .line 7
    monitor-exit v6

    goto :goto_3

    .line 8
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    goto :goto_0

    .line 10
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_3
    return-wide p1

    .line 11
    :cond_3
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v2

    return-wide p1
.end method

.method protected adjustPresentationTimeAPI17(JJ)J
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v0

    if-lez v4, :cond_2

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    :goto_0
    sub-long/2addr v4, p1

    sub-long v4, p3, v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 2
    iget-object v6, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 3
    :try_start_0
    iget-object v7, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    div-long v8, v4, v2

    rem-long/2addr v4, v2

    mul-long v4, v4, v2

    long-to-int v5, v4

    invoke-virtual {v7, v8, v9, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 4
    :catch_0
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    if-nez v4, :cond_0

    .line 5
    monitor-exit v6

    goto :goto_3

    .line 6
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    goto :goto_0

    .line 8
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_3
    return-wide p1

    .line 9
    :cond_2
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v2

    return-wide p1
.end method

.method protected callErrorHandler(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/serenegiant/media/IMediaCodecCallback;->onError(Lcom/serenegiant/media/IMediaCodec;Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected callOnPrepared()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

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
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnPrepared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnRelease()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

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
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnRelease"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

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
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnStart"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected callOnStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

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
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string v2, "callOnStop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    if-ltz p2, :cond_0

    const-string p2, "mime"

    .line 1
    invoke-virtual {p3, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->getOutputSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, p1, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public getBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    return v0
.end method

.method public getCallback()Lcom/serenegiant/media/IMediaCodecCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->mDuration:J

    return-wide v0
.end method

.method protected abstract getOutputSurface()Landroid/view/Surface;
.end method

.method protected handleInput(J)J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-lez v6, :cond_0

    .line 3
    iget-object v3, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    const-wide/16 p1, -0x1

    :cond_1
    return-wide p1
.end method

.method protected abstract handleOutput(Ljava/nio/ByteBuffer;IIJ)Z
.end method

.method protected abstract handlePrepare(Landroid/media/MediaExtractor;)I
.end method

.method protected internal_HandleInput()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    .line 4
    :cond_0
    iget-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 5
    invoke-virtual {p0, v2, v3}, Lcom/serenegiant/media/MediaDecoder;->handleInput(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_2

    .line 7
    iget-object v4, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 8
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaDecoder;->mInputDone:Z

    :cond_2
    return-void
.end method

.method protected internal_handleOutput()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_2
    if-gez v0, :cond_4

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    throw v1

    :cond_4
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v9, 0x1

    if-lez v6, :cond_6

    .line 8
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v1, v0

    const/4 v5, 0x0

    iget-wide v7, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/serenegiant/media/MediaDecoder;->handleOutput(Ljava/nio/ByteBuffer;IIJ)Z

    move-result v1

    xor-int/2addr v1, v9

    if-eqz v1, :cond_6

    .line 9
    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 10
    invoke-interface {v2, p0, v3, v4}, Lcom/serenegiant/media/IMediaCodecCallback;->onFrameAvailable(Lcom/serenegiant/media/IMediaCodec;J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 11
    :cond_5
    iget-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->mStartTime:J

    iget-object v4, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/serenegiant/media/MediaDecoder;->adjustPresentationTime(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/serenegiant/media/MediaDecoder;->mStartTime:J

    .line 12
    :cond_6
    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 13
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 14
    iput-boolean v9, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputDone:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public isPrepared()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    throw v0

    .line 5
    :cond_1
    iput v2, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataSource not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    throw v0

    .line 5
    :cond_1
    iget v1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 8
    :cond_2
    throw v0

    .line 9
    :cond_3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->handlePrepare(Landroid/media/MediaExtractor;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    if-ltz v0, :cond_4

    .line 10
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 11
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "durationUs"

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/serenegiant/media/MediaDecoder;->mDuration:J

    .line 13
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/serenegiant/media/MediaDecoder;->createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    .line 14
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "track not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 18
    :cond_5
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    :goto_0
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 21
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->callOnPrepared()V

    :cond_6
    return-void

    .line 22
    :cond_7
    throw v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->stop()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 4
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->callOnRelease()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    return-void
.end method

.method public restart()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    .line 6
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public seek(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/serenegiant/media/MediaDecoder;->mRequestTime:J

    return-void
.end method

.method public setCallback(Lcom/serenegiant/media/IMediaCodecCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/media/MediaDecoder;->mCallback:Lcom/serenegiant/media/IMediaCodecCallback;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 52
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 53
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 54
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 55
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 57
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 60
    :cond_0
    throw p1
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 42
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 44
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 45
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 46
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 47
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 50
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 22
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 23
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 24
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 25
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 26
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x1

    .line 27
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 30
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 32
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 34
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 35
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 36
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 40
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 2
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 5
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 6
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 10
    :cond_0
    throw p1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaDecoder;->release()V

    .line 12
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaDecoder;->updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V

    .line 15
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;->internal_release()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaDecoder;->callErrorHandler(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    .line 20
    :cond_0
    throw p1
.end method

.method public start()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 3
    :goto_0
    iput v2, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/serenegiant/media/MediaDecoder;->presentationTimeUs:J

    .line 5
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 6
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 8
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mPlaybackTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaDecoder;->mIsRunning:Z

    .line 3
    iget v1, p0, Lcom/serenegiant/media/MediaDecoder;->mState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaDecoder;->mSync:Ljava/lang/Object;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected updateMovieInfo(Landroid/media/MediaMetadataRetriever;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    const/16 v0, 0x14

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/media/MediaDecoder;->mBitRate:I

    :cond_0
    return-void
.end method
