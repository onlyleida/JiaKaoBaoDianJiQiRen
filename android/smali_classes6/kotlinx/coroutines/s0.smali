.class public final Lkotlinx/coroutines/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 1
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lkotlinx/coroutines/l;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/l;-><init>(Lkotlin/coroutines/c;I)V

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/l;->z()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 4
    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/s0;->b(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r0;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Lkotlinx/coroutines/r0;->c(JLkotlinx/coroutines/k;)V

    .line 5
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/l;->x()Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_2
    return-object p0
.end method

.method public static final b(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r0;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/d;->L:Lkotlin/coroutines/d$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/r0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/r0;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/r0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final c(D)J
    .locals 2

    .line 1
    sget-object v0, Lkotlin/b0/a;->d:Lkotlin/b0/a$a;

    invoke-virtual {v0}, Lkotlin/b0/a$a;->getZERO-UwyO8pc()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/b0/a;->compareTo-LRDsOJo(DD)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/b0/a;->toLongMilliseconds-impl(D)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lkotlin/a0/d;->c(JJ)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method
