.class public final Lcom/amap/api/maps/model/GroundOverlay;
.super Lcom/amap/api/maps/model/BaseOverlay;
.source "SourceFile"


# instance fields
.field private glOverlayLayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/maps/interfaces/IGlOverlayLayer;",
            ">;"
        }
    .end annotation
.end field

.field private high:F

.field private iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

.field private options:Lcom/amap/api/maps/model/GroundOverlayOptions;

.field private point:Lcom/amap/api/maps/model/LatLng;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/GroundOverlayOptions;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    .line 2
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    instance-of v1, p1, Lcom/amap/api/maps/model/GroundOverlay;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lcom/amap/api/maps/model/GroundOverlay;

    iget-object p1, p1, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    check-cast p1, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlay;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return v0
.end method

.method public getBearing()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBearing()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getHeight()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getTransparency()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getTransparency()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getWidth()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getWidth()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getZIndex()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBearing(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setBearing(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->bearing(F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDimensions(F)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(F)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 5
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->width:F

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 7
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setDimensions(FF)V
    .locals 2

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(FF)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 13
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->width:F

    .line 14
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlay;->high:F

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 16
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->image(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 4
    iget v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->width:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 5
    :goto_0
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->high:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v0

    :goto_1
    cmpl-float v3, v1, v2

    if-nez v3, :cond_3

    .line 6
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    goto :goto_2

    :cond_3
    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    .line 7
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 8
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v2, p1, v1, v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 10
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->positionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTransparency(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setTransparency(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency(F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->visible(Z)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex(F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
