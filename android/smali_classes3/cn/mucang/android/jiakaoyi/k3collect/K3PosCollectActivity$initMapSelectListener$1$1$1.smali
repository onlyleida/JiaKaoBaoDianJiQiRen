.class final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->v0(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initMapSelectListener$1$1$1"
    f = "K3PosCollectActivity.kt"
    l = {
        0x1a5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $selectLayer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
            "*>;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->$selectLayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->$selectLayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->D(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_4

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->D(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v6

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->e(Ljava/lang/Long;)Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->parseSrcData()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v4

    .line 9
    :goto_0
    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->U(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->E(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->$selectLayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    .line 11
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->E(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->I(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->$selectLayer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 14
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1$1;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-direct {v4, v5, p1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initMapSelectListener$1$1$1;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 15
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
