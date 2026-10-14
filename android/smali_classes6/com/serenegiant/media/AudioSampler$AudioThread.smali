.class final Lcom/serenegiant/media/AudioSampler$AudioThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AudioSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/media/AudioSampler;


# direct methods
.method public constructor <init>(Lcom/serenegiant/media/AudioSampler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    const-string p1, "AudioThread"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/16 v0, -0x10

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x3

    const/4 v1, 0x3

    .line 2
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    iget-boolean v2, v2, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    if-eqz v2, :cond_10

    if-lez v1, :cond_10

    .line 3
    iget-object v2, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    .line 4
    invoke-static {v2}, Lcom/serenegiant/media/AudioSampler;->access$000(Lcom/serenegiant/media/AudioSampler;)I

    move-result v2

    iget-object v3, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-static {v3}, Lcom/serenegiant/media/AudioSampler;->access$100(Lcom/serenegiant/media/AudioSampler;)I

    move-result v3

    iget-object v4, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-static {v4}, Lcom/serenegiant/media/AudioSampler;->access$200(Lcom/serenegiant/media/AudioSampler;)I

    move-result v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-static {v6}, Lcom/serenegiant/media/AudioSampler;->access$300(Lcom/serenegiant/media/AudioSampler;)I

    move-result v6

    .line 5
    invoke-static {v2, v3, v4, v5, v6}, Lcom/serenegiant/media/IAudioSampler;->createAudioRecord(IIIII)Landroid/media/AudioRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    const-wide/16 v4, 0x64

    const/4 v6, -0x1

    .line 6
    :try_start_0
    iget-object v7, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    iget-boolean v7, v7, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    if-eqz v7, :cond_e

    .line 7
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    const/4 v7, 0x0

    .line 8
    :cond_1
    :goto_2
    :try_start_1
    iget-object v8, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    iget-boolean v8, v8, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    if-eqz v8, :cond_d

    .line 9
    iget-object v8, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v8}, Lcom/serenegiant/media/IAudioSampler;->obtain()Lcom/serenegiant/media/MediaData;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 10
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v9

    if-eq v9, v0, :cond_4

    if-nez v7, :cond_2

    .line 11
    invoke-static {}, Lcom/serenegiant/media/AudioSampler;->access$400()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not a recording state,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 12
    iget-object v9, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v9, v8}, Lcom/serenegiant/media/IAudioSampler;->recycle(Lcom/serenegiant/media/MediaData;)V

    const/16 v8, 0x14

    if-le v7, v8, :cond_3

    goto/16 :goto_5

    .line 13
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v9, v8, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object v10, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-static {v10}, Lcom/serenegiant/media/AudioSampler;->access$500(Lcom/serenegiant/media/AudioSampler;)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v10, :cond_5

    .line 17
    :try_start_3
    iget-object v7, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v7}, Lcom/serenegiant/media/IAudioSampler;->getInputPTSUs()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    .line 18
    iput v10, v8, Lcom/serenegiant/media/MediaData;->size:I

    .line 19
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 21
    iget-object v7, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v7, v8}, Lcom/serenegiant/media/IAudioSampler;->addMediaData(Lcom/serenegiant/media/MediaData;)Z

    goto :goto_1

    :catchall_0
    move-exception v8

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_5
    if-nez v10, :cond_6

    .line 22
    iget-object v7, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v7, v8}, Lcom/serenegiant/media/IAudioSampler;->recycle(Lcom/serenegiant/media/MediaData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_6
    if-ne v10, v6, :cond_7

    if-nez v7, :cond_b

    .line 23
    :try_start_4
    invoke-static {}, Lcom/serenegiant/media/AudioSampler;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Read error ERROR"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const/4 v9, -0x2

    if-ne v10, v9, :cond_8

    if-nez v7, :cond_b

    .line 24
    invoke-static {}, Lcom/serenegiant/media/AudioSampler;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Read error ERROR_BAD_VALUE"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const/4 v9, -0x3

    if-ne v10, v9, :cond_9

    if-nez v7, :cond_b

    .line 25
    invoke-static {}, Lcom/serenegiant/media/AudioSampler;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Read error ERROR_INVALID_OPERATION"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const/4 v9, -0x6

    if-ne v10, v9, :cond_a

    .line 26
    invoke-static {}, Lcom/serenegiant/media/AudioSampler;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Read error ERROR_DEAD_OBJECT"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 27
    iget-object v9, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v9, v8}, Lcom/serenegiant/media/IAudioSampler;->recycle(Lcom/serenegiant/media/MediaData;)V

    goto :goto_6

    :cond_a
    if-gez v10, :cond_b

    if-nez v7, :cond_b

    .line 28
    invoke-static {}, Lcom/serenegiant/media/AudioSampler;->access$400()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read returned unknown err "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 29
    iget-object v9, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v9, v8}, Lcom/serenegiant/media/IAudioSampler;->recycle(Lcom/serenegiant/media/MediaData;)V

    goto :goto_4

    :catch_0
    move-exception v9

    .line 30
    invoke-static {}, Lcom/serenegiant/media/AudioSampler;->access$400()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AudioRecord#read failed:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 31
    iget-object v10, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v10, v8}, Lcom/serenegiant/media/IAudioSampler;->recycle(Lcom/serenegiant/media/MediaData;)V

    .line 32
    iget-object v8, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v8, v9}, Lcom/serenegiant/media/IAudioSampler;->callOnError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :cond_c
    :goto_4
    const/16 v8, 0xa

    if-le v7, v8, :cond_1

    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 33
    :cond_d
    :goto_6
    :try_start_5
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    goto :goto_8

    :catchall_1
    move-exception v8

    :goto_7
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v8

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    .line 34
    :goto_8
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v8

    const/4 v7, 0x0

    :goto_9
    add-int/2addr v1, v6

    .line 35
    :try_start_6
    iget-object v6, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v6, v8}, Lcom/serenegiant/media/IAudioSampler;->callOnError(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    .line 36
    :goto_a
    iget-object v2, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    iget-boolean v2, v2, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    if-eqz v2, :cond_0

    if-lez v7, :cond_0

    if-lez v1, :cond_0

    .line 37
    :goto_b
    iget-object v2, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    iget-boolean v2, v2, Lcom/serenegiant/media/IAudioSampler;->mIsCapturing:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ge v3, v2, :cond_0

    .line 38
    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 39
    :goto_c
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    throw v0

    .line 40
    :cond_f
    iget-object v1, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "AudioRecord failed to initialize"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/serenegiant/media/IAudioSampler;->callOnError(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 41
    :catch_3
    :cond_10
    iget-object v0, p0, Lcom/serenegiant/media/AudioSampler$AudioThread;->this$0:Lcom/serenegiant/media/AudioSampler;

    invoke-virtual {v0}, Lcom/serenegiant/media/AudioSampler;->stop()V

    return-void
.end method
