.class public abstract Lkotlinx/coroutines/channels/o;
.super Lkotlinx/coroutines/internal/n;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/n;",
        "Lkotlinx/coroutines/channels/q<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;-><init>()V

    return-void
.end method


# virtual methods
.method public R()Lkotlinx/coroutines/internal/y;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/y;

    return-object v0
.end method

.method public S(Ljava/lang/Object;)Lkotlin/jvm/b/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract T(Lkotlinx/coroutines/channels/j;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/j<",
            "*>;)V"
        }
    .end annotation
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/o;->R()Lkotlinx/coroutines/internal/y;

    move-result-object v0

    return-object v0
.end method
