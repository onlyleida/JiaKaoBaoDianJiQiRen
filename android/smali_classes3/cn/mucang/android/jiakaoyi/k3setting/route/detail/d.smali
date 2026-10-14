.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/detail/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/d;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/d;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/d;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/d;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;Landroid/view/View;)V

    return-void
.end method
