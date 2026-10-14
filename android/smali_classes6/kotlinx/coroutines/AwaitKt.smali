.class public final Lkotlinx/coroutines/AwaitKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Collection;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlinx/coroutines/p0<",
            "+TT;>;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$awaitAll$2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$awaitAll$2;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p1, Lkotlinx/coroutines/c;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/coroutines/p0;

    .line 5
    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Lkotlinx/coroutines/p0;

    .line 6
    invoke-direct {p1, v2}, Lkotlinx/coroutines/c;-><init>([Lkotlinx/coroutines/p0;)V

    iput-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$2;->label:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/c;->b(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    :goto_2
    return-object p0
.end method

.method public static final b([Lkotlinx/coroutines/p0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlinx/coroutines/p0<",
            "+TT;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$awaitAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$awaitAll$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->L$0:Ljava/lang/Object;

    check-cast p0, [Lkotlinx/coroutines/p0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    array-length p1, p0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_4
    new-instance p1, Lkotlinx/coroutines/c;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/c;-><init>([Lkotlinx/coroutines/p0;)V

    iput-object p0, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/AwaitKt$awaitAll$1;->label:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/c;->b(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    :goto_3
    return-object p0
.end method

.method public static final c(Ljava/util/Collection;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlinx/coroutines/t1;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$joinAll$3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$joinAll$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/t1;

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$3:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, v0, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/t1;

    .line 3
    iput-object p1, v1, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$1:Ljava/lang/Object;

    iput-object p0, v1, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/AwaitKt$joinAll$3;->L$4:Ljava/lang/Object;

    iput v3, v1, Lkotlinx/coroutines/AwaitKt$joinAll$3;->label:I

    invoke-interface {v5, v1}, Lkotlinx/coroutines/t1;->x(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_3

    return-object v2

    .line 4
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    return-object p0
.end method

.method public static final d([Lkotlinx/coroutines/t1;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/t1;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/AwaitKt$joinAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;

    iget v1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/AwaitKt$joinAll$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/t1;

    iget-object p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/t1;

    iget p0, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$1:I

    iget v2, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$0:I

    iget-object v4, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$2:Ljava/lang/Object;

    check-cast v4, [Lkotlinx/coroutines/t1;

    iget-object v5, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$1:Ljava/lang/Object;

    check-cast v5, [Lkotlinx/coroutines/t1;

    iget-object v6, v0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$0:Ljava/lang/Object;

    check-cast v6, [Lkotlinx/coroutines/t1;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, v4

    move-object v4, v1

    move-object v1, v5

    move v5, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    array-length p1, p0

    const/4 v2, 0x0

    move v5, p1

    move-object v2, v0

    move-object v4, v1

    move-object p1, p0

    move-object v0, p1

    move-object v1, v0

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v5, :cond_4

    aget-object v6, p1, p0

    .line 3
    iput-object v0, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$1:Ljava/lang/Object;

    iput-object p1, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$0:I

    iput p0, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$1:I

    iput-object v6, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$4:Ljava/lang/Object;

    iput v3, v2, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    invoke-interface {v6, v2}, Lkotlinx/coroutines/t1;->x(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_3

    return-object v4

    :cond_3
    :goto_2
    add-int/2addr p0, v3

    goto :goto_1

    .line 4
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    return-object p0
.end method
