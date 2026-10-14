.class public Lcom/amap/api/maps/model/GL3DModel;
.super Lcom/amap/api/maps/model/BasePointOverlay;
.source "SourceFile"


# instance fields
.field private final mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IglModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BasePointOverlay;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->destroy()V

    :cond_0
    return-void
.end method

.method public getAngle()F
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->getRotateAngle()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->getRotateAngle()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->getSnippet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->remove()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAngle(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setRotateAngle(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_0
    return-void
.end method

.method public setModelFixedLength(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setModelFixedLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRotateAngle(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setRotateAngle(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setSnippet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZoomLimit(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->setZoomLimit(F)V

    :cond_0
    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->showInfoWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startAnimation()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModel;->mModel:Lcom/autonavi/amap/mapcore/interfaces/IglModel;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IglModel;->startAnimation()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
