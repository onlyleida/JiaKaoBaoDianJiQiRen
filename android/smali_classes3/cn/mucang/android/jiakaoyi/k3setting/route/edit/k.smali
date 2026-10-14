.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/k;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/k;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    return-void
.end method
