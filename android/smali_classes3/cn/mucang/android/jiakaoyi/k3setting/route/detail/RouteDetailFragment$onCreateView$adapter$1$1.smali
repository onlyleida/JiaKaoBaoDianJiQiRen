.class final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V
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
        "it",
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
.field final synthetic $mapViewModel:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1$1;->$mapViewModel:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->r(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1$1;->$mapViewModel:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->r(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->l(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    const-string p1, "GPS\u5b9a\u4f4d\u5931\u8d25"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "\u8bf7\u5148\u5c06\u8f66\u8f86\u5f00\u8d77\u6765"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method
