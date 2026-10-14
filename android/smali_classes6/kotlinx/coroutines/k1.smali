.class public final Lkotlinx/coroutines/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/j1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/j1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
