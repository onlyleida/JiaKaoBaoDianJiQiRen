.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/v;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/v;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/v;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/v;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->q0(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;)V

    return-void
.end method
