.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->g0(Landroid/view/LayoutInflater;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$4",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    if-nez p3, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/16 p2, -0x20bd

    :goto_0
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->f0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->N()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$b;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p4

    .line 5
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p5

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v0

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->K0(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Z

    move-result v0

    .line 7
    invoke-virtual {p4, p5, p3, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Z)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->e0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
