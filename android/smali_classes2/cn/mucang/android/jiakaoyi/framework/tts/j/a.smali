.class public Lcn/mucang/android/jiakaoyi/framework/tts/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3e80

    const/4 v1, 0x1

    const/16 v2, 0x20

    .line 1
    invoke-static {v0, v1, v0, v2}, Lcom/buihha/audiorecorder/SimpleLame;->a(IIII)V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/m;->j(Ljava/io/File;)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    array-length v3, v0

    if-ge v3, v1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : \u5b57\u8282\u957f\u5ea6:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "mp3"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    array-length p0, v0

    div-int/lit8 p0, p0, 0x2

    new-array v3, p0, [S

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_1

    mul-int/lit8 v5, v4, 0x2

    .line 6
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide v4, 0x40bc200000000000L    # 7200.0

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    int-to-double v8, p0

    mul-double v8, v8, v6

    add-double/2addr v8, v4

    double-to-int v0, v8

    .line 7
    new-array v0, v0, [B

    .line 8
    :try_start_0
    invoke-static {v3, v3, p0, v0}, Lcom/buihha/audiorecorder/SimpleLame;->encode([S[SI[B)I

    move-result p0

    .line 9
    invoke-static {v0}, Lcom/buihha/audiorecorder/SimpleLame;->flush([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    invoke-static {}, Lcom/buihha/audiorecorder/SimpleLame;->close()V

    const/4 v3, 0x0

    .line 11
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-virtual {v4, v0, v2, p0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 13
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-static {v4}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 15
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mp3\u6587\u4ef6\u5199\u5165\u51fa\u9519:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    invoke-static {v3}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return v2

    :catchall_2
    move-exception p0

    invoke-static {v3}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p0

    :catchall_3
    move-exception p0

    .line 18
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pcm\u8f6cmp3\u51fa\u9519:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 19
    invoke-static {}, Lcom/buihha/audiorecorder/SimpleLame;->close()V

    return v2

    :catchall_4
    move-exception p0

    invoke-static {}, Lcom/buihha/audiorecorder/SimpleLame;->close()V

    throw p0

    :cond_2
    :goto_2
    return v2
.end method
