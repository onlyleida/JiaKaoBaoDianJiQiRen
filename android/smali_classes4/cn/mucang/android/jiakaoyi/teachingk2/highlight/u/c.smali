.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected volatile b:Z

.field private c:I

.field protected volatile d:Z

.field protected e:Z

.field protected f:Z

.field protected g:I

.field protected volatile h:Landroid/media/MediaCodec;

.field protected i:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;

.field protected j:Landroid/media/MediaCodec$BufferInfo;

.field protected k:Ljava/lang/String;

.field protected l:Landroid/media/MediaMuxer;

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->m:J

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :catch_0
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

.method public static final i(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 5
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 6
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method


# virtual methods
.method protected a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l:Landroid/media/MediaMuxer;

    const-string v1, "Encoder"

    if-nez v0, :cond_1

    const-string v0, "muxer is unexpectedly null"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    if-eqz v3, :cond_c

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 6
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->e:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    goto/16 :goto_2

    :cond_3
    const/4 v4, -0x3

    if-ne v3, v4, :cond_4

    const-string v3, "INFO_OUTPUT_BUFFERS_CHANGED"

    .line 7
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v4, -0x2

    if-ne v3, v4, :cond_6

    const-string v3, "INFO_OUTPUT_FORMAT_CHANGED"

    .line 8
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f:Z

    if-nez v3, :cond_5

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->g:I

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f:Z

    .line 13
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-gez v3, :cond_7

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drain:unexpected result from encoder#dequeueOutputBuffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 17
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    const-string v5, "drain:BUFFER_FLAG_CODEC_CONFIG"

    .line 18
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    iput v0, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 20
    :cond_8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_a

    .line 21
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f:Z

    if-eqz v2, :cond_9

    .line 22
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 23
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l:Landroid/media/MediaMuxer;

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->g:I

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v5, v4, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 24
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->m:J

    const/4 v2, 0x0

    goto :goto_1

    .line 25
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "drain:muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_a
    :goto_1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 27
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 28
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f:Z

    goto :goto_2

    .line 29
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    return-void
.end method

.method protected b([BIJ)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    if-eqz v1, :cond_5

    if-ge v0, p2, :cond_5

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int v3, v0, v2

    if-ge v3, p2, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, p2, v0

    :goto_1
    move v7, v2

    if-lez v7, :cond_3

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {v1, p1, v0, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3
    add-int/2addr v0, v7

    if-gtz p2, :cond_4

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->e:Z

    const-string p1, "Encoder"

    const-string p2, "send BUFFER_FLAG_END_OF_STREAM"

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public c([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b([BIJ)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->d()Z

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->c:I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return v2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 6
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected f()J
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->m:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public abstract g()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected h()V
    .locals 4

    const-string v0, "Encoder"

    const-string v1, "release:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "MediaCodec stop"

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 7
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "failed releasing MediaCodec"

    .line 8
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->f:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "Muxer stop"

    .line 11
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "failed stopping muxer"

    .line 13
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :cond_1
    :goto_1
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 15
    :try_start_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->i:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;

    invoke-interface {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "failed onStopped"

    .line 16
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->i:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->k:Ljava/lang/String;

    return-void
.end method

.method protected l()V
    .locals 2

    const-string v0, "Encoder"

    const-string v1, "sending EOS to encoder"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->c([BI)V

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "Encoder"

    const-string v1, "startRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->d:Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n()V
    .locals 2

    const-string v0, "Encoder"

    const-string v1, "stopRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->d:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    if-nez v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    const-string v0, "Encoder"

    const-string v1, "Encoder thread starting"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->d:Z

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->c:I

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->d:Z

    .line 9
    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->c:I

    const/4 v4, 0x1

    if-lez v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 10
    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->c:I

    .line 11
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_2

    .line 12
    :try_start_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->l()V

    .line 15
    :try_start_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->h()V

    .line 19
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_2
    if-eqz v5, :cond_3

    .line 20
    :try_start_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    :try_start_7
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_5

    .line 25
    :catch_3
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    const-string v0, "Encoder"

    const-string v2, "Encoder thread exiting"

    .line 26
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 28
    :try_start_8
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->d:Z

    .line 29
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->b:Z

    .line 30
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 31
    :goto_5
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    :catchall_3
    move-exception v0

    .line 32
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 33
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1
.end method
