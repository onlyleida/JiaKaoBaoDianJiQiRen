.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;


# virtual methods
.method public abstract calFPoint()Z
.end method

.method public abstract checkInBounds()Z
.end method

.method public abstract drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
.end method

.method public abstract drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V
.end method

.method public abstract getIAnimation()Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;
.end method

.method public abstract getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
.end method

.method public abstract getRect()Landroid/graphics/Rect;
.end method

.method public abstract getTextureId()I
.end method

.method public abstract isAllowLow()Z
.end method

.method public abstract isBelowMaskLayer()Z
.end method

.method public abstract isInfoWindowShown()Z
.end method

.method public abstract isOnTap()Z
.end method

.method public abstract loadTexture(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
.end method

.method public abstract reLoadTexture()V
.end method

.method public abstract setOnTap(Z)V
.end method
