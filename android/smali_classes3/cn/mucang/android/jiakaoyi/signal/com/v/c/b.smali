.class public Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;
.super Lcn/mucang/android/jiakaoyi/signal/com/v/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;


# instance fields
.field private final e:Lcn/mucang/android/jiakaoyi/signal/communicate/o;

.field private final f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/o;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/communicate/o$b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/o;

    .line 3
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->close()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/o;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->c()V

    return-void
.end method

.method public init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/o;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/o;->e()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/b;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "\u84dd\u7259\u6253\u5f00\u5931\u8d25"

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public v()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    const-string v0, "\u84dd\u72591"

    return-object v0
.end method
