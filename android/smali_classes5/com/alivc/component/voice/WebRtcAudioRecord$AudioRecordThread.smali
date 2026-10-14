.class Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lcom/alivc/component/voice/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecordThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$000(Lcom/alivc/component/voice/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$100(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$000(Lcom/alivc/component/voice/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_4

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$400(Lcom/alivc/component/voice/WebRtcAudioRecord;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    iget-boolean v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$600(Lcom/alivc/component/voice/WebRtcAudioRecord;)Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;

    move-result-object v3

    iget-object v4, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v4}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$500(Lcom/alivc/component/voice/WebRtcAudioRecord;)J

    move-result-wide v4

    invoke-interface {v3, v0, v4, v5}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordListener;->DataIsRecorded(IJ)V

    :cond_3
    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$700()Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v3, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$200(Lcom/alivc/component/voice/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$700()Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v3

    new-instance v4, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;

    iget-object v5, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v5}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$000(Lcom/alivc/component/voice/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;-><init>(Landroid/media/AudioRecord;[BLcom/alivc/component/voice/WebRtcAudioRecord$1;)V

    invoke-interface {v3, v4}, Lcom/alivc/component/voice/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;->onWebRtcAudioRecordSamplesReady(Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;)V

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecord.read failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x3

    if-ne v0, v4, :cond_1

    iput-boolean v2, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v0, v3}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$900(Lcom/alivc/component/voice/WebRtcAudioRecord;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$000(Lcom/alivc/component/voice/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/alivc/component/voice/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/alivc/component/voice/WebRtcAudioRecord;->access$000(Lcom/alivc/component/voice/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord.stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method
