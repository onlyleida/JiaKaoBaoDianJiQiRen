.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/s;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/s;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->n0(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method
