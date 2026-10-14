.class public Lkotlinx/coroutines/channels/m;
.super Lkotlinx/coroutines/channels/g;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/g<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/n<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/f<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/f;Z)V

    return-void
.end method


# virtual methods
.method protected T0(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/g;->Y0()Lkotlinx/coroutines/channels/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/t;->D(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/f0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic U0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/v;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/m;->c1(Lkotlin/v;)V

    return-void
.end method

.method protected c1(Lkotlin/v;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/g;->Y0()Lkotlinx/coroutines/channels/f;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/channels/t$a;->a(Lkotlinx/coroutines/channels/t;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/a;->isActive()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Lkotlinx/coroutines/channels/t;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/g;->X0()Lkotlinx/coroutines/channels/f;

    return-object p0
.end method
