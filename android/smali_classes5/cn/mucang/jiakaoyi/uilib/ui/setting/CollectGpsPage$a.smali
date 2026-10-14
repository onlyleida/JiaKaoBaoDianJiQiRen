.class Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    move-result-object v1

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->f(DDD)V

    :cond_0
    return-void
.end method
