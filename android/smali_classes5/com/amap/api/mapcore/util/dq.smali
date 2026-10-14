.class public abstract Lcom/amap/api/mapcore/util/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/dq$g;,
        Lcom/amap/api/mapcore/util/dq$f;,
        Lcom/amap/api/mapcore/util/dq$h;,
        Lcom/amap/api/mapcore/util/dq$e;,
        Lcom/amap/api/mapcore/util/dq$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/concurrent/Executor;

.field public static final i:Ljava/util/concurrent/Executor;

.field public static final j:Ljava/util/concurrent/Executor;

.field private static final k:Lcom/amap/api/mapcore/util/dq$h;

.field private static volatile l:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Lcom/amap/api/mapcore/util/dq$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore/util/dq$f<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/amap/api/mapcore/util/dq$e;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v7, Lcom/amap/api/mapcore/util/dq$a;

    invoke-direct {v7}, Lcom/amap/api/mapcore/util/dq$a;-><init>()V

    sput-object v7, Lcom/amap/api/mapcore/util/dq;->f:Ljava/util/concurrent/ThreadFactory;

    .line 2
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v6, Lcom/amap/api/mapcore/util/dq;->g:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, v9

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v9, Lcom/amap/api/mapcore/util/dq;->h:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/dq$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/dq$i;-><init>(Lcom/amap/api/mapcore/util/dq$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x1

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lcom/amap/api/mapcore/util/e3;

    const-string v2, "AMapSERIAL_EXECUTOR"

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/e3;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v10, v0

    move-object/from16 v15, v19

    move-object/from16 v17, v1

    invoke-direct/range {v10 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    :goto_0
    sput-object v0, Lcom/amap/api/mapcore/util/dq;->i:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Lcom/amap/api/mapcore/util/e3;

    const-string v3, "AMapDUAL_THREAD_EXECUTOR"

    invoke-direct {v2, v3}, Lcom/amap/api/mapcore/util/e3;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v10, v1

    move-object/from16 v15, v19

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/amap/api/mapcore/util/dq;->j:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v1, Lcom/amap/api/mapcore/util/dq$h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/dq$h;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/amap/api/mapcore/util/dq;->k:Lcom/amap/api/mapcore/util/dq$h;

    .line 7
    sput-object v0, Lcom/amap/api/mapcore/util/dq;->l:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/amap/api/mapcore/util/dq$e;->a:Lcom/amap/api/mapcore/util/dq$e;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dq;->c:Lcom/amap/api/mapcore/util/dq$e;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/amap/api/mapcore/util/dq$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/dq$b;-><init>(Lcom/amap/api/mapcore/util/dq;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dq;->a:Lcom/amap/api/mapcore/util/dq$f;

    .line 6
    new-instance v1, Lcom/amap/api/mapcore/util/dq$c;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/dq$c;-><init>(Lcom/amap/api/mapcore/util/dq;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/dq;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/dq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dq;->q(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/dq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/dq;)Ljava/util/concurrent/FutureTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/dq;->b:Ljava/util/concurrent/FutureTask;

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/dq;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dq;->p(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/dq;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dq;->s(Ljava/lang/Object;)V

    return-void
.end method

.method private p(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dq;->q(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/dq;->k:Lcom/amap/api/mapcore/util/dq$h;

    new-instance v1, Lcom/amap/api/mapcore/util/dq$g;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/amap/api/mapcore/util/dq$g;-><init>(Lcom/amap/api/mapcore/util/dq;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private s(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dq;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dq;->k(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/dq;->f(Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p1, Lcom/amap/api/mapcore/util/dq$e;->c:Lcom/amap/api/mapcore/util/dq$e;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/dq;->c:Lcom/amap/api/mapcore/util/dq$e;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/mapcore/util/dq$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq;->c:Lcom/amap/api/mapcore/util/dq$e;

    return-object v0
.end method

.method public final varargs b(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/amap/api/mapcore/util/dq<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq;->c:Lcom/amap/api/mapcore/util/dq$e;

    sget-object v1, Lcom/amap/api/mapcore/util/dq$e;->a:Lcom/amap/api/mapcore/util/dq$e;

    if-eq v0, v1, :cond_2

    .line 2
    sget-object v0, Lcom/amap/api/mapcore/util/dq$d;->a:[I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dq;->c:Lcom/amap/api/mapcore/util/dq$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore/util/dq$e;->b:Lcom/amap/api/mapcore/util/dq$e;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dq;->c:Lcom/amap/api/mapcore/util/dq$e;

    .line 6
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dq;->i()V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq;->a:Lcom/amap/api/mapcore/util/dq$f;

    iput-object p2, v0, Lcom/amap/api/mapcore/util/dq$f;->a:[Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/amap/api/mapcore/util/dq;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected varargs abstract d([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final g(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected k(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dq;->n()V

    return-void
.end method

.method protected varargs l([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public final varargs m([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/amap/api/mapcore/util/dq<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/dq;->l:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/dq;->b(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dq;

    return-object p0
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
