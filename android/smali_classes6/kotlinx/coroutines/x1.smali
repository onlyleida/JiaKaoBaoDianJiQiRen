.class final synthetic Lkotlinx/coroutines/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/k;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/h;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/h;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/k;->l(Lkotlin/jvm/b/l;)V

    return-void
.end method
