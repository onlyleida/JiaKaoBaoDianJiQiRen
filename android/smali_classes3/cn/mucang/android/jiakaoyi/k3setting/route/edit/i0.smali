.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/i0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/i0;->b:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/i0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/i0;->b:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->t(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V

    return-void
.end method
