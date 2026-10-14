.class final synthetic Lkotlinx/coroutines/flow/FlowKt__MergeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "kotlinx.coroutines.flow.defaultConcurrency"

    const/16 v1, 0x10

    const/4 v2, 0x1

    const v3, 0x7fffffff

    .line 1
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/internal/z;->b(Ljava/lang/String;III)I

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/c<",
            "+TT;>;",
            "Lkotlin/jvm/b/p<",
            "-TT;-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;-><init>(Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/f;->H(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/q;)Lkotlinx/coroutines/flow/c;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/q;)Lkotlinx/coroutines/flow/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/c<",
            "+TT;>;",
            "Lkotlin/jvm/b/q<",
            "-",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;-TT;-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;-><init>(Lkotlin/jvm/b/q;Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/o;)V

    return-object v8
.end method
