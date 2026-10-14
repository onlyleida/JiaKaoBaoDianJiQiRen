.class final synthetic Lkotlinx/coroutines/flow/FlowKt__DistinctKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;->INSTANCE:Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->a:Lkotlin/jvm/b/l;

    .line 2
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultAreEquivalent$1;->INSTANCE:Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultAreEquivalent$1;

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->b:Lkotlin/jvm/b/p;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/c;)Lkotlinx/coroutines/flow/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/c<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/flow/k2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->a:Lkotlin/jvm/b/l;

    sget-object v1, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->b:Lkotlin/jvm/b/p;

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->b(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/l;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final b(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/l;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/c<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/flow/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->b:Lkotlin/jvm/b/l;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->c:Lkotlin/jvm/b/p;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl;-><init>(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/l;Lkotlin/jvm/b/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
