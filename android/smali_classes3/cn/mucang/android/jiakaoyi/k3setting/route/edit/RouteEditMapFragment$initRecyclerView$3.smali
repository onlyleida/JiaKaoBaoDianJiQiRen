.class final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "stepOrder",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 11

    const-string v0, "stepOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->P(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    move-result-object v0

    const-string v1, "viewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;

    const/4 v3, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->getRouteSpotList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->L(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/s;->h0(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->L(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;-><init>()V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    .line 4
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->P(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->j()Landroid/location/Location;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setLat(D)V

    .line 6
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setLon(D)V

    .line 7
    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v0, v4}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setBearing(F)V

    .line 8
    iget v4, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-virtual {v0, v4}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setStepId(I)V

    .line 9
    iget-object v4, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setAlias(Ljava/lang/String;)V

    .line 10
    iget-wide v4, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    invoke-virtual {v0, v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setOrderId(J)V

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "randomUUID().toString()"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "-"

    const-string v7, ""

    invoke-static/range {v5 .. v10}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setUid(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_3
    :goto_1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->P(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "requireContext()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v0, v3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->o(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;I)V

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->N(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object v1

    const-string v3, "teachViewModel"

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->r()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->M(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->N(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->r()Ljava/util/Map;

    move-result-object v2

    .line 17
    iget p1, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    const-string v3, "findWithType(stepOrder.stepId)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v2, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->h(Ljava/util/Map;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "routeTeachEditLogic"

    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    return-void

    .line 21
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method
