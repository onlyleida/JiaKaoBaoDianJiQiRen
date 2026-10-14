.class public Lcom/amap/api/mapcore/util/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/amap/api/mapcore/util/q3;


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q3;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/q3;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v3, v2, 0x2

    const/16 v1, 0xa

    int-to-long v4, v1

    iget-object v7, p0, Lcom/amap/api/mapcore/util/q3;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/amap/api/mapcore/util/e3;

    const-string v1, "AMapThreadUtil"

    invoke-direct {v8, v1}, Lcom/amap/api/mapcore/util/e3;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q3;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/q3;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/amap/api/mapcore/util/q3;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/api/mapcore/util/q3;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/q3;-><init>()V

    sput-object v1, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    return-object v0
.end method

.method public static c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/q3;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore/util/q3;->b:Ljava/util/concurrent/ExecutorService;

    .line 5
    sput-object v1, Lcom/amap/api/mapcore/util/q3;->c:Lcom/amap/api/mapcore/util/q3;

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q3;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
