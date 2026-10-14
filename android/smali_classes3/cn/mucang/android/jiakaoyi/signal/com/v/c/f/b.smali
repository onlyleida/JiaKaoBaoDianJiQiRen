.class public Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:[B

.field private volatile b:I

.field private volatile c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private volatile f:Z

.field private g:Ljava/lang/Throwable;

.field private final h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->f:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->d:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->e:Ljava/lang/Object;

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->h:Ljava/lang/Thread;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rscja/deviceapi/exception/ConfigurationException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->f:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/rscja/deviceapi/b;->b()Lcom/rscja/deviceapi/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rscja/deviceapi/b;->d()[B

    move-result-object v0

    .line 3
    array-length v1, v0

    if-gtz v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->d([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->g:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method private d([B)V
    .locals 8

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v600:\u5e27\u6570\u636e\u592a\u957f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    const/4 v3, -0x1

    if-le v1, v2, :cond_1

    .line 5
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    .line 6
    :cond_1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    if-ne v1, v3, :cond_2

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    array-length v2, p1

    invoke-static {p1, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    .line 9
    array-length v1, p1

    sub-int/2addr v1, v4

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    goto/16 :goto_0

    .line 10
    :cond_2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    array-length v2, v2

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_4

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    if-ltz v1, :cond_3

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    iget v6, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    invoke-static {v2, v6, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :cond_3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    .line 14
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    .line 15
    :cond_4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    array-length v2, v2

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_5

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer\u7684\u6570\u636e\u6ca1\u6709\u8bfb\u53d6\uff0c\u6e05\u7a7a:start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 17
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    .line 18
    :cond_5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    if-ne v1, v3, :cond_6

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    array-length v2, p1

    invoke-static {p1, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    .line 21
    array-length v1, p1

    sub-int/2addr v1, v4

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    goto :goto_0

    .line 22
    :cond_6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    add-int/2addr v2, v4

    array-length v3, p1

    invoke-static {p1, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    .line 24
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "V600"

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , end = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iget v6, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    sub-int/2addr v3, v6

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , receive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    sub-int/2addr v3, v4

    aget-byte p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private e()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    .line 4
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->f:Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->e()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/IllegalMonitorStateException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->g:Ljava/lang/Throwable;

    .line 3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    const/4 v2, -0x1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    if-ne v0, v2, :cond_3

    :cond_2
    :try_start_0
    const-string v0, "V600"

    const-string v1, "read wait"

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 8
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 9
    :catch_0
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    if-le v1, v3, :cond_4

    .line 11
    monitor-exit v0

    return v2

    .line 12
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->a:[B

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    aget-byte v1, v1, v3

    .line 13
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    if-le v3, v4, :cond_5

    .line 14
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->c:I

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;->b:I

    .line 15
    :cond_5
    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
