.class public final Lkotlinx/coroutines/channels/v;
.super Lkotlinx/coroutines/channels/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/u<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TE;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/k;Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/k<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/u;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/k;)V

    iput-object p3, p0, Lkotlinx/coroutines/channels/v;->f:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public N()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/internal/n;->N()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/v;->V()V

    const/4 v0, 0x1

    return v0
.end method

.method public V()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/v;->f:Lkotlin/jvm/b/l;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/u;->S()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/channels/u;->e:Lkotlinx/coroutines/k;

    invoke-interface {v2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->b(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method
