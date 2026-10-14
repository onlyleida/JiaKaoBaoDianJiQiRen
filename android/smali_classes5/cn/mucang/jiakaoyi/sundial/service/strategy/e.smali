.class public final Lcn/mucang/jiakaoyi/sundial/service/strategy/e;
.super Lcn/mucang/sundial/android/location/LocationStrategy;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyLocationStrategy;",
        "Lcn/mucang/sundial/android/location/LocationStrategy;",
        "()V",
        "locationListener",
        "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
        "coldReboot",
        "",
        "sendLocation",
        "location",
        "Landroid/location/Location;",
        "setStartMode",
        "mode",
        "",
        "start",
        "stop",
        "sundial_release"
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
.field private a:Lcn/mucang/sundial/android/location/DefaultLocationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/location/LocationStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const v1, 0x40666666    # 3.6f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/e;->a:Lcn/mucang/sundial/android/location/DefaultLocationListener;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcn/mucang/sundial/android/location/DefaultLocationListener;->onLocationChanged(Landroid/location/Location;)V

    :goto_0
    return-void
.end method

.method public coldReboot()V
    .locals 0

    return-void
.end method

.method public setStartMode(I)V
    .locals 0

    return-void
.end method

.method public start(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V
    .locals 1

    const-string v0, "locationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/e;->a:Lcn/mucang/sundial/android/location/DefaultLocationListener;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/strategy/e;->a:Lcn/mucang/sundial/android/location/DefaultLocationListener;

    return-void
.end method
