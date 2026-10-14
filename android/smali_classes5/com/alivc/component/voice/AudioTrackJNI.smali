.class public Lcom/alivc/component/voice/AudioTrackJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final kBufferSizeFactor:D

.field private lastChannel:I

.field private lastSampleRate:I

.field private mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

.field private mAudioTrackErrorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

.field private mAudioTrackListener:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

.field private mInited:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioTrackJNI"

    iput-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->TAG:Ljava/lang/String;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->kBufferSizeFactor:D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mInited:Z

    iput v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastSampleRate:I

    iput v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastChannel:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    new-instance v1, Lcom/alivc/component/voice/AudioTrackJNI$1;

    invoke-direct {v1, p0}, Lcom/alivc/component/voice/AudioTrackJNI$1;-><init>(Lcom/alivc/component/voice/AudioTrackJNI;)V

    iput-object v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrackListener:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

    new-instance v1, Lcom/alivc/component/voice/AudioTrackJNI$2;

    invoke-direct {v1, p0}, Lcom/alivc/component/voice/AudioTrackJNI$2;-><init>(Lcom/alivc/component/voice/AudioTrackJNI;)V

    iput-object v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrackErrorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ME ME ME, AudioTrackJNI construct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alivc/component/voice/WebRtcAudioTrack;

    iget-object v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrackListener:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

    invoke-direct {v0, v1, p1, p2}, Lcom/alivc/component/voice/WebRtcAudioTrack;-><init>(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;J)V

    iput-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    iget-object p1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrackErrorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

    invoke-static {p1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->setErrorCallback(Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/voice/AudioTrackJNI;)Lcom/alivc/component/voice/WebRtcAudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alivc/component/voice/AudioTrackJNI;Ljava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/component/voice/AudioTrackJNI;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/alivc/component/voice/AudioTrackJNI;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/component/voice/AudioTrackJNI;->nativeGetPlayoutData(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/alivc/component/voice/AudioTrackJNI;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/component/voice/AudioTrackJNI;->nativeNotifyAudioDeviceError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeGetPlayoutData(IJ)V
.end method

.method private native nativeNotifyAudioDeviceError(Ljava/lang/String;ILjava/lang/String;)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "AudioTrackJNI"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    return-void
.end method

.method public init(II)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init : sampleRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioTrackJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mInited:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alivc/component/voice/WebRtcAudioTrack;->initPlayout(IID)Z

    move-result v0

    iput p1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastSampleRate:I

    iput p2, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastChannel:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mInited:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()Z
    .locals 2

    const-string v0, "AudioTrackJNI"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->stopPlayout()Z

    move-result v0

    iput-boolean v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mInited:Z

    return v0

    :cond_0
    return v1
.end method

.method public resume()Z
    .locals 4

    const-string v0, "AudioTrackJNI"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mInited:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastSampleRate:I

    iget v3, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastChannel:I

    invoke-virtual {p0, v0, v3}, Lcom/alivc/component/voice/AudioTrackJNI;->init(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->startPlayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public start()Z
    .locals 4

    const-string v0, "AudioTrackJNI"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mInited:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastSampleRate:I

    iget v3, p0, Lcom/alivc/component/voice/AudioTrackJNI;->lastChannel:I

    invoke-virtual {p0, v0, v3}, Lcom/alivc/component/voice/AudioTrackJNI;->init(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->startPlayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public stop()Z
    .locals 2

    const-string v0, "AudioTrackJNI"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mAudioTrack:Lcom/alivc/component/voice/WebRtcAudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->stopPlayout()Z

    move-result v0

    iput-boolean v1, p0, Lcom/alivc/component/voice/AudioTrackJNI;->mInited:Z

    return v0

    :cond_0
    return v1
.end method
