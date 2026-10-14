.class final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->m(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteViewModel$addToMyRoute$1"
    f = "RouteViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->$localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->$localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, " name "

    const-string v1, "\u6dfb\u52a0\u5230\u6211\u7684\u7ebf\u8def routeId "

    const-string v2, "\u6dfb\u52a0\u5931\u8d25"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->label:I

    if-nez v3, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/e/a;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;-><init>()V

    .line 3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->$localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "localRoute.routeId"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;->n(Ljava/lang/String;)Z

    move-result v3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->$localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->$localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->$localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->$localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    const-string v1, "\u6dfb\u52a0\u6210\u529f"

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$addToMyRoute$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 10
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
