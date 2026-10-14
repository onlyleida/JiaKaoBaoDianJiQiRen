.class public Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;
.super Lcn/mucang/android/jiakaoyi/signal/com/x/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$a;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->c:Z

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;)Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    return-object p0
.end method

.method private synthetic c()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/s;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method static synthetic e(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->a(I)Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p0, :cond_0

    const-string v0, "\u53d1\u9001\u5931\u8d25"

    .line 3
    invoke-interface {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BIZIII)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-static/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->a(I)Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget v4, v1, Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;->a:I

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 3
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->a(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;)Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->c(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Z)Z

    .line 5
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    move/from16 v12, p6

    invoke-static {v4, v12}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->d(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;I)I

    .line 6
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    move/from16 v13, p5

    invoke-static {v4, v13}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->e(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;I)I

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->g(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Z)Z

    .line 8
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;->a:I

    goto :goto_1

    :cond_1
    move/from16 v13, p5

    move/from16 v12, p6

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 9
    :goto_2
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->c:Z

    if-eqz v5, :cond_7

    add-int/2addr v4, v2

    .line 10
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;->a([BIZIII)Z

    move-result v5

    .line 11
    invoke-static/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->b(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 12
    :try_start_0
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->b(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_5

    .line 13
    :cond_2
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->i(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 14
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->h(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 15
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->b(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_5

    .line 16
    :cond_3
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->f(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ge v4, v1, :cond_4

    goto :goto_3

    :cond_4
    if-lt v4, v1, :cond_5

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/x/e/a;

    move/from16 v5, p2

    invoke-direct {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/a;-><init>(I)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v5, p2

    goto :goto_2

    .line 18
    :cond_6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->j(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)V

    return v5

    :catch_0
    :cond_7
    :goto_4
    const/4 v2, 0x0

    .line 19
    :goto_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->j(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)V

    return v2
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->c:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->a(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;)Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->h(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->i(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;->c()V

    return-void
.end method
