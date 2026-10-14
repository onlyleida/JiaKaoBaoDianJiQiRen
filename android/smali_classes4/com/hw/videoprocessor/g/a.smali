.class public Lcom/hw/videoprocessor/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hw/videoprocessor/g/a;->a:Ljava/util/Map;

    const v1, 0x17700

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x15888

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xfa00

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xbb80

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xac44

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d00

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5dc0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5622

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e80

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee0

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b11

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f40

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1cb6

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/media/MediaFormat;III)V
    .locals 3

    .line 1
    sget-object v0, Lcom/hw/videoprocessor/g/a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    shl-int/lit8 p1, p1, 0x3

    shr-int/lit8 v2, p2, 0x1

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    and-int/2addr p2, p1

    shl-int/lit8 p2, p2, 0x7

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p2, p3

    int-to-byte p2, p2

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const-string p1, "csd-0"

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static b(Landroid/media/MediaFormat;)I
    .locals 2

    const-string v0, "bitrate"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x2ee00

    return p0
.end method

.method public static c(Landroid/media/MediaFormat;)I
    .locals 2

    const-string v0, "max-input-size"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x186a0

    return p0
.end method

.method public static d(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/lang/Integer;Ljava/lang/Integer;JLcom/hw/videoprocessor/g/i;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v2}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result v2

    .line 2
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    .line 4
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 5
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v5, "durationUs"

    .line 6
    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "max-input-size"

    .line 7
    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-wide/from16 v8, p5

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v12

    if-nez v14, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 13
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v10, v12

    long-to-float v12, v12

    if-nez p4, :cond_4

    move-wide v13, v5

    goto :goto_2

    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-long v13, v13

    :goto_2
    long-to-float v13, v13

    div-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v14, v12, v13

    if-gez v14, :cond_5

    const/4 v12, 0x0

    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v14, v12, v13

    if-lez v14, :cond_6

    const/high16 v12, 0x3f800000    # 1.0f

    .line 15
    :cond_6
    invoke-interface {v1, v12}, Lcom/hw/videoprocessor/g/i;->a(F)V

    .line 16
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    add-long v10, v10, p5

    iput-wide v10, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 17
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 18
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v10, :cond_8

    :goto_3
    return-wide v8

    .line 19
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeAudioSampleData,time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 20
    invoke-virtual {v8, v9, v2, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 21
    iget-wide v10, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 22
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    move-wide v8, v10

    goto/16 :goto_1
.end method

.method public static e(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/hw/videoprocessor/g/i;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/hw/videoprocessor/g/a;->d(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/lang/Integer;Ljava/lang/Integer;JLcom/hw/videoprocessor/g/i;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Landroid/content/Context;Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lcom/hw/videoprocessor/g/i;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p7

    const/4 v2, 0x1

    .line 1
    invoke-static {v1, v2}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result v3

    .line 2
    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const/4 v4, 0x0

    if-nez p4, :cond_0

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    .line 4
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x2

    invoke-virtual {v1, v6, v7, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 5
    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v6, "durationUs"

    .line 6
    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 7
    invoke-static {v3}, Lcom/hw/videoprocessor/g/a;->c(Landroid/media/MediaFormat;)I

    move-result v7

    .line 8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 9
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-string v12, "mime"

    .line 10
    invoke-virtual {v3, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v12

    const/4 v15, 0x0

    .line 11
    invoke-virtual {v12, v3, v15, v15, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 12
    invoke-virtual {v12}, Landroid/media/MediaCodec;->start()V

    .line 13
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".pcm"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const-string v15, "audio decode newFormat = "

    const-string v13, "unexpected result from audio decoder.dequeueOutputBuffer: "

    const/high16 v23, 0x3f000000    # 0.5f

    const-wide/16 v24, 0x3e8

    const-wide/16 v16, -0x1

    move-object/from16 v26, v3

    const-wide/16 v2, 0x9c4

    if-nez v9, :cond_d

    if-nez v10, :cond_5

    .line 15
    :try_start_0
    invoke-virtual {v12, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_5

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    cmp-long v18, v2, v16

    if-nez v18, :cond_1

    move/from16 v27, v9

    move/from16 v28, v10

    :goto_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    move/from16 v27, v9

    .line 17
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v28, v10

    int-to-long v9, v9

    cmp-long v16, v2, v9

    if-gez v16, :cond_2

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_9

    :cond_2
    if-eqz p5, :cond_3

    .line 19
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    cmp-long v16, v2, v9

    if-lez v16, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    const/4 v2, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x4

    move-object v9, v13

    move-object v13, v12

    move-object v10, v14

    move v14, v4

    move-object v3, v15

    const/4 v4, 0x0

    move v15, v2

    .line 20
    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move-object v1, v3

    const/16 v28, 0x1

    goto :goto_4

    :cond_4
    move-object v9, v13

    move-object v10, v14

    const/4 v13, 0x0

    .line 21
    invoke-virtual {v1, v7, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 22
    iput-wide v2, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    iput v2, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 24
    invoke-virtual {v12, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio decode queueInputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v13, v13, v24

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v2, v13}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v13, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v2, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-wide/from16 v17, v13

    move-object v13, v12

    const/4 v1, 0x0

    move v14, v4

    move-object v1, v15

    const/4 v4, 0x0

    move v15, v4

    move/from16 v16, v3

    move/from16 v19, v2

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_5
    move/from16 v27, v9

    move/from16 v28, v10

    move-object v9, v13

    move-object v10, v14

    move-object v1, v15

    :goto_4
    if-nez v27, :cond_c

    const-wide/16 v2, 0x9c4

    .line 29
    invoke-virtual {v12, v11, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v2, -0x1

    if-ne v4, v2, :cond_6

    goto/16 :goto_8

    :cond_6
    const/4 v2, -0x2

    if-ne v4, v2, :cond_7

    .line 30
    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-gez v4, :cond_8

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 33
    :cond_8
    iget v2, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    const/16 v27, 0x1

    goto :goto_6

    .line 34
    :cond_9
    invoke-virtual {v12, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "audio decode saveFrame "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v13, v13, v24

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v3, v14}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v8, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    if-eqz v0, :cond_b

    .line 37
    iget-wide v2, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v2, v13

    long-to-float v2, v2

    if-nez p5, :cond_a

    move-wide/from16 v13, v21

    goto :goto_5

    .line 38
    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v3, v13

    int-to-long v13, v3

    :goto_5
    long-to-float v3, v13

    div-float/2addr v2, v3

    mul-float v2, v2, v23

    .line 39
    invoke-interface {v0, v2}, Lcom/hw/videoprocessor/g/i;->a(F)V

    :cond_b
    const/4 v2, 0x0

    .line 40
    :goto_6
    invoke-virtual {v12, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 41
    :goto_7
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->release()V

    .line 43
    invoke-virtual {v12}, Landroid/media/MediaCodec;->release()V

    throw v0

    :cond_c
    :goto_8
    move-object/from16 v1, p1

    move-object v14, v10

    :goto_9
    move-object/from16 v3, v26

    move/from16 v9, v27

    move/from16 v10, v28

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_d
    move-object v9, v13

    move-object v10, v14

    move-object v1, v15

    .line 44
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->release()V

    .line 46
    invoke-virtual {v12}, Landroid/media/MediaCodec;->release()V

    const-string v2, "sample-rate"

    move-object/from16 v3, v26

    .line 47
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v4, "channel-count"

    .line 48
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 49
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".wav"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v12, 0x10

    const/4 v13, 0x2

    if-ne v7, v13, :cond_e

    const/16 v12, 0xc

    .line 50
    :cond_e
    new-instance v14, Lcom/hw/videoprocessor/g/f;

    invoke-direct {v14, v2, v12, v7, v13}, Lcom/hw/videoprocessor/g/f;-><init>(IIII)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v7, v12}, Lcom/hw/videoprocessor/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v12, v7, [Ljava/lang/Object;

    const-string v7, "start process pcm speed"

    .line 51
    invoke-static {v7, v12}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".outpcm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    new-instance v12, Lnet/surina/soundtouch/SoundTouch;

    invoke-direct {v12}, Lnet/surina/soundtouch/SoundTouch;-><init>()V

    .line 54
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v12, v13}, Lnet/surina/soundtouch/SoundTouch;->b(F)V

    .line 55
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lnet/surina/soundtouch/SoundTouch;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_f

    .line 56
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 58
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    return-void

    .line 59
    :cond_f
    new-instance v12, Landroid/media/MediaExtractor;

    invoke-direct {v12}, Landroid/media/MediaExtractor;-><init>()V

    .line 60
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 61
    invoke-static {v12, v13}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result v14

    .line 62
    invoke-virtual {v12, v14}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 63
    invoke-virtual {v12, v14}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    .line 64
    invoke-static {v13}, Lcom/hw/videoprocessor/g/a;->c(Landroid/media/MediaFormat;)I

    move-result v14

    .line 65
    invoke-virtual {v13, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 66
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-string v13, "audio/mp4a-latm"

    .line 67
    invoke-static {v3}, Lcom/hw/videoprocessor/g/a;->b(Landroid/media/MediaFormat;)I

    move-result v15

    .line 68
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 69
    invoke-static {v13, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "bitrate"

    .line 70
    invoke-virtual {v3, v4, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "aac-profile"

    const/4 v15, 0x2

    .line 71
    invoke-virtual {v3, v4, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "max-input-size"

    .line 72
    invoke-virtual {v3, v4, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 73
    invoke-static {v13}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 74
    invoke-virtual {v4, v3, v14, v14, v13}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 75
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    const/high16 v3, 0x3d090000

    .line 76
    div-int/2addr v3, v2

    move-wide/from16 v21, v16

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_a
    if-nez v2, :cond_1e

    move/from16 p1, v2

    move/from16 p0, v14

    const-wide/16 v13, 0x9c4

    .line 77
    :try_start_1
    invoke-virtual {v4, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v13, " size:"

    if-nez p0, :cond_11

    if-ltz v2, :cond_11

    .line 78
    :try_start_2
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v31

    const-wide/16 v27, 0x0

    cmp-long v14, v31, v27

    if-gez v14, :cond_10

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x4

    move-object/from16 v27, v4

    move/from16 v28, v2

    .line 79
    invoke-virtual/range {v27 .. v33}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move/from16 p0, v3

    move-object/from16 p6, v6

    move-object/from16 v26, v7

    move-object v14, v8

    move-wide/from16 v6, v21

    const/16 p4, 0x1

    goto :goto_c

    .line 80
    :cond_10
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v33

    .line 81
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 p4, v15

    const/4 v14, 0x0

    .line 82
    invoke-virtual {v12, v6, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    .line 83
    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 84
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 p6, v6

    const/4 v6, 0x0

    .line 86
    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audio queuePcmBuffer "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v26, v7

    move-object v14, v8

    :try_start_3
    div-long v7, v31, v24

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v29, 0x0

    move-object/from16 v27, v4

    move/from16 v28, v2

    move/from16 v30, v15

    .line 88
    invoke-virtual/range {v27 .. v33}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 89
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_b

    :cond_11
    move-object/from16 p6, v6

    move-object/from16 v26, v7

    move-object v14, v8

    move/from16 p4, v15

    :goto_b
    move/from16 v15, p4

    move-wide/from16 v6, v21

    move/from16 p4, p0

    move/from16 p0, v3

    :goto_c
    const-wide/16 v2, 0x9c4

    .line 90
    invoke-virtual {v4, v11, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    const/4 v2, -0x1

    if-ne v8, v2, :cond_12

    move/from16 v2, p1

    const/4 v3, 0x4

    goto :goto_e

    :cond_12
    const/4 v3, -0x2

    if-ne v8, v3, :cond_13

    .line 91
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_13
    if-gez v8, :cond_14

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v2, v8}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d
    move/from16 v3, p0

    move-object/from16 v21, v1

    move-object v1, v9

    move-object/from16 v22, v10

    move-object/from16 v20, v11

    move-object/from16 p0, v12

    move-object/from16 v27, v13

    const/4 v2, 0x0

    move-object/from16 v9, p2

    move/from16 v12, p3

    goto/16 :goto_12

    .line 94
    :cond_14
    iget v2, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    :goto_e
    move/from16 v3, p0

    move-wide/from16 v21, v6

    move-object v8, v14

    move-object/from16 v7, v26

    const/4 v13, 0x1

    move/from16 v14, p4

    move-object/from16 v6, p6

    goto/16 :goto_a

    .line 95
    :cond_15
    invoke-virtual {v4, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v1

    const-string v1, "audio writeSampleData "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, v9

    move-object/from16 v22, v10

    :try_start_4
    iget-wide v9, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " flags:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v3, v10}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v15, :cond_16

    cmp-long v3, v6, v16

    if-eqz v3, :cond_16

    .line 97
    iget-wide v9, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v3, p0

    move-object/from16 p0, v12

    move-object/from16 v27, v13

    int-to-long v12, v3

    add-long/2addr v12, v6

    cmp-long v28, v9, v12

    if-gez v28, :cond_17

    .line 98
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio \u65f6\u95f4\u6233\u9519\u8bef\uff0clastAudioFrameTimeUs:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " info.presentationTimeUs:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v9, v12}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x1

    goto :goto_f

    :cond_16
    move/from16 v3, p0

    move-object/from16 p0, v12

    move-object/from16 v27, v13

    :cond_17
    move v13, v15

    :goto_f
    if-eqz v13, :cond_18

    int-to-long v9, v3

    add-long/2addr v9, v6

    .line 99
    iput-wide v9, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio \u65f6\u95f4\u6233\u9519\u8bef\uff0c\u4f7f\u7528\u4fee\u6b63\u7684\u65f6\u95f4\u6233:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v9, v12}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x0

    .line 101
    :cond_18
    iget v9, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_19

    .line 102
    iget-wide v6, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_19
    move-object/from16 v9, p2

    move/from16 v12, p3

    .line 103
    invoke-virtual {v9, v12, v2, v11}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    if-eqz v0, :cond_1d

    move-wide/from16 v28, v6

    .line 104
    iget-wide v6, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v20, v11

    int-to-long v10, v15

    sub-long/2addr v6, v10

    long-to-float v6, v6

    if-nez p5, :cond_1a

    move-wide/from16 v10, v18

    goto :goto_10

    .line 105
    :cond_1a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v7, v10

    int-to-long v10, v7

    :goto_10
    long-to-float v7, v10

    div-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v10, v6, v7

    if-gez v10, :cond_1b

    const/4 v6, 0x0

    :cond_1b
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v10, v6, v7

    if-lez v10, :cond_1c

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_1c
    mul-float v6, v6, v23

    add-float v6, v6, v23

    .line 106
    invoke-interface {v0, v6}, Lcom/hw/videoprocessor/g/i;->a(F)V

    goto :goto_11

    :cond_1d
    move-wide/from16 v28, v6

    move-object/from16 v20, v11

    .line 107
    :goto_11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v4, v8, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v15, v13

    move-wide/from16 v6, v28

    :goto_12
    move-object/from16 v12, p0

    move-object v9, v1

    move/from16 p0, v3

    move-object/from16 v11, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v13, v27

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    goto :goto_15

    :catchall_2
    move-exception v0

    goto :goto_14

    :catchall_3
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 v26, v7

    move-object v14, v8

    :goto_13
    move-object/from16 v22, v10

    :goto_14
    move-object/from16 p0, v12

    .line 109
    :goto_15
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 110
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 111
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->release()V

    .line 113
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    throw v0

    :cond_1e
    move-object/from16 v26, v7

    move-object v14, v8

    move-object/from16 v22, v10

    move-object/from16 p0, v12

    .line 114
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 115
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 116
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->release()V

    .line 118
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    return-void
.end method
