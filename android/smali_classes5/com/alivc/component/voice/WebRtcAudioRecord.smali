.class public Lcom/alivc/component/voice/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;,
        Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;,
        Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;,
        Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;,
        Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;,
        Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final DEFAULT_AUDIO_SOURCE:I

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioRecord"

.field private static audioSamplesReadyCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

.field private static audioSource:I

.field private static errorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

.field private static volatile microphoneMute:Z


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private audioRecordListener:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;

.field private audioThread:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private effects:Lcom/alivc/component/voice/WebRtcAudioEffects;

.field private emptyBytes:[B

.field private final nativeAudioRecord:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioRecord;->getDefaultAudioSource()I

    move-result v0

    sput v0, Lcom/alivc/component/voice/WebRtcAudioRecord;->DEFAULT_AUDIO_SOURCE:I

    sput v0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioSource:I

    return-void
.end method

.method constructor <init>(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecordListener:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;

    iput-wide p2, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->nativeAudioRecord:J

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioEffects;->create()Lcom/alivc/component/voice/WebRtcAudioEffects;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->effects:Lcom/alivc/component/voice/WebRtcAudioEffects;

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/voice/WebRtcAudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    invoke-static {p0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/alivc/component/voice/WebRtcAudioRecord;->microphoneMute:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alivc/component/voice/WebRtcAudioRecord;)[B
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/alivc/component/voice/WebRtcAudioRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->nativeAudioRecord:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/alivc/component/voice/WebRtcAudioRecord;)Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecordListener:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;

    return-object p0
.end method

.method static synthetic access$700()Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;
    .locals 1

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioSamplesReadyCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alivc/component/voice/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->reportWebRtcAudioRecordError(Ljava/lang/String;)V

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

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private static getDefaultAudioSource()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private logMainParameters()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord: session ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "channels: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sample rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParametersExtended()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord: buffer size in frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeDataIsRecorded(IJ)V
.end method

.method private reportWebRtcAudioRecordError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run-time recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alivc/component/voice/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioRecord;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;->onWebRtcAudioRecordError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordInitError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alivc/component/voice/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioRecord;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;->onWebRtcAudioRecordInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordStartError(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alivc/component/voice/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioRecord;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;->onWebRtcAudioRecordStartError(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setAudioSource(I)V
    .locals 3

    const-class v0, Lcom/alivc/component/voice/WebRtcAudioRecord;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio source is changed from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioRecord"

    invoke-static {v2, v1}, Lcom/alivc/live/pusher/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioSource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setErrorCallback(Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;)V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "Set error callback"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->errorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    return-void
.end method

.method public static setMicrophoneMute(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicrophoneMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->microphoneMute:Z

    return-void
.end method

.method public static setOnAudioSamplesReady(Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;)V
    .locals 0

    sput-object p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioSamplesReadyCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    return-void
.end method


# virtual methods
.method public enableBuiltInAEC(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBuiltInAEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->effects:Lcom/alivc/component/voice/WebRtcAudioEffects;

    if-nez v0, :cond_0

    const-string p1, "Built-in AEC is not supported on this platform"

    invoke-static {v1, p1}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alivc/component/voice/WebRtcAudioEffects;->setAEC(Z)Z

    move-result p1

    return p1
.end method

.method public enableBuiltInNS(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBuiltInNS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->effects:Lcom/alivc/component/voice/WebRtcAudioEffects;

    if-nez v0, :cond_0

    const-string p1, "Built-in NS is not supported on this platform"

    invoke-static {v1, p1}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alivc/component/voice/WebRtcAudioEffects;->setNS(Z)Z

    move-result p1

    return p1
.end method

.method public initRecording(II)Z
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRecording(sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "InitRecording called twice without StopRecording."

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    return v2

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    div-int/lit8 v3, p1, 0x64

    mul-int v0, v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteBuffer.capacity: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->emptyBytes:[B

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecordListener:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->nativeAudioRecord:J

    invoke-interface {v0, v3, v4, v5}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;->CacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    invoke-direct {p0, p2}, Lcom/alivc/component/voice/WebRtcAudioRecord;->channelCountToConfiguration(I)I

    move-result v9

    const/4 p2, 0x2

    invoke-static {p1, v9, p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecord.getMinBufferSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, v0, 0x2

    iget-object p2, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bufferSizeInBytes: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Landroid/media/AudioRecord;

    sget v7, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioSource:I

    const/4 v10, 0x2

    move-object v6, p2

    move v8, p1

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p2, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const-string p1, "Failed to create a new AudioRecord instance"

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->releaseAudioResources()V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->effects:Lcom/alivc/component/voice/WebRtcAudioEffects;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alivc/component/voice/WebRtcAudioEffects;->enable(I)V

    :cond_3
    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->logMainParameters()V

    invoke-direct {p0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->logMainParametersExtended()V

    return p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AudioRecord ctor error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->releaseAudioResources()V

    return v2

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioRecord.getMinBufferSize failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    return v2
.end method

.method public releaseAudioResources()V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "releaseAudioResources"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method public startRecording()Z
    .locals 5

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->assertTrue(Z)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioThread:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->assertTrue(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord.startRecording failed - incorrect state :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    return v2

    :cond_2
    new-instance v0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

    const-string v2, "AudioRecordJavaThread"

    invoke-direct {v0, p0, v2}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;-><init>(Lcom/alivc/component/voice/WebRtcAudioRecord;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioThread:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecord.startRecording failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    return v2
.end method

.method public stopRecording()Z
    .locals 5

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioThread:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->assertTrue(Z)V

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioThread:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

    invoke-virtual {v1}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->stopThread()V

    iget-object v1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioThread:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v3, v4}, La/a/a/b;->a(Ljava/lang/Thread;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Join of AudioRecordJavaThread timed out"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->audioThread:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord;->effects:Lcom/alivc/component/voice/WebRtcAudioEffects;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioEffects;->release()V

    :cond_2
    invoke-virtual {p0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->releaseAudioResources()V

    return v2
.end method
