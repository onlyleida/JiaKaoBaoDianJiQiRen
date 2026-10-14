.class final Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->e(Lkotlinx/coroutines/flow/c;JLkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/r<",
        "Lkotlinx/coroutines/flow/d<",
        "-TT;>;",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Long;",
        "Lkotlin/coroutines/c<",
        "-",
        "Ljava/lang/Boolean;",
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
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\t\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/d;",
        "",
        "cause",
        "",
        "attempt",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3"
    f = "Errors.kt"
    l = {
        0x7c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $predicate:Lkotlin/jvm/b/p;

.field final synthetic $retries:J

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/flow/d;

.field private p$0:Ljava/lang/Throwable;

.field private p$1:J


# direct methods
.method constructor <init>(JLkotlin/jvm/b/p;Lkotlin/coroutines/c;)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->$retries:J

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->$predicate:Lkotlin/jvm/b/p;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlinx/coroutines/flow/d;Ljava/lang/Throwable;JLkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "J",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;

    iget-wide v1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->$retries:J

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->$predicate:Lkotlin/jvm/b/p;

    invoke-direct {v0, v1, v2, v3, p5}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;-><init>(JLkotlin/jvm/b/p;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->p$:Lkotlinx/coroutines/flow/d;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->p$0:Ljava/lang/Throwable;

    iput-wide p3, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->p$1:J

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/d;

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    move-object v5, p4

    check-cast v5, Lkotlin/coroutines/c;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->create(Lkotlinx/coroutines/flow/d;Ljava/lang/Throwable;JLkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/d;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->p$:Lkotlinx/coroutines/flow/d;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->p$0:Ljava/lang/Throwable;

    iget-wide v3, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->p$1:J

    iget-wide v5, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->$retries:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->$predicate:Lkotlin/jvm/b/p;

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->L$1:Ljava/lang/Object;

    iput-wide v3, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->J$0:J

    iput v2, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3;->label:I

    invoke-interface {v5, v1, p0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
