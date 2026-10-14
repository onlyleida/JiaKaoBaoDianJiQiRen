.class final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
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
        "it",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;"
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
.field final synthetic $node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->$node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->N(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object p1

    const-string v0, "teachViewModel"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->r()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->M(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->N(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->r()Ljava/util/Map;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->$node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getStepId()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    const-string v2, "findWithType(node.stepId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$onClick$1;->$node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->h(Ljava/util/Map;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "routeTeachEditLogic"

    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
