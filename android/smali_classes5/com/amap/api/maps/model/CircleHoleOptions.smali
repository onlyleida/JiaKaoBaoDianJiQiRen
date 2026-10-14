.class public Lcom/amap/api/maps/model/CircleHoleOptions;
.super Lcom/amap/api/maps/model/BaseHoleOptions;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/maps/model/CircleHoleOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private point:Lcom/amap/api/maps/model/LatLng;

.field private radius:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/CircleHoleOptions$1;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CircleHoleOptions$1;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/CircleHoleOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseHoleOptions;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->point:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->radius:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/maps/model/BaseHoleOptions;->isPolygonHoleOptions:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseHoleOptions;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->point:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->radius:D

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-string v2, "lat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "lng"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->point:Lcom/amap/api/maps/model/LatLng;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->radius:D

    return-void
.end method


# virtual methods
.method public center(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CircleHoleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->point:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->point:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->radius:D

    return-wide v0
.end method

.method public radius(D)Lcom/amap/api/maps/model/CircleHoleOptions;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->radius:D

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->point:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-string v2, "lat"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->point:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-string v2, "lng"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 6
    iget-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->radius:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
