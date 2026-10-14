.class public Lcom/amap/api/maps/model/HeatMapItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private center:Lcom/amap/api/maps/model/LatLng;

.field private indexes:[I

.field private intensity:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/HeatMapItem;->center:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getIndexes()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/HeatMapItem;->indexes:[I

    return-object v0
.end method

.method public getIntensity()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/HeatMapItem;->intensity:D

    return-wide v0
.end method

.method public setCenter(DD)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatMapItem;->center:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public setIndexes([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/HeatMapItem;->indexes:[I

    return-void
.end method

.method public setIntensity(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/maps/model/HeatMapItem;->intensity:D

    return-void
.end method
