.class final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->r(ZJLjava/lang/String;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteViewModel$loadRouteList$1"
    f = "RouteViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $examSiteId:J

.field final synthetic $firstLoad:Z

.field final synthetic $type:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;


# direct methods
.method constructor <init>(JLjava/lang/String;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;ZLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;",
            "Z",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$examSiteId:J

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$type:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$firstLoad:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$examSiteId:J

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$type:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$firstLoad:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;-><init>(JLjava/lang/String;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;ZLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/e/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;->r()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/e/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;-><init>()V

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$examSiteId:J

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$type:Ljava/lang/String;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->i(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;->u(Lcn/mucang/android/jiakaoyi/k3setting/e/a;JLjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcn/mucang/android/core/api/d/b;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {v2}, Lcn/mucang/android/core/api/d/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "response.cursor"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->j(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {v2}, Lcn/mucang/android/core/api/d/b;->c()Z

    move-result v4

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->k(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Z)V

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/core/api/d/b;->b()Ljava/util/List;

    move-result-object v2

    :goto_0
    const-string v3, "onlineList"

    .line 8
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;

    .line 12
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->toLocalRoute()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->t(Ljava/lang/String;)V

    .line 14
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$firstLoad:Z

    if-eqz v2, :cond_2

    .line 15
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/model/f;->u(Ljava/util/List;)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/model/f;->q(Ljava/util/List;)V

    .line 17
    :goto_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-static {v2, v1, v0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 18
    :catch_0
    :try_start_1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->$firstLoad:Z

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-static {v2, v1, v0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_3
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->l(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Z)V

    .line 21
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 22
    :goto_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$loadRouteList$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->l(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Z)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
