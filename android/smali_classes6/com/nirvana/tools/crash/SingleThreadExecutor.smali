.class Lcom/nirvana/tools/crash/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mWorkThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/nirvana/tools/crash/SingleThreadExecutor$1;

    invoke-direct {v7, p0, p1}, Lcom/nirvana/tools/crash/SingleThreadExecutor$1;-><init>(Lcom/nirvana/tools/crash/SingleThreadExecutor;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/nirvana/tools/crash/SingleThreadExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/nirvana/tools/crash/SingleThreadExecutor;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/nirvana/tools/crash/SingleThreadExecutor;->mWorkThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$002(Lcom/nirvana/tools/crash/SingleThreadExecutor;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/SingleThreadExecutor;->mWorkThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private isSelfThread()Z
    .locals 5

    iget-object v0, p0, Lcom/nirvana/tools/crash/SingleThreadExecutor;->mWorkThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/nirvana/tools/crash/SingleThreadExecutor;->isSelfThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/crash/SingleThreadExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
