.class public final Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/FilterCalibrationProcessor;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/CalibrationProcessor;",
        "()V",
        "kalmanFilter",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;",
        "process",
        "Landroid/location/Location;",
        "location",
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
.field private final a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/b;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)Landroid/location/Location;
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/b;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->b(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    const-string v0, "kalmanFilter.gpsCalibration(location)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
