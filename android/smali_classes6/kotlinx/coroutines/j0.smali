.class public final Lkotlinx/coroutines/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/f;

    sget-object v1, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/w1;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/i0;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/p2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/i0;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/i0;->E()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lkotlinx/coroutines/t1;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic d(Lkotlinx/coroutines/i0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/j0;->c(Lkotlinx/coroutines/i0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final e(Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlinx/coroutines/i0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/w;

    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/w;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/c;)V

    .line 2
    invoke-static {v0, v0, p0}, Lkotlinx/coroutines/a3/b;->e(Lkotlinx/coroutines/internal/w;Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_0
    return-object p0
.end method

.method public static final f(Lkotlinx/coroutines/i0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/i0;->E()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/w1;->g(Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final g(Lkotlinx/coroutines/i0;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/i0;->E()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
