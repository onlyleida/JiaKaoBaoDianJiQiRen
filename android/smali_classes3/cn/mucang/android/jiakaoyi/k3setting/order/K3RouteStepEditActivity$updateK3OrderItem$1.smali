.class final Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->G(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.order.K3RouteStepEditActivity$updateK3OrderItem$1"
    f = "K3RouteStepEditActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->$it:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->$it:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    const-string v3, "examSite!!.cityCode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->$it:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    iget v3, v3, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->c(JLjava/lang/String;I)Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1$1$1;

    const/4 p1, 0x0

    invoke-direct {v4, v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 6
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
