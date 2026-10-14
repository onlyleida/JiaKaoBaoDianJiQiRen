.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->d(Lcom/amap/api/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3setting/route/detail/mark/MyLocationMark$updateLoc$1$1",
        "Lcom/amap/api/maps/model/animation/Animation$AnimationListener;",
        "onAnimationEnd",
        "",
        "onAnimationStart",
        "k3setting_release"
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
.field final synthetic a:Lcom/amap/api/maps/model/Marker;

.field final synthetic b:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/model/Marker;Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b$a;->a:Lcom/amap/api/maps/model/Marker;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b$a;->b:Lcom/amap/api/maps/model/LatLng;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b$a;->a:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b$a;->b:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
