.class final synthetic Lkotlinx/coroutines/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/w;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/v1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/v1;-><init>(Lkotlinx/coroutines/t1;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/w1;->a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/w;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/t1;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/w1;->c(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final e(Lkotlinx/coroutines/t1;Lkotlinx/coroutines/y0;)Lkotlinx/coroutines/y0;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/a1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/a1;-><init>(Lkotlinx/coroutines/t1;Lkotlinx/coroutines/y0;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/t1;->n(Lkotlin/jvm/b/l;)Lkotlinx/coroutines/y0;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/w1;->h(Lkotlinx/coroutines/t1;)V

    :cond_0
    return-void
.end method

.method public static final g(Lkotlinx/coroutines/t1;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/t1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final h(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/t1;
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/t1;->R:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context doesn\'t contain Job in it: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
