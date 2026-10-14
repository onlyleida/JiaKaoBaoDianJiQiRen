.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/u;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/u;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/u;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/u;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->O(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V

    return-void
.end method
