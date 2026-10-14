.class public interface abstract Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getCustomOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultOptions()Lcom/amap/api/maps/model/BuildingOverlayOptions;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getZIndex()F
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setCustomOptions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDefaultOptions(Lcom/amap/api/maps/model/BuildingOverlayOptions;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setZIndex(F)V
.end method
