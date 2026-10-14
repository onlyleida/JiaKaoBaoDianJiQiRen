.class public Lcom/alivc/component/voice/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;,
        Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;,
        Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;,
        Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final DEFAULT_USAGE:I

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioTrack"

.field private static errorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

.field private static volatile speakerMute:Z

.field private static usageAttribute:I


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

.field private audioTrack:Landroid/media/AudioTrack;

.field private audioTrackListener:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private emptyBytes:[B

.field private final nativeAudioRender:J

.field private final threadChecker:La/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioTrack;->getDefaultUsageAttribute()I

    move-result v0

    sput v0, Lcom/alivc/component/voice/WebRtcAudioTrack;->DEFAULT_USAGE:I

    sput v0, Lcom/alivc/component/voice/WebRtcAudioTrack;->usageAttribute:I

    return-void
.end method

.method constructor <init>(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/b$a;

    invoke-direct {v0}, La/a/a/b$a;-><init>()V

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->threadChecker:La/a/a/b$a;

    invoke-virtual {v0}, La/a/a/b$a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrackListener:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

    iput-wide p2, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->nativeAudioRender:J

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/voice/WebRtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    invoke-static {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alivc/component/voice/WebRtcAudioTrack;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->nativeAudioRender:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/alivc/component/voice/WebRtcAudioTrack;)Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrackListener:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/alivc/component/voice/WebRtcAudioTrack;->speakerMute:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alivc/component/voice/WebRtcAudioTrack;)[B
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$700(Lcom/alivc/component/voice/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->reportWebRtcAudioTrackError(Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 0

    return-void
.end method

.method private channelCountToConfiguration(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private static createAudioTrackOnLollipopOrHigher(III)Landroid/media/AudioTrack;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "createAudioTrackOnLollipopOrHigher"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeOutputSampleRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p0, v1, :cond_0

    const-string v1, "Unable to use fast mode since requested sample rate is not native"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/alivc/component/voice/WebRtcAudioTrack;->usageAttribute:I

    sget v2, Lcom/alivc/component/voice/WebRtcAudioTrack;->DEFAULT_USAGE:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A non default usage attribute is used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alivc/component/voice/WebRtcAudioTrack;->usageAttribute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    sget v2, Lcom/alivc/component/voice/WebRtcAudioTrack;->usageAttribute:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private static createAudioTrackOnLowerThanLollipop(III)Landroid/media/AudioTrack;
    .locals 8

    new-instance v7, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object v0, v7

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v7
.end method

.method private getBufferSizeInFrames()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static getDefaultUsageAttribute()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getStreamMaxVolume()I
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->threadChecker:La/a/a/b$a;

    invoke-virtual {v0}, La/a/a/b$a;->a()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "getStreamMaxVolume"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->assertTrue(Z)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method private getStreamVolume()I
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->threadChecker:La/a/a/b$a;

    invoke-virtual {v0}, La/a/a/b$a;->a()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "getStreamVolume"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->assertTrue(Z)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private isVolumeFixed()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    return v0
.end method

.method private logBufferCapacityInFrames()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack: buffer capacity in frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logBufferSizeInFrames()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack: buffer size in frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logMainParameters()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack: session ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "channels: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sample rate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "max gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParametersExtended()V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->logBufferSizeInFrames()V

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->logBufferCapacityInFrames()V

    return-void
.end method

.method private logUnderrunCount()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "underrun count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private releaseAudioResources()V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "releaseAudioResources"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run-time playback error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioTrack;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;->onWebRtcAudioTrackError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init playout error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alivc/component/voice/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioTrack;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;->onWebRtcAudioTrackInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackStartError(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start playout error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioTrack;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;->onWebRtcAudioTrackStartError(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setAudioTrackUsageAttribute(I)V
    .locals 3

    const-class v0, Lcom/alivc/component/voice/WebRtcAudioTrack;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default usage attribute is changed from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alivc/component/voice/WebRtcAudioTrack;->DEFAULT_USAGE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioTrack"

    invoke-static {v2, v1}, Lcom/alivc/live/pusher/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->usageAttribute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setErrorCallback(Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;)V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "Set extended error callback"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioTrack$ErrorCallback;

    return-void
.end method

.method public static setSpeakerMute(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeakerMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->speakerMute:Z

    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 4

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->threadChecker:La/a/a/b$a;

    invoke-virtual {v0}, La/a/a/b$a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStreamVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "The device implements a fixed volume policy."

    invoke-static {v1, p1}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v2
.end method


# virtual methods
.method public initPlayout(IID)Z
    .locals 5

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->threadChecker:La/a/a/b$a;

    invoke-virtual {v0}, La/a/a/b$a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPlayout(sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSizeFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, p2, 0x2

    div-int/lit8 v2, p1, 0x64

    mul-int v0, v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteBuffer.capacity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->emptyBytes:[B

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrackListener:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

    iget-object v2, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v3, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->nativeAudioRender:J

    invoke-interface {v0, v2, v3, v4}, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;->CacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    invoke-direct {p0, p2}, Lcom/alivc/component/voice/WebRtcAudioTrack;->channelCountToConfiguration(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    int-to-double v2, v0

    mul-double v2, v2, p3

    double-to-int p3, v2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minBufferSizeInBytes: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p4

    const/4 v0, 0x0

    if-ge p3, p4, :cond_0

    const-string p1, "AudioTrack.getMinBufferSize returns an invalid value."

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object p4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p4, :cond_1

    const-string p1, "Conflict with existing AudioTrack."

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p4, v1, :cond_2

    invoke-static {p1, p2, p3}, Lcom/alivc/component/voice/WebRtcAudioTrack;->createAudioTrackOnLollipopOrHigher(III)Landroid/media/AudioTrack;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/alivc/component/voice/WebRtcAudioTrack;->createAudioTrackOnLowerThanLollipop(III)Landroid/media/AudioTrack;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->logMainParameters()V

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->logMainParametersExtended()V

    return p2

    :cond_4
    :goto_1
    const-string p1, "Initialization of audio track failed."

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->releaseAudioResources()V

    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->releaseAudioResources()V

    return v0
.end method

.method public startPlayout()Z
    .locals 5

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->threadChecker:La/a/a/b$a;

    invoke-virtual {v0}, La/a/a/b$a;->a()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "startPlayout"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->assertTrue(Z)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->assertTrue(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.play failed - incorrect state :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->releaseAudioResources()V

    return v2

    :cond_2
    new-instance v0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    const-string v2, "AudioTrackJavaThread"

    invoke-direct {v0, p0, v2}, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;-><init>(Lcom/alivc/component/voice/WebRtcAudioTrack;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack.play failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public stopPlayout()Z
    .locals 5

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->threadChecker:La/a/a/b$a;

    invoke-virtual {v0}, La/a/a/b$a;->a()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "stopPlayout"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/alivc/component/voice/WebRtcAudioTrack;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->logUnderrunCount()V

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v1}, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->stopThread()V

    const-string v1, "Stopping the AudioTrackThread..."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v3, v4}, La/a/a/b;->a(Ljava/lang/Thread;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Join of AudioTrackThread timed out."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    :cond_1
    const-string v1, "AudioTrackThread has now been stopped."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack;->audioThread:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->releaseAudioResources()V

    return v2
.end method
