.class final Lkotlinx/coroutines/a2$a;
.super Lkotlinx/coroutines/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final h:Lkotlinx/coroutines/a2;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Lkotlinx/coroutines/a2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-TT;>;",
            "Lkotlinx/coroutines/a2;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/l;-><init>(Lkotlin/coroutines/c;I)V

    iput-object p2, p0, Lkotlinx/coroutines/a2$a;->h:Lkotlinx/coroutines/a2;

    return-void
.end method


# virtual methods
.method protected F()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method

.method public u(Lkotlinx/coroutines/t1;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a2$a;->h:Lkotlinx/coroutines/a2;

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->k0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/a2$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/a2$c;

    invoke-virtual {v1}, Lkotlinx/coroutines/a2$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/y;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/y;

    iget-object p1, v0, Lkotlinx/coroutines/y;->a:Ljava/lang/Throwable;

    return-object p1

    .line 4
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/t1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method
