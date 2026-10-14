.class public Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/c;->a:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u4e0d\u652f\u6301write(int)\uff0c\u8bf7\u7528write(byte[])"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/c;->a:Z

    if-nez v0, :cond_1

    const-string v0, "V600"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 4
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, v0, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/rscja/deviceapi/b;->b()Lcom/rscja/deviceapi/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/rscja/deviceapi/b;->e([B)Z
    :try_end_1
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "V600"

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send error : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/rscja/deviceapi/b;->b()Lcom/rscja/deviceapi/b;

    move-result-object v0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rscja/deviceapi/b;->e([B)Z
    :try_end_3
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 10
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "v600\u4e32\u53e3\u5df2\u7ecf\u5173\u95ed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
