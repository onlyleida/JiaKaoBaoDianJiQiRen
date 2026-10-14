.class public final Landroidx/lifecycle/c0;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/lifecycle/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0}, Landroidx/lifecycle/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/g;

    return-void
.end method


# virtual methods
.method public A(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/d2;->B()Lkotlinx/coroutines/d2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->A(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/g;

    invoke-virtual {p1}, Landroidx/lifecycle/g;->b()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public y(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/g;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/g;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method
