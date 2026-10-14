.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMarker;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;


# virtual methods
.method public abstract anchorUVoff()Lcom/autonavi/base/amap/mapcore/FPoint;
.end method

.method public abstract getAnchor()Lcom/autonavi/amap/mapcore/IPoint;
.end method

.method public abstract getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;
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
