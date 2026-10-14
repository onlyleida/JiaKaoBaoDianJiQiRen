.class public Lcom/hw/videoprocessor/a;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/hw/videoprocessor/g/i;


# instance fields
.field private a:Lcom/hw/videoprocessor/e$a;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Float;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/Exception;

.field private g:Landroid/media/MediaMuxer;

.field private h:I

.field private i:Landroid/media/MediaExtractor;

.field private j:Ljava/util/concurrent/CountDownLatch;

.field private k:Lcom/hw/videoprocessor/g/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hw/videoprocessor/e$a;Landroid/media/MediaMuxer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;ILjava/util/concurrent/CountDownLatch;)V
    .locals 1

    const-string v0, "VideoProcessDecodeThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/hw/videoprocessor/a;->a:Lcom/hw/videoprocessor/e$a;

    .line 3
    iput-object p4, p0, Lcom/hw/videoprocessor/a;->b:Ljava/lang/Integer;

    .line 4
    iput-object p5, p0, Lcom/hw/videoprocessor/a;->c:Ljava/lang/Integer;

    .line 5
    iput-object p6, p0, Lcom/hw/videoprocessor/a;->d:Ljava/lang/Float;

    .line 6
    iput-object p3, p0, Lcom/hw/videoprocessor/a;->g:Landroid/media/MediaMuxer;

    .line 7
    iput-object p1, p0, Lcom/hw/videoprocessor/a;->e:Landroid/content/Context;

    .line 8
    iput p7, p0, Lcom/hw/videoprocessor/a;->h:I

    .line 9
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    .line 10
    iput-object p8, p0, Lcom/hw/videoprocessor/a;->j:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private b()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/a;->a:Lcom/hw/videoprocessor/e$a;

    iget-object v1, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/hw/videoprocessor/e$a;->a(Landroid/media/MediaExtractor;)V

    .line 2
    iget-object v0, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_7

    .line 3
    iget-object v2, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 4
    iget-object v2, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "mime"

    .line 5
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "audio/mp4a-latm"

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/hw/videoprocessor/a;->b:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/hw/videoprocessor/a;->c:Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    move-object v10, v3

    .line 8
    iget-object v2, p0, Lcom/hw/videoprocessor/a;->j:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    iget-object v2, p0, Lcom/hw/videoprocessor/a;->d:Ljava/lang/Float;

    if-nez v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    iget-object v6, p0, Lcom/hw/videoprocessor/a;->g:Landroid/media/MediaMuxer;

    iget v7, p0, Lcom/hw/videoprocessor/a;->h:I

    move-object v8, v9

    move-object v9, v10

    move-object v10, p0

    invoke-static/range {v5 .. v10}, Lcom/hw/videoprocessor/g/a;->e(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/hw/videoprocessor/g/i;)J

    goto :goto_5

    .line 11
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/hw/videoprocessor/a;->e:Landroid/content/Context;

    iget-object v6, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcom/hw/videoprocessor/a;->g:Landroid/media/MediaMuxer;

    iget v8, p0, Lcom/hw/videoprocessor/a;->h:I

    iget-object v0, p0, Lcom/hw/videoprocessor/a;->d:Ljava/lang/Float;

    if-nez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    .line 12
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object v12, p0

    .line 13
    invoke-static/range {v5 .. v12}, Lcom/hw/videoprocessor/g/a;->f(Landroid/content/Context;Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lcom/hw/videoprocessor/g/i;)V

    goto :goto_5

    .line 14
    :cond_6
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "wait muxerStartLatch timeout!"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/hw/videoprocessor/a;->k:Lcom/hw/videoprocessor/g/h;

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0, v1}, Lcom/hw/videoprocessor/g/h;->a(F)V

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Audio Process Done!"

    .line 17
    invoke-static {v1, v0}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/a;->k:Lcom/hw/videoprocessor/g/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/hw/videoprocessor/g/h;->a(F)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/a;->f:Ljava/lang/Exception;

    return-object v0
.end method

.method public d(Lcom/hw/videoprocessor/g/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hw/videoprocessor/a;->k:Lcom/hw/videoprocessor/g/h;

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hw/videoprocessor/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    iput-object v0, p0, Lcom/hw/videoprocessor/a;->f:Ljava/lang/Exception;

    .line 5
    invoke-static {v0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 6
    :goto_2
    iget-object v1, p0, Lcom/hw/videoprocessor/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    throw v0
.end method
