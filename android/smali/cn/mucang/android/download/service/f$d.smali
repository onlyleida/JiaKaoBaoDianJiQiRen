.class Lcn/mucang/android/download/service/f$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/service/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lcn/mucang/android/download/service/f;

.field private d:Lcn/mucang/android/download/service/f$c;


# direct methods
.method public constructor <init>(Lcn/mucang/android/download/service/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/download/service/f$d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/download/service/f$d;->b:Z

    return p1
.end method

.method static synthetic b(Lcn/mucang/android/download/service/f$d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/download/service/f$d;->a:Z

    return p1
.end method

.method private c(Lcn/mucang/android/download/DownloadEntity;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private d(Ljava/io/Closeable;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Lcn/mucang/android/download/service/f$d$a;

    invoke-direct {p2, p0, p1}, Lcn/mucang/android/download/service/f$d$a;-><init>(Lcn/mucang/android/download/service/f$d;Ljava/io/Closeable;)V

    invoke-static {p2}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/download/service/f$c;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Exception"

    .line 1
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/16 v4, 0x8

    invoke-static {v0, v2, v4}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    .line 2
    iget-object v4, v2, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 3
    :try_start_0
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v0}, Lcn/mucang/android/download/service/f;->i(Lcn/mucang/android/download/service/f;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 4
    iget-object v5, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v5, v0, v4}, Lcn/mucang/android/download/service/f;->j(Lcn/mucang/android/download/service/f;Lokhttp3/OkHttpClient;Lcn/mucang/android/download/DownloadEntity;)Lokhttp3/Response;

    move-result-object v5

    .line 5
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v0}, Lcn/mucang/android/download/service/f;->k(Lcn/mucang/android/download/service/f;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "ETag"

    .line 6
    invoke-virtual {v5, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 8
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getEtag()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 10
    invoke-virtual {v4, v0}, Lcn/mucang/android/download/DownloadEntity;->setEtag(Ljava/lang/String;)V

    .line 11
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v0, v4}, Lcn/mucang/android/download/service/f;->a(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/DownloadEntity;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 13
    invoke-virtual {v4, v0}, Lcn/mucang/android/download/DownloadEntity;->setEtag(Ljava/lang/String;)V

    .line 14
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v0, v4}, Lcn/mucang/android/download/service/f;->a(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/DownloadEntity;)V

    .line 15
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 17
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 20
    :cond_1
    invoke-virtual {v4, v6, v7}, Lcn/mucang/android/download/DownloadEntity;->setContentLength(J)V

    .line 21
    invoke-virtual {v4, v6, v7}, Lcn/mucang/android/download/DownloadEntity;->setDownloadedLength(J)V

    .line 22
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v0, v4}, Lcn/mucang/android/download/service/f;->b(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/DownloadEntity;)V

    .line 23
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/download/service/f$d;->g(Lcn/mucang/android/download/service/f$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 24
    :try_start_2
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    :goto_0
    if-eqz v5, :cond_f

    .line 25
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_9

    .line 26
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 27
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-nez v0, :cond_4

    .line 28
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v10

    cmp-long v0, v8, v6

    if-lez v0, :cond_5

    add-long/2addr v10, v8

    .line 29
    invoke-virtual {v4, v10, v11}, Lcn/mucang/android/download/DownloadEntity;->setContentLength(J)V

    .line 30
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v0, v2}, Lcn/mucang/android/download/service/f;->c(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;)V

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 32
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    .line 33
    invoke-virtual {v4, v6, v7}, Lcn/mucang/android/download/DownloadEntity;->setDownloadedLength(J)V

    .line 34
    invoke-virtual {v4, v6, v7}, Lcn/mucang/android/download/DownloadEntity;->setContentLength(J)V

    .line 35
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v0, v2}, Lcn/mucang/android/download/service/f;->c(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;)V

    .line 36
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/download/service/f$d;->g(Lcn/mucang/android/download/service/f$c;)V

    return-void

    .line 37
    :cond_5
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 40
    invoke-virtual {v4, v0}, Lcn/mucang/android/download/DownloadEntity;->setMimeType(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 41
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    const/16 v0, 0x1000

    new-array v6, v0, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 42
    :try_start_5
    new-instance v9, Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rw"

    invoke-direct {v9, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 43
    :try_start_6
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 44
    :try_start_7
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 45
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 47
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_9

    .line 48
    :try_start_8
    invoke-virtual {v7, v6, v8, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_8

    goto :goto_4

    .line 49
    :cond_8
    invoke-virtual {v9, v6, v8, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 50
    invoke-virtual {v4}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v14

    int-to-long v12, v13

    add-long/2addr v14, v12

    invoke-virtual {v4, v14, v15}, Lcn/mucang/android/download/DownloadEntity;->setDownloadedLength(J)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v14, 0x1f4

    cmp-long v16, v12, v14

    if-ltz v16, :cond_7

    .line 52
    iget-object v10, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v10, v2}, Lcn/mucang/android/download/service/f;->c(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_8
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 54
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    goto :goto_5

    .line 55
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    :cond_9
    :goto_4
    const/4 v0, 0x0

    .line 56
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadQueueManager finished reading bytes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DownloadManager"

    invoke-static {v6, v3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {v1, v9, v8}, Lcn/mucang/android/download/service/f$d;->d(Ljava/io/Closeable;Z)V

    const/4 v3, 0x1

    .line 58
    invoke-direct {v1, v7, v3}, Lcn/mucang/android/download/service/f$d;->d(Ljava/io/Closeable;Z)V

    .line 59
    iget-object v3, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v3, v2}, Lcn/mucang/android/download/service/f;->c(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;)V

    if-eqz v0, :cond_a

    .line 60
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/download/service/f$d;->g(Lcn/mucang/android/download/service/f$c;)V

    goto :goto_7

    :cond_a
    if-eqz v5, :cond_c

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueueManager going to setStatus "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-boolean v0, v1, Lcn/mucang/android/download/service/f$d;->b:Z

    if-nez v0, :cond_e

    .line 63
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    .line 64
    iget-boolean v3, v1, Lcn/mucang/android/download/service/f$d;->a:Z

    if-eqz v3, :cond_b

    const/16 v3, 0x100

    goto :goto_6

    :cond_b
    const/16 v3, 0x10

    .line 65
    :goto_6
    invoke-static {v0, v2, v3}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    goto :goto_7

    .line 66
    :cond_c
    invoke-direct {v1, v4}, Lcn/mucang/android/download/service/f$d;->c(Lcn/mucang/android/download/DownloadEntity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/16 v3, 0x20

    invoke-static {v0, v2, v3}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    goto :goto_7

    .line 68
    :cond_d
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/16 v3, 0x200

    invoke-static {v0, v2, v3}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    :cond_e
    :goto_7
    return-void

    :catch_4
    move-exception v0

    .line 69
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-direct {v1, v9, v8}, Lcn/mucang/android/download/service/f$d;->d(Ljava/io/Closeable;Z)V

    .line 71
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/16 v3, 0x40

    invoke-static {v0, v2, v3}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    return-void

    :catch_5
    move-exception v0

    move-object v7, v9

    goto :goto_8

    :catch_6
    move-exception v0

    .line 72
    :goto_8
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-direct {v1, v7, v8}, Lcn/mucang/android/download/service/f$d;->d(Ljava/io/Closeable;Z)V

    .line 74
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/16 v3, 0x80

    invoke-static {v0, v2, v3}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    return-void

    :catch_7
    move-exception v0

    move-object v4, v0

    .line 75
    invoke-static {v3, v4}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/download/service/f$d;->g(Lcn/mucang/android/download/service/f$c;)V

    return-void

    .line 77
    :cond_f
    :goto_9
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/download/service/f$d;->g(Lcn/mucang/android/download/service/f$c;)V

    return-void

    :catch_8
    move-exception v0

    .line 78
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcn/mucang/android/download/service/f$d;->b:Z

    if-eqz v0, :cond_10

    return-void

    .line 80
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/download/service/f$d;->h(Lcn/mucang/android/download/service/f$c;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 81
    iget-object v0, v1, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    return-void

    .line 82
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/download/service/f$d;->g(Lcn/mucang/android/download/service/f$c;)V

    return-void
.end method

.method f()Lcn/mucang/android/download/service/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f$d;->d:Lcn/mucang/android/download/service/f$c;

    return-object v0
.end method

.method g(Lcn/mucang/android/download/service/f$c;)V
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/download/service/f$c;->c:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/16 v1, 0x40

    invoke-static {v0, p1, v1}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p1, Lcn/mucang/android/download/service/f$c;->c:I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v1}, Lcn/mucang/android/download/service/f;->f(Lcn/mucang/android/download/service/f;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method h(Lcn/mucang/android/download/service/f$c;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0}, Lcn/mucang/android/download/DownloadEntity;->getAllowNetworkType()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueueManager testTaskCondition allowedNetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadManager"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, v0, 0x1

    const-string v3, "DownloadQueueManager testTaskCondition ok task:"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/x;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/android/core/utils/x;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcn/mucang/android/core/utils/x;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueueManager testTaskCondition fail task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 7

    const-string v0, "DownloadManager"

    const-string v1, "DownloadQueueManager WorkerThread run"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/download/service/f$d;->a:Z

    if-nez v0, :cond_5

    .line 3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 5
    :try_start_0
    iget-object v3, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    invoke-static {v3}, Lcn/mucang/android/download/service/f;->f(Lcn/mucang/android/download/service/f;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/download/service/f$c;

    .line 8
    invoke-virtual {p0, v4}, Lcn/mucang/android/download/service/f$d;->h(Lcn/mucang/android/download/service/f$c;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v4

    goto :goto_2

    .line 9
    :cond_2
    iget-object v5, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const/4 v6, 0x4

    invoke-static {v5, v4, v6}, Lcn/mucang/android/download/service/f;->g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V

    .line 10
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez v2, :cond_1

    .line 11
    :try_start_1
    iget-object v3, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    iget-boolean v3, p0, Lcn/mucang/android/download/service/f$d;->a:Z

    if-eqz v3, :cond_1

    .line 13
    monitor-exit v0

    goto/16 :goto_3

    .line 14
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iput-object p0, v2, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    .line 16
    iput-object v2, p0, Lcn/mucang/android/download/service/f$d;->d:Lcn/mucang/android/download/service/f$c;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcn/mucang/android/download/service/f$d;->b:Z

    const-string v0, "DownloadManager"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueueManager doRealDownload start thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/download/service/f$d;->d:Lcn/mucang/android/download/service/f$c;

    iget-object v4, v4, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 20
    invoke-virtual {v4}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v0, v3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0, v2}, Lcn/mucang/android/download/service/f$d;->e(Lcn/mucang/android/download/service/f$c;)V

    const-string v0, "DownloadManager"

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueueManager doRealDownload finish thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/download/service/f$d;->d:Lcn/mucang/android/download/service/f$c;

    iget-object v4, v4, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 25
    invoke-virtual {v4}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v0, v3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object v1, p0, Lcn/mucang/android/download/service/f$d;->d:Lcn/mucang/android/download/service/f$c;

    .line 28
    iput-object v1, v2, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    .line 29
    iget-boolean v0, p0, Lcn/mucang/android/download/service/f$d;->b:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/mucang/android/download/service/f$d;->c:Lcn/mucang/android/download/service/f;

    iget-object v1, v2, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/download/service/f;->h(Lcn/mucang/android/download/service/f;J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 31
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_5
    :goto_3
    const-string v0, "DownloadManager"

    const-string v1, "DownloadQueueManager WorkerThread end"

    .line 32
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
