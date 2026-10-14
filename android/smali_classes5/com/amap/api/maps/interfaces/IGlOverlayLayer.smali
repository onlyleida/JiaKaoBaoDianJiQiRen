.class public interface abstract Lcom/amap/api/maps/interfaces/IGlOverlayLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract IsCircleContainPoint(Lcom/amap/api/maps/model/CircleOptions;Lcom/amap/api/maps/model/LatLng;)Z
.end method

.method public abstract IsPolygonContainsPoint(Lcom/amap/api/maps/model/PolygonOptions;Lcom/amap/api/maps/model/LatLng;)Z
.end method

.method public abstract getCurrentParticleNum(Ljava/lang/String;)I
.end method

.method public abstract getNearestLatLng(Lcom/amap/api/maps/model/PolylineOptions;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
.end method

.method public abstract prepareIcon(Ljava/lang/Object;)V
.end method

.method public abstract processCircleHoleOption(Lcom/amap/api/maps/model/CircleOptions;)V
.end method

.method public abstract processPolygonHoleOption(Lcom/amap/api/maps/model/PolygonOptions;)V
.end method

.method public abstract removeOverlay(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateOption(Ljava/lang/String;Ljava/lang/Object;)V
.end method
