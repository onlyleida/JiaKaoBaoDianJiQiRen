.class Lkotlinx/coroutines/q0;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/p0;
.implements Lkotlinx/coroutines/selects/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;",
        "Lkotlinx/coroutines/p0<",
        "TT;>;",
        "Lkotlinx/coroutines/selects/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method static synthetic X0(Lkotlinx/coroutines/q0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    iget v1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/DeferredCoroutine$await$1;-><init>(Lkotlinx/coroutines/q0;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/q0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/a2;->P(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a2;->d0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;",
            "Lkotlin/jvm/b/p<",
            "-TT;-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/a2;->D0(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/b/p;)V

    return-void
.end method
