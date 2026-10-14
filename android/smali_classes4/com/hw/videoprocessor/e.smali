.class public Lcom/hw/videoprocessor/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hw/videoprocessor/e$a;,
        Lcom/hw/videoprocessor/e$b;
    }
.end annotation


# static fields
.field public static a:I = 0x14

.field public static b:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/hw/videoprocessor/e$b;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->a(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/e$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hw/videoprocessor/e$a;->b(Landroid/media/MediaMetadataRetriever;)V

    const/16 v2, 0x12

    .line 3
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13

    .line 4
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5
    sget v4, Lcom/hw/videoprocessor/e;->b:I

    const/16 v5, 0x14

    .line 6
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    const/16 v5, 0x9

    .line 8
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 9
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->b(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hw/videoprocessor/e$b;->d(Lcom/hw/videoprocessor/e$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 12
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->h(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hw/videoprocessor/e$b;->i(Lcom/hw/videoprocessor/e$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 14
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->j(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->j(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 15
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->k(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->k(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 16
    :goto_1
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    :goto_2
    move v10, v2

    .line 17
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    :goto_3
    move v11, v3

    .line 18
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->a(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/e$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hw/videoprocessor/e$a;->a(Landroid/media/MediaExtractor;)V

    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result v3

    .line 21
    invoke-static {v1, v4}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result v6

    .line 22
    new-instance v15, Landroid/media/MediaMuxer;

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->l(Lcom/hw/videoprocessor/e$b;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->m(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_7

    const/16 v24, 0x1

    goto :goto_4

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->m(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move/from16 v24, v7

    .line 24
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v14, 0x2

    if-ltz v6, :cond_13

    .line 25
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 26
    invoke-static {v6}, Lcom/hw/videoprocessor/g/a;->b(Landroid/media/MediaFormat;)I

    move-result v8

    const-string v9, "channel-count"

    .line 27
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    const-string v12, "sample-rate"

    .line 28
    invoke-virtual {v6, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    .line 29
    invoke-static {v6}, Lcom/hw/videoprocessor/g/a;->c(Landroid/media/MediaFormat;)I

    move-result v13

    const-string v4, "audio/mp4a-latm"

    .line 30
    invoke-static {v4, v12, v9}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v2, "bitrate"

    .line 31
    invoke-virtual {v4, v2, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "aac-profile"

    .line 32
    invoke-virtual {v4, v2, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "max-input-size"

    .line 33
    invoke-virtual {v4, v2, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "durationUs"

    if-eqz v24, :cond_c

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v18, v15

    goto :goto_7

    .line 35
    :cond_9
    :goto_5
    invoke-virtual {v6, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v6, v8

    mul-int/lit16 v6, v6, 0x3e8

    move-object/from16 v18, v15

    int-to-long v14, v6

    goto :goto_6

    :cond_a
    move-object/from16 v18, v15

    move-wide/from16 v14, v16

    .line 38
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_b

    long-to-float v6, v14

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v6, v8

    float-to-long v14, v6

    .line 40
    :cond_b
    invoke-virtual {v4, v2, v14, v15}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    goto :goto_7

    :cond_c
    move-object/from16 v18, v15

    mul-int/lit16 v8, v5, 0x3e8

    int-to-long v13, v8

    .line 41
    invoke-virtual {v6, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v2, 0x2

    goto :goto_b

    .line 43
    :cond_e
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v13, v6

    .line 45
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_10

    long-to-float v6, v13

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v6, v7

    float-to-long v13, v6

    :cond_10
    cmp-long v6, v13, v15

    if-gez v6, :cond_11

    goto :goto_9

    :cond_11
    move-wide v13, v15

    .line 47
    :goto_9
    invoke-virtual {v4, v2, v13, v14}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_a
    const-wide/16 v6, 0x3e8

    div-long/2addr v13, v6

    long-to-int v6, v13

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    .line 49
    :goto_b
    invoke-static {v4, v2, v12, v9}, Lcom/hw/videoprocessor/g/a;->a(Landroid/media/MediaFormat;III)V

    move-object/from16 v15, v18

    .line 50
    invoke-virtual {v15, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    move/from16 v25, v4

    move-object v4, v7

    goto :goto_c

    :cond_13
    const/4 v2, 0x2

    move-object v4, v7

    const/16 v25, 0x0

    .line 51
    :goto_c
    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 53
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_d

    :cond_14
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 54
    invoke-virtual {v1, v6, v7, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 55
    :goto_d
    new-instance v14, Lcom/hw/videoprocessor/g/h;

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->c(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/g/i;

    move-result-object v6

    invoke-direct {v14, v6}, Lcom/hw/videoprocessor/g/h;-><init>(Lcom/hw/videoprocessor/g/i;)V

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/hw/videoprocessor/g/h;->d(Ljava/lang/Float;)V

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_15

    const/4 v6, 0x0

    goto :goto_e

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_e
    invoke-virtual {v14, v6}, Lcom/hw/videoprocessor/g/h;->e(I)V

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_16

    goto :goto_f

    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_f
    invoke-virtual {v14, v5}, Lcom/hw/videoprocessor/g/h;->c(I)V

    .line 59
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v13, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 61
    new-instance v12, Lcom/hw/videoprocessor/d;

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->b(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->h(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->e(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_17

    sget v6, Lcom/hw/videoprocessor/e;->a:I

    goto :goto_10

    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->e(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_10
    move/from16 v17, v6

    move-object v6, v12

    move-object v7, v1

    move-object v8, v15

    move-object/from16 v26, v12

    move/from16 v12, v16

    move-object/from16 v27, v13

    move/from16 v13, v17

    move-object v2, v14

    const/4 v0, 0x2

    move v14, v3

    move-object/from16 v28, v15

    move-object v15, v5

    move-object/from16 v16, v27

    invoke-direct/range {v6 .. v16}, Lcom/hw/videoprocessor/d;-><init>(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;IIIIIILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->a(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/e$a;

    move-result-object v6

    invoke-static {v6}, Lcom/hw/videoprocessor/f;->b(Lcom/hw/videoprocessor/e$a;)I

    move-result v6

    if-gtz v6, :cond_18

    .line 64
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->a(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/e$a;

    move-result-object v6

    invoke-static {v6}, Lcom/hw/videoprocessor/f;->a(Lcom/hw/videoprocessor/e$a;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 65
    :cond_18
    new-instance v7, Lcom/hw/videoprocessor/c;

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->f(Lcom/hw/videoprocessor/e$b;)Ljava/util/List;

    move-result-object v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 66
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->e(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_19

    sget v6, Lcom/hw/videoprocessor/e;->a:I

    goto :goto_11

    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->e(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->g(Lcom/hw/videoprocessor/e$b;)Z

    move-result v21

    move-object v12, v7

    move-object/from16 v13, v26

    move-object v14, v1

    move/from16 v22, v3

    move-object/from16 v23, v5

    invoke-direct/range {v12 .. v23}, Lcom/hw/videoprocessor/c;-><init>(Lcom/hw/videoprocessor/b;Landroid/media/MediaExtractor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;ZILjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 67
    new-instance v3, Lcom/hw/videoprocessor/a;

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->a(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/e$a;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v24, :cond_1a

    .line 68
    invoke-static/range {p1 .. p1}, Lcom/hw/videoprocessor/e$b;->p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;

    move-result-object v5

    goto :goto_12

    :cond_1a
    const/4 v5, 0x0

    :goto_12
    move-object/from16 v18, v5

    move-object v12, v3

    move-object/from16 v13, p0

    move-object/from16 v15, v28

    move-object/from16 v17, v4

    move/from16 v19, v25

    move-object/from16 v20, v27

    invoke-direct/range {v12 .. v20}, Lcom/hw/videoprocessor/a;-><init>(Landroid/content/Context;Lcom/hw/videoprocessor/e$a;Landroid/media/MediaMuxer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;ILjava/util/concurrent/CountDownLatch;)V

    move-object/from16 v4, v26

    .line 69
    invoke-virtual {v4, v2}, Lcom/hw/videoprocessor/d;->e(Lcom/hw/videoprocessor/g/h;)V

    .line 70
    invoke-virtual {v3, v2}, Lcom/hw/videoprocessor/a;->d(Lcom/hw/videoprocessor/g/h;)V

    .line 71
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 72
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 73
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 74
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 75
    invoke-virtual {v7}, Ljava/lang/Thread;->join()V

    .line 76
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 78
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v2, "\u7f16\u89e3\u7801:%dms,\u97f3\u9891:%dms"

    new-array v0, v0, [Ljava/lang/Object;

    sub-long/2addr v8, v5

    .line 80
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v0, v9

    sub-long/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/hw/videoprocessor/g/b;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 82
    :goto_13
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaMuxer;->release()V

    .line 83
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_14

    :catch_1
    move-exception v0

    .line 84
    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    .line 85
    :goto_14
    invoke-virtual {v4}, Lcom/hw/videoprocessor/d;->c()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 86
    invoke-virtual {v7}, Lcom/hw/videoprocessor/c;->b()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 87
    invoke-virtual {v3}, Lcom/hw/videoprocessor/a;->c()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    .line 88
    :cond_1b
    invoke-virtual {v3}, Lcom/hw/videoprocessor/a;->c()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 89
    :cond_1c
    invoke-virtual {v7}, Lcom/hw/videoprocessor/c;->b()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 90
    :cond_1d
    invoke-virtual {v4}, Lcom/hw/videoprocessor/d;->c()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/hw/videoprocessor/e$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/hw/videoprocessor/e$b;

    invoke-direct {v0, p0}, Lcom/hw/videoprocessor/e$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
