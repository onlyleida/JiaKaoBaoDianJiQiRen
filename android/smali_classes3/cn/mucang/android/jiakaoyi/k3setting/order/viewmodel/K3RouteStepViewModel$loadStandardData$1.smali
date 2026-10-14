.class final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->n()V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel$loadStandardData$1"
    f = "K3RouteStepViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->f()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-direct {v2, v1}, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
