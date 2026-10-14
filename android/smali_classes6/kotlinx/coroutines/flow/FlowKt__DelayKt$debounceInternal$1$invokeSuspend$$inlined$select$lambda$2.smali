.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "T",
        "",
        "value",
        "Lkotlin/v;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $downstream$inlined:Lkotlinx/coroutines/flow/d;

.field final synthetic $lastValue$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $timeoutMillis$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $values$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$0:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$lastValue$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$timeoutMillis$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$downstream$inlined:Lkotlinx/coroutines/flow/d;

    iput-object p5, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$values$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$lastValue$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$timeoutMillis$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$downstream$inlined:Lkotlinx/coroutines/flow/d;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$values$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;-><init>(Lkotlin/coroutines/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->p$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->p$0:Ljava/lang/Object;

    if-nez p1, :cond_4

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$lastValue$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$downstream$inlined:Lkotlinx/coroutines/flow/d;

    sget-object v4, Lkotlinx/coroutines/flow/internal/p;->a:Lkotlinx/coroutines/internal/y;

    if-ne v1, v4, :cond_2

    const/4 v1, 0x0

    .line 5
    :cond_2
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->label:I

    .line 6
    invoke-interface {v3, v1, p0}, Lkotlinx/coroutines/flow/d;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$lastValue$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lkotlinx/coroutines/flow/internal/p;->c:Lkotlinx/coroutines/internal/y;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;->$lastValue$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
