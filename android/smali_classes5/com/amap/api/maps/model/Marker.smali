.class public final Lcom/amap/api/maps/model/Marker;
.super Lcom/amap/api/maps/model/BasePointOverlay;
.source "SourceFile"


# instance fields
.field private markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BasePointOverlay;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->destroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/amap/api/maps/model/Marker;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    check-cast p1, Lcom/amap/api/maps/model/Marker;

    iget-object p1, p1, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    .line 3
    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getAlpha()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getAnchorU()F

    move-result v0

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getAnchorV()F

    move-result v0

    return v0
.end method

.method public getDisplayLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getDisplayLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method public getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    return-object v0
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getOptions()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getPeriod()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getRotateAngle()F

    move-result v0

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getSnippet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->hideInfoWindow()V
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

.method public isClickable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isClickable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isFlat()Z

    move-result v0

    return v0
.end method

.method public isInfoWindowAutoOverturn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoWindowEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isInfoWindowShown()Z

    move-result v0

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isPerspective()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isRemoved()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->remove()Z
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

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAnchor(FF)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setAnchor(FF)V
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

.method public setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setAutoOverturnInfoWindow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setAutoOverturnInfoWindow(Z)V

    :cond_0
    return-void
.end method

.method public setBelowMaskLayer(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setBelowMaskLayer(Z)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setDisplayLevel(I)V

    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setDraggable(Z)V
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

.method public setFixingPointEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setFixingPointEnable(Z)V

    :cond_0
    return-void
.end method

.method public setFlat(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setFlat(Z)V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    return-void
.end method

.method public setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setIcons(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setIcons(Ljava/util/ArrayList;)V
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

.method public setInfoWindowEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setInfoWindowEnable(Z)V

    :cond_0
    return-void
.end method

.method public setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    :cond_0
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPeriod(I)V
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

.method public setPerspective(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPerspective(Z)V
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

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
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

.method public setPositionByPixels(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPositionByPixels(II)V

    return-void
.end method

.method public setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setRotateAngle(F)V
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

.method public setRotateAngleNotUpdate(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setRotateAngleNotUpdate(F)V

    :cond_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setSnippet(Ljava/lang/String;)V
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

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setTitle(Ljava/lang/String;)V
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

.method public setToTop()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->set2Top()V
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

.method public setVisible(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setVisible(Z)V
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

.method public setZIndex(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setZIndex(F)V

    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->showInfoWindow()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->startAnimation()Z

    move-result v0

    return v0
.end method
