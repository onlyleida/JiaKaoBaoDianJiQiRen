.class public final Lkotlinx/coroutines/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/k;Lkotlinx/coroutines/y0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "*>;",
            "Lkotlinx/coroutines/y0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/z0;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/z0;-><init>(Lkotlinx/coroutines/y0;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/k;->l(Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final b(Lkotlin/coroutines/c;)Lkotlinx/coroutines/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;)",
            "Lkotlinx/coroutines/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/g;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlinx/coroutines/l;

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/l;-><init>(Lkotlin/coroutines/c;I)V

    return-object v0

    .line 3
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/g;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/g;->i()Lkotlinx/coroutines/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/l;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lkotlinx/coroutines/l;

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/l;-><init>(Lkotlin/coroutines/c;I)V

    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/k;Lkotlinx/coroutines/internal/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "*>;",
            "Lkotlinx/coroutines/internal/n;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/i2;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/i2;-><init>(Lkotlinx/coroutines/internal/n;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/k;->l(Lkotlin/jvm/b/l;)V

    return-void
.end method
