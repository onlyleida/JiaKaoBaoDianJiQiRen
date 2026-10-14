.class public final Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\"\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u000cH\u0007J\u0008\u0010\u0019\u001a\u00020\u000cH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/InternalGps;",
        "Landroid/location/LocationListener;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;",
        "processor",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/CalibrationProcessor;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/CalibrationProcessor;)V",
        "locationService",
        "Landroid/location/LocationManager;",
        "onLocationChanged",
        "",
        "location",
        "Landroid/location/Location;",
        "onProviderDisabled",
        "provider",
        "",
        "onProviderEnabled",
        "onStatusChanged",
        "p1",
        "",
        "p2",
        "Landroid/os/Bundle;",
        "start",
        "stop",
        "signal_release"
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
.field private final a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/a;

.field private final c:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/a;

    const-string p2, "location"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->c:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->b()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/a;->a(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p2, "provider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
