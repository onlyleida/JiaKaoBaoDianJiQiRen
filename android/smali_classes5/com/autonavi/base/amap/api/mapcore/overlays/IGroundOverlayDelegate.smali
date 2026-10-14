.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/overlays/IGroundOverlayDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# virtual methods
.method public abstract reLoadTexture()V
.end method

.method public abstract setAnchor(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
