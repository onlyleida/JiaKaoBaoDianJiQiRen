.class final Lcom/nirvana/tools/requestqueue/RequestHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirvana/tools/requestqueue/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/nirvana/tools/requestqueue/RequestHandler;

.field private volatile c:Z

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/nirvana/tools/requestqueue/RequestHandler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->b:Lcom/nirvana/tools/requestqueue/RequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->a:Ljava/util/concurrent/RunnableScheduledFuture;

    iput-object p2, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nirvana/tools/requestqueue/b;->a()Lcom/nirvana/tools/requestqueue/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->d:Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/nirvana/tools/requestqueue/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->a:Ljava/util/concurrent/RunnableScheduledFuture;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nirvana/tools/requestqueue/b;->a()Lcom/nirvana/tools/requestqueue/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->a:Ljava/util/concurrent/RunnableScheduledFuture;

    iget-object v0, v0, Lcom/nirvana/tools/requestqueue/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->b:Lcom/nirvana/tools/requestqueue/RequestHandler;

    iget-object v0, v0, Lcom/nirvana/tools/requestqueue/RequestHandler;->c:Lcom/nirvana/tools/requestqueue/Request;

    invoke-virtual {v0}, Lcom/nirvana/tools/requestqueue/Request;->getAction()Lcom/nirvana/tools/requestqueue/TimeoutCallable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nirvana/tools/requestqueue/Response;

    iget-boolean v1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nirvana/tools/requestqueue/RequestHandler$a;->b:Lcom/nirvana/tools/requestqueue/RequestHandler;

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/requestqueue/RequestHandler;->a(Lcom/nirvana/tools/requestqueue/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
