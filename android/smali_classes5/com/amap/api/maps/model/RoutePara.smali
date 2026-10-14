.class public Lcom/amap/api/maps/model/RoutePara;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private drivingRouteStyle:I

.field private endName:Ljava/lang/String;

.field private endPoint:Lcom/amap/api/maps/model/LatLng;

.field private startName:Ljava/lang/String;

.field private startPoint:Lcom/amap/api/maps/model/LatLng;

.field private transitRouteStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/maps/model/RoutePara;->drivingRouteStyle:I

    .line 3
    iput v0, p0, Lcom/amap/api/maps/model/RoutePara;->transitRouteStyle:I

    return-void
.end method


# virtual methods
.method public getDrivingRouteStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/RoutePara;->drivingRouteStyle:I

    return v0
.end method

.method public getEndName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->endName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->endPoint:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getStartName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->startName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPoint()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->startPoint:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getTransitRouteStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/RoutePara;->transitRouteStyle:I

    return v0
.end method

.method public setDrivingRouteStyle(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/RoutePara;->drivingRouteStyle:I

    :cond_0
    return-void
.end method

.method public setEndName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->endName:Ljava/lang/String;

    return-void
.end method

.method public setEndPoint(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->endPoint:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public setStartName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->startName:Ljava/lang/String;

    return-void
.end method

.method public setStartPoint(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->startPoint:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public setTransitRouteStyle(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/RoutePara;->transitRouteStyle:I

    :cond_0
    return-void
.end method
