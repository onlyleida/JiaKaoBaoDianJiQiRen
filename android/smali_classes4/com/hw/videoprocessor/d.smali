.class public Lcom/hw/videoprocessor/d;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/hw/videoprocessor/b;


# instance fields
.field private a:Landroid/media/MediaCodec;

.field private b:Landroid/media/MediaMuxer;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Ljava/lang/Exception;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/media/MediaExtractor;

.field private l:I

.field private volatile m:Ljava/util/concurrent/CountDownLatch;

.field private volatile n:Landroid/view/Surface;

.field private o:Lcom/hw/videoprocessor/g/h;

.field private volatile p:J


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;IIIIIILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    const-string v0, "VideoProcessEncodeThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/hw/videoprocessor/d;->p:J

    .line 3
    iput-object p2, p0, Lcom/hw/videoprocessor/d;->b:Landroid/media/MediaMuxer;

    .line 4
    iput-object p9, p0, Lcom/hw/videoprocessor/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-object p10, p0, Lcom/hw/videoprocessor/d;->d:Ljava/util/concurrent/CountDownLatch;

    .line 6
    iput-object p1, p0, Lcom/hw/videoprocessor/d;->k:Landroid/media/MediaExtractor;

    .line 7
    iput p3, p0, Lcom/hw/videoprocessor/d;->f:I

    .line 8
    iput p5, p0, Lcom/hw/videoprocessor/d;->h:I

    .line 9
    iput p4, p0, Lcom/hw/videoprocessor/d;->g:I

    .line 10
    iput p6, p0, Lcom/hw/videoprocessor/d;->i:I

    .line 11
    iput p8, p0, Lcom/hw/videoprocessor/d;->l:I

    .line 12
    iput p7, p0, Lcom/hw/videoprocessor/d;->j:I

    .line 13
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/hw/videoprocessor/d;->m:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private b()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/hw/videoprocessor/d;->k:Landroid/media/MediaExtractor;

    iget v2, v0, Lcom/hw/videoprocessor/d;->l:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/hw/videoprocessor/d;->j:I

    const-string v3, "frame-rate"

    if-lez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/hw/videoprocessor/e;->a:I

    :goto_0
    move v2, v1

    :goto_1
    const-string v1, "video/avc"

    .line 4
    iget v4, v0, Lcom/hw/videoprocessor/d;->g:I

    iget v5, v0, Lcom/hw/videoprocessor/d;->h:I

    invoke-static {v1, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    const v5, 0x7f000789

    const-string v6, "color-format"

    .line 5
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v4, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    iget v3, v0, Lcom/hw/videoprocessor/d;->i:I

    const-string v5, "i-frame-interval"

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    const/16 v5, 0x8

    const/16 v6, 0x200

    .line 9
    invoke-static {v3, v1, v4, v5, v6}, Lcom/hw/videoprocessor/f;->e(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;II)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "supportProfileHigh,enable ProfileHigh"

    .line 10
    invoke-static {v6, v3}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_2
    iget-object v3, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-static {v3, v1}, Lcom/hw/videoprocessor/f;->c(Landroid/media/MediaCodec;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 12
    iget v3, v0, Lcom/hw/videoprocessor/d;->f:I

    if-le v3, v1, :cond_3

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/hw/videoprocessor/d;->f:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bitrate too large,set to:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v1, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 14
    iput v1, v0, Lcom/hw/videoprocessor/d;->f:I

    .line 15
    :cond_3
    iget v1, v0, Lcom/hw/videoprocessor/d;->f:I

    const-string v3, "bitrate"

    invoke-virtual {v4, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    iget-object v1, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v3, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 17
    iget-object v1, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lcom/hw/videoprocessor/d;->n:Landroid/view/Surface;

    .line 18
    iget-object v1, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 19
    iget-object v1, v0, Lcom/hw/videoprocessor/d;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const v3, 0x49742400    # 1000000.0f

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, -0x5

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x5

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    .line 21
    :goto_2
    iget-object v14, v0, Lcom/hw/videoprocessor/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v4, :cond_4

    .line 22
    iget-object v4, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/4 v4, 0x1

    .line 23
    :cond_4
    iget-object v14, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x9c4

    invoke-virtual {v14, v1, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encode outputBufferIndex = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v8, v14}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, -0x1

    if-eqz v4, :cond_5

    if-ne v7, v8, :cond_5

    add-int/2addr v9, v6

    const/16 v14, 0xa

    if-le v9, v14, :cond_6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "INFO_TRY_AGAIN_LATER 10 times,force End!"

    .line 25
    invoke-static {v2, v1}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    const/4 v9, 0x0

    :cond_6
    if-ne v7, v8, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, -0x2

    if-ne v7, v8, :cond_9

    .line 26
    iget-object v7, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    if-ne v10, v3, :cond_8

    .line 27
    iget-object v8, v0, Lcom/hw/videoprocessor/d;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v8, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v10

    .line 28
    iget-object v8, v0, Lcom/hw/videoprocessor/d;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v8}, Landroid/media/MediaMuxer;->start()V

    .line 29
    iget-object v8, v0, Lcom/hw/videoprocessor/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 30
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encode newFormat = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    if-gez v7, :cond_a

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move v14, v4

    goto/16 :goto_6

    .line 32
    :cond_a
    iget-object v8, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v8, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 33
    iget v14, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x4

    if-ne v14, v3, :cond_b

    move v14, v4

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v16, v7

    const-wide/16 v6, 0x0

    cmp-long v17, v3, v6

    if-gez v17, :cond_c

    .line 34
    iput-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_4

    :cond_b
    move v14, v4

    move/from16 v16, v7

    :cond_c
    :goto_4
    if-nez v11, :cond_d

    const-wide/16 v3, -0x1

    cmp-long v6, v12, v3

    if-eqz v6, :cond_d

    .line 35
    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-int/lit8 v6, v2, 0x2

    int-to-long v6, v6

    add-long/2addr v6, v12

    cmp-long v17, v3, v6

    if-gez v17, :cond_d

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video \u65f6\u95f4\u6233\u9519\u8bef\uff0clastVideoFrameTimeUs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " info.presentationTimeUs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " VIDEO_FRAME_TIME_US:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x1

    :cond_d
    if-eqz v11, :cond_e

    int-to-long v3, v2

    add-long/2addr v3, v12

    .line 37
    iput-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video \u65f6\u95f4\u6233\u9519\u8bef\uff0c\u4f7f\u7528\u4fee\u6b63\u7684\u65f6\u95f4\u6233:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x0

    .line 39
    :cond_e
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    .line 40
    iget-wide v12, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 41
    :cond_f
    iget-wide v3, v0, Lcom/hw/videoprocessor/d;->p:J

    const-wide/16 v6, -0x1

    cmp-long v15, v3, v6

    if-eqz v15, :cond_10

    .line 42
    iget-wide v3, v0, Lcom/hw/videoprocessor/d;->p:J

    iput-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 43
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeSampleData,size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v17, 0x3e8

    div-long v6, v6, v17

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v3, v0, Lcom/hw/videoprocessor/d;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v10, v8, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 45
    invoke-direct {v0, v1}, Lcom/hw/videoprocessor/d;->d(Landroid/media/MediaCodec$BufferInfo;)V

    .line 46
    iget-object v3, v0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    move/from16 v4, v16

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 47
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "encoderDone"

    .line 48
    invoke-static {v2, v1}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Video Encode Done!"

    .line 49
    invoke-static {v2, v1}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_11
    :goto_6
    move v4, v14

    const/4 v3, -0x5

    const/4 v6, 0x1

    goto/16 :goto_2
.end method

.method private d(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->o:Lcom/hw/videoprocessor/g/h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/hw/videoprocessor/g/h;->b(J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->m:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public c()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->e:Ljava/lang/Exception;

    return-object v0
.end method

.method public e(Lcom/hw/videoprocessor/g/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hw/videoprocessor/d;->o:Lcom/hw/videoprocessor/g/h;

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->n:Landroid/view/Surface;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hw/videoprocessor/d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 5
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/hw/videoprocessor/d;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v0

    :cond_0
    iput-object v1, p0, Lcom/hw/videoprocessor/d;->e:Ljava/lang/Exception;

    .line 7
    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 8
    :try_start_2
    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    .line 9
    iput-object v0, p0, Lcom/hw/videoprocessor/d;->e:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 12
    iget-object v0, p0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/hw/videoprocessor/d;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 14
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 16
    iget-object v1, p0, Lcom/hw/videoprocessor/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 17
    iget-object v2, p0, Lcom/hw/videoprocessor/d;->e:Ljava/lang/Exception;

    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    iput-object v2, p0, Lcom/hw/videoprocessor/d;->e:Ljava/lang/Exception;

    .line 18
    invoke-static {v1}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    .line 19
    :cond_3
    :goto_3
    throw v0
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hw/videoprocessor/d;->p:J

    return-void
.end method
