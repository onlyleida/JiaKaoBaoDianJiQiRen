.class public Lcom/hw/videoprocessor/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/media/MediaExtractor;

.field private b:Landroid/media/MediaCodec;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Float;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/lang/Exception;

.field private h:I

.field private i:Lcom/hw/videoprocessor/b;

.field private j:Lcom/hw/videoprocessor/g/d;

.field private k:Lcom/hw/videoprocessor/g/e;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Integer;

.field private n:Z

.field private o:Lcom/hw/videoprocessor/g/c;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hw/videoprocessor/b;Landroid/media/MediaExtractor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;ZILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hw/videoprocessor/b;",
            "Landroid/media/MediaExtractor;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "ZI",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    const-string v0, "VideoProcessDecodeThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/hw/videoprocessor/c;->a:Landroid/media/MediaExtractor;

    .line 3
    iput-object p3, p0, Lcom/hw/videoprocessor/c;->c:Ljava/lang/Integer;

    .line 4
    iput-object p4, p0, Lcom/hw/videoprocessor/c;->d:Ljava/lang/Integer;

    .line 5
    iput-object p5, p0, Lcom/hw/videoprocessor/c;->p:Ljava/util/List;

    if-eqz p8, :cond_0

    .line 6
    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/hw/videoprocessor/c;->e:Ljava/lang/Float;

    .line 7
    iput p10, p0, Lcom/hw/videoprocessor/c;->h:I

    .line 8
    iput-object p11, p0, Lcom/hw/videoprocessor/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-object p1, p0, Lcom/hw/videoprocessor/c;->i:Lcom/hw/videoprocessor/b;

    .line 10
    iput-object p7, p0, Lcom/hw/videoprocessor/c;->l:Ljava/lang/Integer;

    .line 11
    iput-object p6, p0, Lcom/hw/videoprocessor/c;->m:Ljava/lang/Integer;

    .line 12
    iput-boolean p9, p0, Lcom/hw/videoprocessor/c;->n:Z

    return-void
.end method

