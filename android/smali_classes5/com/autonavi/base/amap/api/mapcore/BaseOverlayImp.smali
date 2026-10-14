.class public abstract Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getObject()Ljava/lang/Object;
.end method

.method public abstract getPosition()Lcom/amap/api/maps/model/LatLng;
.end method

.method public abstract getRotateAngle()F
.end method

.method public abstract getSnippet()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public isDraggable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoWindowAutoOverturn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isVisible()Z
.end method

.method public abstract remove()Z
.end method

.method public abstract setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
.end method

.method public abstract setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
.end method

.method public abstract setObject(Ljava/lang/Object;)V
.end method

.method public abstract setPosition(Lcom/amap/api/maps/model/LatLng;)V
.end method

.method public abstract setRotateAngle(F)V
.end method

.method public abstract setSnippet(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method
