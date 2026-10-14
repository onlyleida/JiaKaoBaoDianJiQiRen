.class public Lcom/serenegiant/media/MediaMoviePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final REQ_NON:I = 0x0

.field private static final REQ_PAUSE:I = 0x5

.field private static final REQ_PREPARE:I = 0x1

.field private static final REQ_QUIT:I = 0x9

.field private static final REQ_RESUME:I = 0x6

.field private static final REQ_SEEK:I = 0x3

.field private static final REQ_START:I = 0x2

.field private static final REQ_STOP:I = 0x4

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PLAYING:I = 0x2

.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_STOP:I = 0x0

.field private static final TAG_STATIC:Ljava/lang/String; = "MediaMoviePlayer:"

.field private static final TIMEOUT_USEC:I = 0x2710


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioChannels:I

.field private final mAudioEnabled:Z

.field private mAudioInputBufSize:I

.field private mAudioInputBuffers:[Ljava/nio/ByteBuffer;

.field private mAudioInputDone:Z

.field private mAudioMediaCodec:Landroid/media/MediaCodec;

.field protected mAudioMediaExtractor:Landroid/media/MediaExtractor;

.field private mAudioOutTempBuf:[B

.field private mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mAudioOutputDone:Z

.field private mAudioSampleRate:I

.field private mAudioStartTime:J

.field private final mAudioSync:Ljava/lang/Object;

.field private final mAudioTask:Ljava/lang/Runnable;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private volatile mAudioTrackIndex:I

.field private mBitrate:I

.field private final mCallback:Lcom/serenegiant/media/IFrameCallback;

.field private mDuration:J

.field private mFrameRate:F

.field private mHasAudio:Z

.field private volatile mIsRunning:Z

.field protected mMetadata:Landroid/media/MediaMetadataRetriever;

.field private final mMoviePlayerTask:Ljava/lang/Runnable;

.field private final mOutputSurface:Landroid/view/Surface;

.field private mRequest:I

.field private mRequestTime:J

.field private mRotation:I

.field private mSource:Ljava/lang/Object;

.field private mState:I

.field private final mSync:Ljava/lang/Object;

.field private mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoHeight:I

.field private mVideoInputBuffers:[Ljava/nio/ByteBuffer;

.field private mVideoInputDone:Z

.field private mVideoMediaCodec:Landroid/media/MediaCodec;

.field protected mVideoMediaExtractor:Landroid/media/MediaExtractor;

.field private mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mVideoOutputDone:Z

.field private mVideoStartTime:J

.field private final mVideoSync:Ljava/lang/Object;

.field private final mVideoTask:Ljava/lang/Runnable;

.field private volatile mVideoTrackIndex:I

.field private mVideoWidth:I

.field private previousAudioPresentationTimeUs:J

.field private previousVideoPresentationTimeUs:J


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lcom/serenegiant/media/IFrameCallback;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaMoviePlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoSync:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousVideoPresentationTimeUs:J

    .line 6
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSync:Ljava/lang/Object;

    .line 7
    iput-wide v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousAudioPresentationTimeUs:J

    .line 8
    new-instance v2, Lcom/serenegiant/media/MediaMoviePlayer$1;

    invoke-direct {v2, p0}, Lcom/serenegiant/media/MediaMoviePlayer$1;-><init>(Lcom/serenegiant/media/MediaMoviePlayer;)V

    iput-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMoviePlayerTask:Ljava/lang/Runnable;

    .line 9
    new-instance v3, Lcom/serenegiant/media/MediaMoviePlayer$2;

    invoke-direct {v3, p0}, Lcom/serenegiant/media/MediaMoviePlayer$2;-><init>(Lcom/serenegiant/media/MediaMoviePlayer;)V

    iput-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTask:Ljava/lang/Runnable;

    .line 10
    new-instance v3, Lcom/serenegiant/media/MediaMoviePlayer$3;

    invoke-direct {v3, p0}, Lcom/serenegiant/media/MediaMoviePlayer$3;-><init>(Lcom/serenegiant/media/MediaMoviePlayer;)V

    iput-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 11
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mOutputSurface:Landroid/view/Surface;

    .line 12
    iput-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    .line 13
    iput-boolean p3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioEnabled:Z

    .line 14
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-nez p1, :cond_0

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 18
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "outputSurface and callback should not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    return-void
.end method

.method static synthetic access$102(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleInputVideo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/serenegiant/media/MediaMoviePlayer;)Lcom/serenegiant/media/IFrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/serenegiant/media/MediaMoviePlayer;Lcom/serenegiant/media/IFrameCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleOutputVideo(Lcom/serenegiant/media/IFrameCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/serenegiant/media/MediaMoviePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/serenegiant/media/MediaMoviePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/serenegiant/media/MediaMoviePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleInputAudio()V

    return-void
.end method

.method static synthetic access$1900(Lcom/serenegiant/media/MediaMoviePlayer;Lcom/serenegiant/media/IFrameCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleOutputAudio(Lcom/serenegiant/media/IFrameCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/serenegiant/media/MediaMoviePlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    return p0
.end method

.method static synthetic access$202(Lcom/serenegiant/media/MediaMoviePlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/serenegiant/media/MediaMoviePlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    return p0
.end method

.method static synthetic access$302(Lcom/serenegiant/media/MediaMoviePlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    return p1
.end method

.method static synthetic access$402(Lcom/serenegiant/media/MediaMoviePlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processStop(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processPrepared(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processPlaying(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/serenegiant/media/MediaMoviePlayer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->processPaused(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/serenegiant/media/MediaMoviePlayer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final handleInputAudio()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 2
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_process_input(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;[Ljava/nio/ByteBuffer;JZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 5
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    .line 8
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleInputVideo()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 2
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_process_input(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;[Ljava/nio/ByteBuffer;JZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 5
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    .line 8
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleLoop(Lcom/serenegiant/media/IFrameCallback;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    :cond_0
    return-void

    .line 6
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final handleOutputAudio(Lcom/serenegiant/media/IFrameCallback;)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_5

    .line 5
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_4

    .line 6
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v2, v0

    const/4 v4, 0x0

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_write_audio(Ljava/nio/ByteBuffer;IIJ)Z

    .line 7
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {p1, v1, v2}, Lcom/serenegiant/media/IFrameCallback;->onFrameAvailable(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSync:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioStartTime:J

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->adjustPresentationTime(Ljava/lang/Object;JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioStartTime:J

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 10
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 12
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    .line 13
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected result from audio decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method private final handleOutputVideo(Lcom/serenegiant/media/IFrameCallback;)V
    .locals 10

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_6

    .line 5
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v5, :cond_5

    if-eqz v5, :cond_4

    .line 6
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v2, v0

    const/4 v4, 0x0

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_write_video(Ljava/nio/ByteBuffer;IIJ)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v9, 0x1

    :cond_4
    if-eqz v9, :cond_5

    .line 8
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {p1, v1, v2}, Lcom/serenegiant/media/IFrameCallback;->onFrameAvailable(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    iget-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoSync:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoStartTime:J

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/serenegiant/media/MediaMoviePlayer;->adjustPresentationTime(Ljava/lang/Object;JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoStartTime:J

    .line 10
    :cond_5
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 11
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iput-boolean v8, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    .line 14
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected result from video decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method private final handlePause()V
    .locals 0

    return-void
.end method

.method private final handlePrepare(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    if-nez v1, :cond_7

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 10
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    instance-of v0, p1, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_6

    .line 13
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 14
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->updateMovieInfo()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_prepare_video(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    .line 17
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioEnabled:Z

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_prepare_audio(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    .line 19
    :cond_2
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    const/4 v1, 0x1

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mHasAudio:Z

    .line 20
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    if-gez v0, :cond_5

    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    if-ltz v0, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No video and audio track found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_1
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    invoke-interface {p1}, Lcom/serenegiant/media/IFrameCallback;->onPrepared()V

    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown source type:source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private final handleResume()V
    .locals 0

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
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 4
    :cond_1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    if-ltz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 6
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_2
    const-wide/16 p1, -0x1

    .line 7
    iput-wide p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    return-void
.end method

.method private final handleStart()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleSeek(J)V

    :cond_0
    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousAudioPresentationTimeUs:J

    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->previousVideoPresentationTimeUs:J

    .line 8
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    .line 9
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    iget v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    invoke-virtual {p0, v0, v4}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_start_video(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    .line 12
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 13
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputBuffers:[Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 15
    :cond_1
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    .line 16
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTask:Ljava/lang/Runnable;

    const-string v5, "VideoTask"

    invoke-direct {v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 17
    :goto_0
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    iput-boolean v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    .line 18
    iget v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    if-ltz v2, :cond_4

    .line 19
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    iget v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    invoke-virtual {p0, v2, v3}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_start_audio(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 20
    iput-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    .line 21
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 22
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 24
    :cond_3
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    .line 25
    new-instance v3, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTask:Ljava/lang/Runnable;

    const-string v2, "AudioTask"

    invoke-direct {v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    if-eqz v3, :cond_6

    .line 27
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_6
    return-void

    .line 28
    :cond_7
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final handleStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTask:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_stop_video()V

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoTrackIndex:I

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    iget-object v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTask:Ljava/lang/Runnable;

    monitor-enter v2

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->internal_stop_audio()V

    .line 7
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrackIndex:I

    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 11
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 12
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaCodec:Landroid/media/MediaCodec;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 15
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 16
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaCodec:Landroid/media/MediaCodec;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 19
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 22
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    .line 23
    :cond_3
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 24
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputBuffers:[Ljava/nio/ByteBuffer;

    .line 25
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    .line 26
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 28
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 30
    :try_start_2
    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoInputDone:Z

    iput-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoOutputDone:Z

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    .line 32
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    invoke-interface {v0}, Lcom/serenegiant/media/IFrameCallback;->onFinished()V

    return-void

    :catchall_0
    move-exception v1

    .line 34
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 35
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 36
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private final processPaused(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleResume()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    goto :goto_0

    .line 6
    :cond_3
    iget-wide v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/media/MediaMoviePlayer;->handleSeek(J)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_1
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr v0, v1

    .line 9
    monitor-exit p1

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final processPlaying(I)Z
    .locals 2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mCallback:Lcom/serenegiant/media/IFrameCallback;

    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleLoop(Lcom/serenegiant/media/IFrameCallback;)V

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handlePause()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/media/MediaMoviePlayer;->handleSeek(J)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 5
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr p1, v1

    .line 8
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final processPrepared(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStop()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->handleStart()V

    :goto_0
    const/4 p1, 0x1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr p1, v1

    .line 9
    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method private final processStop(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSource:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/serenegiant/media/MediaMoviePlayer;->handlePrepare(Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_1
    iget-boolean v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    and-int/2addr v0, v1

    .line 8
    monitor-exit p1

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
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
.method protected adjustPresentationTime(Ljava/lang/Object;JJ)J
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    cmp-long v4, p2, v0

    if-lez v4, :cond_3

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    :goto_0
    sub-long/2addr v4, p2

    sub-long v4, p4, v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    div-long v6, v4, v2

    rem-long/2addr v4, v2

    mul-long v4, v4, v2

    long-to-int v5, v4

    invoke-virtual {p1, v6, v7, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 4
    :catch_0
    :goto_1
    :try_start_1
    iget v4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    goto :goto_0

    .line 7
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit p1

    goto :goto_4

    .line 8
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_2
    :goto_4
    return-wide p2

    .line 9
    :cond_3
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v2

    return-wide p1
.end method

.method public final getBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mBitrate:I

    return v0
.end method

.method public final getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    return-wide v0
.end method

.method public final getFramerate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mFrameRate:F

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    return v0
.end method

.method public final getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRotation:I

    return v0
.end method

.method public final getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSampleRate:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    return v0
.end method

.method public final hasAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mHasAudio:Z

    return v0
.end method

.method protected internal_prepare_audio(Ljava/lang/Object;)I
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 2
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_6

    .line 5
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid7()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    const-string v0, "audio/"

    invoke-static {p1, v0}, Lcom/serenegiant/media/MediaMoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 10
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "channel-count"

    .line 11
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    const-string v0, "sample-rate"

    .line 12
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSampleRate:I

    .line 13
    iget v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v2, v4, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/16 v2, 0xc

    :goto_1
    const/4 v6, 0x2

    invoke-static {v0, v2, v6}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const-string v2, "max-input-size"

    .line 14
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-lez v0, :cond_3

    mul-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    move v0, p1

    .line 15
    :goto_2
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    if-le v0, p1, :cond_4

    .line 16
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    .line 17
    :cond_4
    iget p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    mul-int/lit8 p1, p1, 0x2

    .line 18
    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    .line 19
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v7, 0x3

    iget v8, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioSampleRate:I

    iget v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioChannels:I

    if-ne v0, v4, :cond_5

    const/4 v9, 0x4

    goto :goto_3

    :cond_5
    const/16 v9, 0xc

    :goto_3
    const/4 v10, 0x2

    iget v11, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    const/4 v12, 0x1

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    const-string v2, "failed to start audio track playing"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_4

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown source type:source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_7
    :goto_4
    return v1
.end method

.method protected internal_prepare_video(Ljava/lang/Object;)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 2
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid7()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    const-string v0, "video/"

    invoke-static {p1, v0}, Lcom/serenegiant/media/MediaMoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 10
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "width"

    .line 11
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    const-string v0, "height"

    .line 12
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    const-string v0, "durationUs"

    .line 13
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    goto :goto_1

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown source type:source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return v1
.end method

.method protected internal_process_input(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;[Ljava/nio/ByteBuffer;JZ)Z
    .locals 9

    .line 1
    :cond_0
    iget-boolean p6, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mIsRunning:Z

    if-eqz p6, :cond_3

    const-wide/16 v0, 0x2710

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 p6, -0x1

    if-ne v3, p6, :cond_1

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_0

    .line 3
    aget-object p3, p3, v3

    const/4 p6, 0x0

    invoke-virtual {p2, p3, p6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-wide v6, p4

    .line 4
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->advance()Z

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected internal_start_audio(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;
    .locals 2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "mime"

    .line 2
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p2, p1, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 5
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    .line 6
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-gtz p1, :cond_0

    .line 8
    iget p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioInputBufSize:I

    .line 9
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected internal_start_video(Landroid/media/MediaExtractor;I)Landroid/media/MediaCodec;
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "mime"

    .line 2
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mOutputSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 5
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object v0
.end method

.method protected internal_stop_audio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 5
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    return-void
.end method

.method protected internal_stop_video()V
    .locals 0

    return-void
.end method

.method protected internal_write_audio(Ljava/nio/ByteBuffer;IIJ)Z
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    array-length p4, p4

    if-ge p4, p3, :cond_0

    .line 2
    new-array p4, p3, [B

    iput-object p4, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    .line 7
    iget-object p2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mAudioOutTempBuf:[B

    invoke-virtual {p1, p2, p4, p3}, Landroid/media/AudioTrack;->write([BII)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected internal_write_video(Ljava/nio/ByteBuffer;IIJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x5

    .line 2
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final play()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iput v2, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

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

.method public final prepare(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSource:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 9
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final prepare(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSource:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 4
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaMoviePlayer;->stop()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x9

    .line 3
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

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

.method public final resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x6

    .line 2
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 3
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final seek(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 2
    :try_start_0
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 3
    iput-wide p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequestTime:J

    .line 4
    iget-object p1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mState:I

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 3
    iput v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRequest:I

    .line 4
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mSync:Ljava/lang/Object;

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

.method protected updateMovieInfo()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mBitrate:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRotation:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mFrameRate:F

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoWidth:I

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mVideoHeight:I

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mRotation:I

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mBitrate:I

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/serenegiant/media/MediaMoviePlayer;->mDuration:J

    :cond_4
    return-void
.end method