.method private a()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->i:Lcom/hw/videoprocessor/b;

    invoke-interface {v0}, Lcom/hw/videoprocessor/b;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v2, 0x5

    .line 2
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "wait eglContext timeout!"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 4
    :cond_0
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->i:Lcom/hw/videoprocessor/b;

    invoke-interface {v0}, Lcom/hw/videoprocessor/b;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/hw/videoprocessor/g/d;

    invoke-direct {v2, v0}, Lcom/hw/videoprocessor/g/d;-><init>(Landroid/view/Surface;)V

    iput-object v2, v1, Lcom/hw/videoprocessor/c;->j:Lcom/hw/videoprocessor/g/d;

    .line 6
    invoke-virtual {v2}, Lcom/hw/videoprocessor/g/d;->c()V

    .line 7
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->a:Landroid/media/MediaExtractor;

    iget v2, v1, Lcom/hw/videoprocessor/c;->h:I

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "mime"

    .line 8
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    .line 9
    new-instance v2, Lcom/hw/videoprocessor/g/e;

    invoke-direct {v2}, Lcom/hw/videoprocessor/g/e;-><init>()V

    iput-object v2, v1, Lcom/hw/videoprocessor/c;->k:Lcom/hw/videoprocessor/g/e;

    .line 10
    iget-object v3, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Lcom/hw/videoprocessor/g/e;->c()Landroid/view/Surface;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 11
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 12
    iget-boolean v0, v1, Lcom/hw/videoprocessor/c;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/hw/videoprocessor/c;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/hw/videoprocessor/c;->l:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, v1, Lcom/hw/videoprocessor/c;->e:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v1, Lcom/hw/videoprocessor/c;->e:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/hw/videoprocessor/c;->m:Ljava/lang/Integer;

    .line 15
    :cond_1
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/hw/videoprocessor/c;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 16
    new-instance v0, Lcom/hw/videoprocessor/g/c;

    iget-object v2, v1, Lcom/hw/videoprocessor/c;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/hw/videoprocessor/c;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/hw/videoprocessor/g/c;-><init>(II)V

    iput-object v0, v1, Lcom/hw/videoprocessor/c;->o:Lcom/hw/videoprocessor/g/c;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e27\u7387\u8fc7\u9ad8\uff0c\u9700\u8981\u4e22\u5e27:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hw/videoprocessor/c;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/hw/videoprocessor/c;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/hw/videoprocessor/g/b;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_2
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    :goto_0
    if-nez v0, :cond_1e

    const-wide/16 v12, 0x9c4

    const/4 v14, -0x1

    if-nez v6, :cond_6

    .line 19
    iget-object v15, v1, Lcom/hw/videoprocessor/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v15

    .line 20
    iget v3, v1, Lcom/hw/videoprocessor/c;->h:I

    if-ne v15, v3, :cond_4

    .line 21
    iget-object v3, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v3, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_5

    .line 22
    iget-object v4, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 23
    iget-object v15, v1, Lcom/hw/videoprocessor/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v21

    if-gez v21, :cond_3

    .line 24
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x4

    move-object/from16 v18, v0

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    goto :goto_1

    .line 25
    :cond_3
    iget-object v4, v1, Lcom/hw/videoprocessor/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    .line 26
    iget-object v4, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v4

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 27
    iget-object v3, v1, Lcom/hw/videoprocessor/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    :cond_4
    if-ne v15, v14, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "inputDone"

    .line 28
    invoke-static {v4, v3}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v3, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v3, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v19

    if-ltz v19, :cond_6

    .line 30
    iget-object v3, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x4

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v6, 0x1

    :cond_6
    xor-int/lit8 v3, v0, 0x1

    if-eqz v0, :cond_7

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decoderOutputAvailable:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v4, v15}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    if-eqz v3, :cond_1d

    .line 32
    iget-object v4, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 33
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "outputBufferIndex = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_8

    if-ne v4, v14, :cond_8

    add-int/lit8 v7, v7, 0x1

    const/16 v12, 0xa

    if-le v7, v12, :cond_9

    new-array v0, v5, [Ljava/lang/Object;

    const-string v3, "INFO_TRY_AGAIN_LATER 10 times,force End!"

    .line 34
    invoke-static {v3, v0}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_10

    :cond_8
    const/4 v7, 0x0

    :cond_9
    if-ne v4, v14, :cond_a

    goto/16 :goto_10

    :cond_a
    const/4 v12, -0x2

    if-ne v4, v12, :cond_b

    .line 35
    iget-object v4, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 36
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "decode newFormat = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v4, v12}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    if-gez v4, :cond_c

    .line 37
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v4, v12}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    const-wide/16 v12, -0x1

    goto/16 :goto_f

    .line 38
    :cond_c
    iget-object v12, v1, Lcom/hw/videoprocessor/c;->d:Ljava/lang/Integer;

    const/4 v13, 0x4

    if-eqz v12, :cond_d

    iget-wide v14, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v11, v12

    cmp-long v22, v14, v11

    if-ltz v22, :cond_d

    .line 39
    iget v0, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/2addr v0, v13

    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_d
    move v11, v6

    move v6, v0

    const/4 v0, 0x1

    .line 40
    :goto_6
    iget-object v12, v1, Lcom/hw/videoprocessor/c;->c:Ljava/lang/Integer;

    move/from16 v23, v6

    if-eqz v12, :cond_e

    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v13, v12

    cmp-long v12, v5, v13

    if-gez v12, :cond_e

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop frame startTime = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/hw/videoprocessor/c;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " present time = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v5, v12

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 42
    :cond_e
    iget-object v5, v1, Lcom/hw/videoprocessor/c;->d:Ljava/lang/Integer;

    if-nez v5, :cond_11

    iget-object v5, v1, Lcom/hw/videoprocessor/c;->c:Ljava/lang/Integer;

    if-nez v5, :cond_11

    .line 43
    iget-object v5, v1, Lcom/hw/videoprocessor/c;->p:Ljava/util/List;

    if-eqz v5, :cond_11

    .line 44
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 45
    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v6, v12, v14

    if-ltz v6, :cond_f

    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v14, v12, v5

    if-gtz v14, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    .line 46
    :cond_11
    :goto_7
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_12

    .line 47
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "decoderDone"

    .line 48
    invoke-static {v3, v0}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v11

    goto/16 :goto_4

    .line 49
    :cond_12
    iget-object v5, v1, Lcom/hw/videoprocessor/c;->o:Lcom/hw/videoprocessor/g/c;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v8}, Lcom/hw/videoprocessor/g/c;->a(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5e27\u7387\u8fc7\u9ad8\uff0c\u4e22\u5e27:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/hw/videoprocessor/g/b;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_13
    add-int/lit8 v8, v8, 0x1

    .line 51
    iget-object v5, v1, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v0, :cond_1c

    .line 52
    :try_start_1
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->k:Lcom/hw/videoprocessor/g/e;

    invoke-virtual {v0}, Lcom/hw/videoprocessor/g/e;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_1c

    .line 54
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->d:Ljava/lang/Integer;

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/hw/videoprocessor/c;->c:Ljava/lang/Integer;

    if-nez v0, :cond_1a

    .line 55
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->p:Ljava/util/List;

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    const-wide/16 v12, 0x0

    .line 56
    :goto_9
    iget-object v6, v1, Lcom/hw/videoprocessor/c;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_18

    .line 57
    iget-object v6, v1, Lcom/hw/videoprocessor/c;->p:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 58
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v15, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v15, v3, v25

    if-ltz v15, :cond_17

    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v15, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v15, v3, v25

    if-gtz v15, :cond_17

    .line 59
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v15, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v3, v3, v18

    add-long/2addr v3, v12

    .line 60
    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v15, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v12, v12, v18

    .line 61
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-wide v14, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v14, v18, v14

    const v6, 0x48f42400    # 500000.0f

    cmp-long v18, v12, v14

    if-gez v18, :cond_14

    long-to-float v12, v12

    .line 62
    iget-object v13, v1, Lcom/hw/videoprocessor/c;->e:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    mul-float v13, v13, v6

    div-float/2addr v12, v13

    if-nez v0, :cond_15

    goto :goto_a

    :cond_14
    long-to-float v12, v14

    .line 63
    iget-object v13, v1, Lcom/hw/videoprocessor/c;->e:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    mul-float v13, v13, v6

    div-float/2addr v12, v13

    .line 64
    iget-object v6, v1, Lcom/hw/videoprocessor/c;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    if-ne v0, v6, :cond_15

    :goto_a
    const/high16 v12, 0x3f800000    # 1.0f

    :cond_15
    cmpl-float v0, v12, v5

    if-lez v0, :cond_16

    goto :goto_b

    :cond_16
    move v5, v12

    :goto_b
    const/4 v0, 0x0

    cmpg-float v6, v5, v0

    if-gez v6, :cond_19

    const/4 v5, 0x0

    goto :goto_c

    .line 65
    :cond_17
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v3, v14

    add-long/2addr v12, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_18
    const-wide/16 v3, 0x0

    :cond_19
    :goto_c
    const-wide/16 v12, -0x1

    goto :goto_e

    :cond_1a
    const-wide/16 v12, -0x1

    cmp-long v0, v9, v12

    if-nez v0, :cond_1b

    .line 66
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoStartTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v14, v9, v3

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v0, v14}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_1b
    const-wide/16 v3, 0x3e8

    .line 68
    :goto_d
    iget-wide v14, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v14, v9

    mul-long v14, v14, v3

    move-wide v3, v14

    :goto_e
    long-to-float v0, v3

    .line 69
    iget-object v3, v1, Lcom/hw/videoprocessor/c;->e:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v0, v3

    float-to-long v3, v0

    .line 70
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->i:Lcom/hw/videoprocessor/b;

    invoke-interface {v0, v3, v4}, Lcom/hw/videoprocessor/b;->setTime(J)V

    .line 71
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->k:Lcom/hw/videoprocessor/g/e;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/hw/videoprocessor/g/e;->b(ZF)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawImage,setPresentationTimeMs:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x3e8

    div-long v16, v3, v14

    div-long v14, v16, v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->j:Lcom/hw/videoprocessor/g/d;

    invoke-virtual {v0, v3, v4}, Lcom/hw/videoprocessor/g/d;->e(J)V

    .line 74
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->j:Lcom/hw/videoprocessor/g/d;

    invoke-virtual {v0}, Lcom/hw/videoprocessor/g/d;->f()Z

    move v6, v11

    move/from16 v0, v23

    goto :goto_11

    :cond_1c
    const-wide/16 v12, -0x1

    move v6, v11

    move/from16 v0, v23

    :goto_f
    const/4 v5, 0x0

    const-wide/16 v12, 0x9c4

    const/4 v14, -0x1

    goto/16 :goto_3

    :cond_1d
    :goto_10
    const-wide/16 v12, -0x1

    :goto_11
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1e
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Video Decode Done!"

    .line 75
    invoke-static {v2, v0}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, v1, Lcom/hw/videoprocessor/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_1
    move-exception v0

    .line 77
    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    .line 78
    iput-object v0, v1, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hw/videoprocessor/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->j:Lcom/hw/videoprocessor/g/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/hw/videoprocessor/g/d;->d()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->k:Lcom/hw/videoprocessor/g/e;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/hw/videoprocessor/g/e;->d()V

    .line 7
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 9
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    if-nez v1, :cond_2

    :goto_0
    move-object v1, v0

    :cond_2
    iput-object v1, p0, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    .line 11
    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 12
    :try_start_2
    iput-object v0, p0, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    .line 13
    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->j:Lcom/hw/videoprocessor/g/d;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->j:Lcom/hw/videoprocessor/g/d;

    invoke-virtual {v0}, Lcom/hw/videoprocessor/g/d;->d()V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->k:Lcom/hw/videoprocessor/g/e;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/hw/videoprocessor/g/e;->d()V

    .line 18
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 20
    iget-object v0, p0, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    .line 22
    :goto_2
    iget-object v1, p0, Lcom/hw/videoprocessor/c;->j:Lcom/hw/videoprocessor/g/d;

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v1}, Lcom/hw/videoprocessor/g/d;->d()V

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/hw/videoprocessor/c;->k:Lcom/hw/videoprocessor/g/e;

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {v1}, Lcom/hw/videoprocessor/g/e;->d()V

    .line 26
    :cond_7
    :try_start_4
    iget-object v1, p0, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 28
    iget-object v1, p0, Lcom/hw/videoprocessor/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 29
    iget-object v2, p0, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    if-nez v2, :cond_8

    move-object v2, v1

    :cond_8
    iput-object v2, p0, Lcom/hw/videoprocessor/c;->g:Ljava/lang/Exception;

    .line 30
    invoke-static {v1}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    .line 31
    :cond_9
    :goto_3
    throw v0
.end method
