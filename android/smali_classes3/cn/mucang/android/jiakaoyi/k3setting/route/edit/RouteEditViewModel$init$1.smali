.class final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->n(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditViewModel$init$1"
    f = "RouteEditViewModel.kt"
    l = {
        0x40,
        0x40,
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field final synthetic $route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/e/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;-><init>()V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "route.routeId"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;->s(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;

    move-result-object v1

    .line 5
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v1

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Success:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v6, "\u52a0\u8f7d\u8def\u7ebf\u6570\u636e\u6210\u529f"

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1$1;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v2, v3, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v1

    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v5, "\u52a0\u8f7d\u8def\u7ebf\u6570\u636e\u5931\u8d25"

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1$1;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v2, v4, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 11
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 12
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1$1;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v4, v5, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$init$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    .line 13
    :goto_2
    throw v0
.end method
