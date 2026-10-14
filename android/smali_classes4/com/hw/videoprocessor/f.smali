.class public Lcom/hw/videoprocessor/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hw/videoprocessor/e$a;)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hw/videoprocessor/e$a;->a(Landroid/media/MediaExtractor;)V

    const/4 p0, 0x0

    .line 3
    invoke-static {v0, p0}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    int-to-float p0, p0

    long-to-float v0, v3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 7
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-wide v3, v5

    goto :goto_0
.end method

.method public static b(Lcom/hw/videoprocessor/e$a;)I
    .locals 4

    const-string v0, "frame-rate"

    .line 1
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hw/videoprocessor/e$a;->a(Landroid/media/MediaExtractor;)V

    const/4 p0, 0x0

    .line 3
    invoke-static {v1, p0}, Lcom/hw/videoprocessor/f;->d(Landroid/media/MediaExtractor;Z)I

    move-result p0

    .line 4
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    :try_start_1
    invoke-static {p0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return v2

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    throw p0
.end method

.method public static c(Landroid/media/MediaCodec;Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/hw/videoprocessor/g/b;->c(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static d(Landroid/media/MediaExtractor;Z)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 3
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "audio/"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_0
    const-string v3, "video/"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x5

    return p0
.end method

.method public static e(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;II)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 5
    iget v3, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v3, p3, :cond_1

    .line 6
    iget v2, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ne v2, p4, :cond_1

    const-string p0, "profile"

    .line 7
    invoke-virtual {p2, p0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 8
    invoke-virtual {p2, p0, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method
