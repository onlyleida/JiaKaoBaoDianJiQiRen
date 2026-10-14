.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IPolyline;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# virtual methods
.method public abstract contains(Lcom/amap/api/maps/model/LatLng;)Z
.end method

.method public abstract reLoadTexture()V
.end method

.method public abstract setColorValues(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCustomTextureList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract useGradient(Z)V
.end method
