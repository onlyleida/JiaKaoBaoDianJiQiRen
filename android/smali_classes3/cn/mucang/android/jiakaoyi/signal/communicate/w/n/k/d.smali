.class public abstract Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;


# instance fields
.field protected a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a<",
            "*>;"
        }
    .end annotation
.end field

.field protected b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;

.field private volatile c:Z

.field private d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->e:I

    return-void
.end method

.method private b(JJLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    sub-long/2addr p3, p1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->i()I

    move-result p1

    int-to-long p1, p1

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-string p1, "McBaseConnector"

    const-string p2, "\u8d85\u65f6\u4e86"

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u8f93\u5165\u6d41\u8d85\u8fc7"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms\u6ca1\u6709\u6570\u636e\uff0c\u629b\u51fa\u5f02\u5e38"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1
.end method

.method private synthetic e(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->c:Z

    if-nez v2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->t()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_2

    .line 4
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->e:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v0, v7

    .line 7
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->w()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->b(JJLjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 9
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->c(Lcn/mucang/android/jiakaoyi/signal/com/v/b;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->c:Z

    if-nez v3, :cond_3

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    .line 12
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->d()V

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->e()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    .line 14
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->c:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 16
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->c:Z

    if-eqz v3, :cond_4

    return-void

    :cond_4
    const-wide/16 v3, 0x1e

    .line 17
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->close()V

    if-eqz p2, :cond_7

    .line 20
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object p1

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_5
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    if-eqz v3, :cond_6

    .line 22
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->close()V

    if-eqz p2, :cond_7

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object p1

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->close()V

    if-eqz p2, :cond_7

    .line 26
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract c(Lcn/mucang/android/jiakaoyi/signal/com/v/b;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->c:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->f()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    :cond_0
    return-void
.end method

.method protected d()Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-object v0
.end method

.method public synthetic g(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->e(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method protected h(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/com/v/b;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/com/ComState;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->c:Z

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->e:I

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected i()I
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x5265c00

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f40

    :goto_0
    return v0
.end method

.method public r(B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;->r(B[B)V

    return-void
.end method
