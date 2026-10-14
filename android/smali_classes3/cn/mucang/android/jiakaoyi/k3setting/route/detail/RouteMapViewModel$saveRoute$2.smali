.class final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->o(Ljava/lang/String;Z)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteMapViewModel$saveRoute$2"
    f = "RouteMapViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $canPublic:Z

.field final synthetic $routeName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->$routeName:Ljava/lang/String;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->$canPublic:Z

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->$routeName:Ljava/lang/String;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->$canPublic:Z

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;-><init>(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "\u4fdd\u5b58\u8def\u7ebf\u5931\u8d25"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->label:I

    if-nez v1, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "randomUUID().toString()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "-"

    const-string v4, ""

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setRouteId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->$routeName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setRouteName(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->$canPublic:Z

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setCanPublic(Z)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->f()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p1, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setExamSiteId(J)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->f()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setExamSiteName(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->f()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setAreaCode(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->f()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setAreaName(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->j()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->setNodes(Ljava/util/List;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setDistance(I)V

    .line 12
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setUserId(Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/e/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;-><init>()V

    .line 14
    :try_start_0
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;->v(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getLog()Ljava/lang/String;

    move-result-object p1

    const-string v2, "localRoute.log"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Success:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v2, "\u4fdd\u5b58\u8def\u7ebf\u6210\u529f"

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 19
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
