.class public final Lkotlinx/coroutines/channels/AbstractChannel$g;
.super Lkotlinx/coroutines/internal/n$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/n$d<",
        "Lkotlinx/coroutines/channels/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/n$d;-><init>(Lkotlinx/coroutines/internal/n;)V

    return-void
.end method


# virtual methods
.method protected e(Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/channels/j;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p1, Lkotlinx/coroutines/channels/s;

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public j(Lkotlinx/coroutines/internal/n$c;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/internal/n$c;->a:Lkotlinx/coroutines/internal/n;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/s;

    .line 2
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/s;->U(Lkotlinx/coroutines/internal/n$c;)Lkotlinx/coroutines/internal/y;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_4
    sget-object p1, Lkotlinx/coroutines/internal/o;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public k(Lkotlinx/coroutines/internal/n;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/s;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/s;->V()V

    return-void
.end method
