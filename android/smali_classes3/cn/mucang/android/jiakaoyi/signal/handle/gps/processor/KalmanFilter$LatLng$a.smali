.class final Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;

    invoke-direct {p1, v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;-><init>(DD)V

    return-object p1
.end method

.method public b(I)[Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;
    .locals 0

    .line 1
    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng$a;->a(Landroid/os/Parcel;)Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng$a;->b(I)[Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;

    move-result-object p1

    return-object p1
.end method
