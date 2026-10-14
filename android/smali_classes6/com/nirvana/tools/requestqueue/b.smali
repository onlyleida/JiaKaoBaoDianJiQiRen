.class Lcom/nirvana/tools/requestqueue/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/nirvana/tools/requestqueue/b;


# instance fields
.field a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirvana/tools/requestqueue/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lcom/nirvana/tools/requestqueue/b;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nirvana/tools/requestqueue/b;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/nirvana/tools/requestqueue/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public static a()Lcom/nirvana/tools/requestqueue/b;
    .locals 2

    sget-object v0, Lcom/nirvana/tools/requestqueue/b;->c:Lcom/nirvana/tools/requestqueue/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/nirvana/tools/requestqueue/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nirvana/tools/requestqueue/b;->c:Lcom/nirvana/tools/requestqueue/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nirvana/tools/requestqueue/b;

    invoke-direct {v1}, Lcom/nirvana/tools/requestqueue/b;-><init>()V

    sput-object v1, Lcom/nirvana/tools/requestqueue/b;->c:Lcom/nirvana/tools/requestqueue/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/nirvana/tools/requestqueue/b;->c:Lcom/nirvana/tools/requestqueue/b;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/requestqueue/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/requestqueue/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Ljava/lang/Runnable;J)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/requestqueue/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/RunnableScheduledFuture;

    return-object p1
.end method
