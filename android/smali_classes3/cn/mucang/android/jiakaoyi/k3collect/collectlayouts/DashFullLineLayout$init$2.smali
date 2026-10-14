.class final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->k(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Landroidx/viewbinding/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
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
.field final synthetic $mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->$mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->v(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->g0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->U()V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$2;->$mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v2

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v4

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->K0(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Z

    move-result v4

    invoke-virtual {v2, v3, v1, p1, v4}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Z)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;->e0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    :goto_0
    return-void
.end method
