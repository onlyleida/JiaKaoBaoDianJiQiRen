.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/overlays/IPolygonDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IPolygon;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# virtual methods
.method public abstract getHoles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isGeodesic()Z
.end method

.method public abstract setGeodesic(Z)V
.end method

.method public abstract setHoles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
