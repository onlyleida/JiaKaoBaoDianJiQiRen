.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkInBounds()Z
.end method

.method public abstract getAnchor()Lcom/autonavi/amap/mapcore/IPoint;
.end method

.method public abstract getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;
.end method

.method public abstract getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getInfoWindowOffsetX()I
.end method

.method public abstract getInfoWindowOffsetY()I
.end method

.method public abstract getRealInfoWindowOffsetX()I
.end method

.method public abstract getRealInfoWindowOffsetY()I
.end method

.method public abstract getRealPosition()Lcom/amap/api/maps/model/LatLng;
.end method

.method public abstract getRect()Landroid/graphics/Rect;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isContains()Z
.end method

.method public abstract isDestory()Z
.end method

.method public abstract isInfoWindowEnable()Z
.end method

.method public abstract isViewMode()Z
.end method

.method public abstract setInfoWindowOffset(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setInfoWindowShown(Z)V
.end method
