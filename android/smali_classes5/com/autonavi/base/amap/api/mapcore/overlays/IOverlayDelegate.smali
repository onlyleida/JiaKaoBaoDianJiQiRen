.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IOverlay;


# virtual methods
.method public abstract calMapFPoint()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkInBounds()Z
.end method

.method public abstract draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isDrawFinish()Z
.end method
