.class public Lcom/alivc/component/voice/AudioRecordJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

.field private mAudioRecordErrorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

.field private mAudioRecordListener:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioRecordJNI"

    iput-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    new-instance v1, Lcom/alivc/component/voice/AudioRecordJNI$1;

    invoke-direct {v1, p0}, Lcom/alivc/component/voice/AudioRecordJNI$1;-><init>(Lcom/alivc/component/voice/AudioRecordJNI;)V

    iput-object v1, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecordListener:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;

    new-instance v1, Lcom/alivc/component/voice/AudioRecordJNI$2;

    invoke-direct {v1, p0}, Lcom/alivc/component/voice/AudioRecordJNI$2;-><init>(Lcom/alivc/component/voice/AudioRecordJNI;)V

    iput-object v1, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecordErrorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ME ME ME, AudioRecordJNI construct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alivc/component/voice/WebRtcAudioRecord;

    iget-object v1, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecordListener:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;

    invoke-direct {v0, v1, p1, p2}, Lcom/alivc/component/voice/WebRtcAudioRecord;-><init>(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;J)V

    iput-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    iget-object p1, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecordErrorCallback:Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    invoke-static {p1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->setErrorCallback(Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/voice/AudioRecordJNI;)Lcom/alivc/component/voice/WebRtcAudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alivc/component/voice/AudioRecordJNI;Ljava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/component/voice/AudioRecordJNI;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/alivc/component/voice/AudioRecordJNI;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/component/voice/AudioRecordJNI;->nativeDataIsRecorded(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/alivc/component/voice/AudioRecordJNI;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alivc/component/voice/AudioRecordJNI;->nativeNotifyAudioDeviceError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeDataIsRecorded(IJ)V
.end method

.method private native nativeNotifyAudioDeviceError(Ljava/lang/String;ILjava/lang/String;)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "AudioRecordJNI"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    return-void
.end method

.method public init(IIIZ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init : sampleRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", native format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AudioRecordJNI"

    invoke-static {v0, p3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->enableBuiltInAEC(Z)Z

    iget-object p3, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-virtual {p3, p4}, Lcom/alivc/component/voice/WebRtcAudioRecord;->enableBuiltInNS(Z)Z

    iget-object p3, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-virtual {p3, p1, p2}, Lcom/alivc/component/voice/WebRtcAudioRecord;->initRecording(II)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public pause()Z
    .locals 2

    const-string v0, "AudioRecordJNI"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->stopRecording()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resume()Z
    .locals 2

    const-string v0, "AudioRecordJNI"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->startRecording()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMute(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute, mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecordJNI"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alivc/component/voice/WebRtcAudioRecord;->setMicrophoneMute(Z)V

    return-void
.end method

.method public start()Z
    .locals 2

    const-string v0, "AudioRecordJNI"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->startRecording()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 2

    const-string v0, "AudioRecordJNI"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/AudioRecordJNI;->mAudioRecord:Lcom/alivc/component/voice/WebRtcAudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->stopRecording()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
