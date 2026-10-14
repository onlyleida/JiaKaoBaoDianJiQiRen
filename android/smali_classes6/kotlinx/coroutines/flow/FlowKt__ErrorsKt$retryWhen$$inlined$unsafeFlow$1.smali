.class public final Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->f(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/r;)Lkotlinx/coroutines/flow/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/c;

.field final synthetic b:Lkotlin/jvm/b/r;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/r;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->a:Lkotlinx/coroutines/flow/c;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->b:Lkotlin/jvm/b/r;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-wide v7, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/flow/d;

    iget-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/coroutines/c;

    iget-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/d;

    iget-object v12, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget v4, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    iget-wide v7, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/flow/d;

    iget-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/coroutines/c;

    iget-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/d;

    iget-object v12, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    move-object v4, v1

    move-object v10, v2

    move-wide v8, v7

    move-object v7, v3

    move-object v1, v0

    move-object v3, v4

    :goto_1
    const/4 v11, 0x0

    .line 4
    iget-object v12, v10, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->a:Lkotlinx/coroutines/flow/c;

    iput-object v10, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    iput-wide v8, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iput v11, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    iput v6, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    invoke-static {v12, v0, v3}, Lkotlinx/coroutines/flow/f;->f(Lkotlinx/coroutines/flow/c;Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v7, :cond_4

    return-object v7

    :cond_4
    move-object v11, v1

    move-object v1, v3

    move-object v3, v7

    move-wide v7, v8

    move-object v9, v0

    move-object v0, v12

    move-object v12, v10

    move-object v10, v4

    const/4 v4, 0x0

    .line 5
    :goto_2
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 6
    iget-object v4, v12, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->b:Lkotlin/jvm/b/r;

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v12, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    iput-wide v7, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iput-object v0, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    iput v5, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/4 v14, 0x6

    invoke-static {v14}, Lkotlin/jvm/internal/q;->c(I)V

    invoke-interface {v4, v9, v0, v13, v1}, Lkotlin/jvm/b/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v13, 0x7

    invoke-static {v13}, Lkotlin/jvm/internal/q;->c(I)V

    if-ne v4, v3, :cond_5

    return-object v3

    :cond_5
    move-object v15, v4

    move-object v4, v0

    move-object v0, v15

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v13, 0x1

    add-long/2addr v7, v13

    move-object v0, v9

    const/4 v4, 0x1

    goto :goto_4

    .line 7
    :cond_6
    throw v4

    :cond_7
    move-object v0, v9

    :goto_4
    move-wide v8, v7

    move-object v7, v3

    move-object v3, v1

    move-object v1, v11

    if-nez v4, :cond_8

    .line 8
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0

    :cond_8
    move-object v4, v10

    move-object v10, v12

    goto :goto_1
.end method
