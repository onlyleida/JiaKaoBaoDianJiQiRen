.class public interface abstract Lcom/autonavi/base/amap/mapcore/IAMapEngineCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract OnIndoorBuildingActivity(I[B)V
.end method

.method public abstract cancelRequireMapData(Ljava/lang/Object;)V
.end method

.method public abstract generateRequestId()I
.end method

.method public abstract onMapRender(II)V
.end method

.method public abstract reloadMapResource(ILjava/lang/String;I)V
.end method

.method public abstract requireCharBitmap(III)[B
.end method

.method public abstract requireCharsWidths(I[III)[B
.end method

.method public abstract requireMapData(I[B)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requireMapDataAsyn(I[B)I
.end method

.method public abstract requireMapRender(III)V
.end method

.method public abstract requireMapResource(ILjava/lang/String;)[B
.end method
