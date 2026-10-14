.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/manager/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/l;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/l;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->P(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
