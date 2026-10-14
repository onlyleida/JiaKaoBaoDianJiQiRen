.class Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;


# direct methods
.method public constructor <init>(Lcom/alivc/component/voice/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method

.method private writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrackThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$000(Lcom/alivc/component/voice/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$100(Z)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_1
    iget-boolean v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$400(Lcom/alivc/component/voice/WebRtcAudioTrack;)Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;

    move-result-object v4

    iget-object v5, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$300(Lcom/alivc/component/voice/WebRtcAudioTrack;)J

    move-result-wide v5

    invoke-interface {v4, v0, v5, v6}, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackListener;->GetPlayoutData(IJ)V

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$100(Z)V

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$600(Lcom/alivc/component/voice/WebRtcAudioTrack;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$000(Lcom/alivc/component/voice/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v5, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-eq v4, v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioTrack.write played invalid number of bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v4, :cond_3

    iput-boolean v3, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    iget-object v5, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioTrack.write failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$700(Lcom/alivc/component/voice/WebRtcAudioTrack;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$200(Lcom/alivc/component/voice/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$000(Lcom/alivc/component/voice/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "Calling AudioTrack.stop..."

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioTrack;->access$000(Lcom/alivc/component/voice/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const-string v0, "AudioTrack.stop is done."

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method
