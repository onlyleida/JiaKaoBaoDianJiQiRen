.class public final Lcn/mucang/android/core/task/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcn/mucang/android/core/task/ServerTask;",
        "",
        "()V",
        "executeIfNeed",
        "",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->a()V

    .line 2
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ServerTask"

    .line 3
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "core"

    const-string v1, "ServerTask start execute"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lf/a/a/a/d;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v1, "serverTask"

    invoke-direct {v0, v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 7
    new-instance v1, Lcn/mucang/android/core/task/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/task/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final b(Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/core/task/h;

    invoke-direct {v0}, Lcn/mucang/android/core/task/h;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/core/task/h;->b()Lcn/mucang/android/core/task/TaskResponse;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/core/task/TaskResponse;->getNextRequestTime()J

    move-result-wide v3

    :goto_0
    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 3
    invoke-static {v3, v4}, Lf/a/a/a/d;->h(J)V

    :cond_1
    if-nez v0, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/core/task/TaskResponse;->getTaskList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/task/Task;

    .line 6
    sget-object v2, Lcn/mucang/android/core/task/g;->b:Lcn/mucang/android/core/task/g$a;

    const-string v3, "task"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/task/g$a;->a(Lcn/mucang/android/core/task/Task;)Lcn/mucang/android/core/task/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/core/task/g;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/task/f;

    .line 8
    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 9
    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/core/task/e;->b(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
