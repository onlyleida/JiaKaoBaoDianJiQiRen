.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/h;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/h;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/h;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/h;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->L(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;Ljava/util/List;)V

    return-void
.end method
