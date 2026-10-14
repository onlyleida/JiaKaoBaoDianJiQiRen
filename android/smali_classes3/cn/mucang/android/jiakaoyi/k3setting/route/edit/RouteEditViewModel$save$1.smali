.class final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->v()V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditViewModel$save$1"
    f = "RouteEditViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->$route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->$route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "\u4fdd\u5b58\u7ebf\u8def "

    const-string v1, "\u4fdd\u5b58\u8def\u7ebf\u5931\u8d25"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->label:I

    if-nez v2, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->$route:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/e/a;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->h()I

    move-result v4

    invoke-virtual {p1, v4}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setDistance(I)V

    .line 5
    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;->q(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getLog()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    invoke-static {v2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->b(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    .line 8
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getLog()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->i()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Success:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v3, "\u4fdd\u5b58\u8def\u7ebf\u6210\u529f"

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->i()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->i()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
