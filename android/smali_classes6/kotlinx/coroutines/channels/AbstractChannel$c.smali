.class final Lkotlinx/coroutines/channels/AbstractChannel$c;
.super Lkotlinx/coroutines/channels/AbstractChannel$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel$b<",
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
.method public constructor <init>(Lkotlinx/coroutines/k;ILkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractChannel$b;-><init>(Lkotlinx/coroutines/k;I)V

    iput-object p3, p0, Lkotlinx/coroutines/channels/AbstractChannel$c;->f:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/Object;)Lkotlin/jvm/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$c;->f:Lkotlin/jvm/b/l;

    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$b;->d:Lkotlinx/coroutines/k;

    invoke-interface {v1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/b/l;

    move-result-object p1

    return-object p1
.end method
