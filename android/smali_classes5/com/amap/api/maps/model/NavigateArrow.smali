.class public Lcom/amap/api/maps/model/NavigateArrow;
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

.field private navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

.field private options:Lcom/amap/api/maps/model/NavigateArrowOptions;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/NavigateArrowOptions;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

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

    iget-object v2, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    instance-of v1, p1, Lcom/amap/api/maps/model/NavigateArrow;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lcom/amap/api/maps/model/NavigateArrow;

    iget-object p1, p1, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    .line 4
    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    check-cast p1, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrow;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrow;->getId()Ljava/lang/String;

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

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

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

.method public getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getPoints()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getPoints()Ljava/util/List;

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

.method public getSideColor()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getSideColor()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getSideColor()I

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

.method public getTopColor()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getTopColor()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getTopColor()I

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
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getWidth()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getWidth()F

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
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getZIndex()F

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
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->hashCodeRemote()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public is3DModel()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->is3DModel()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel()Z

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

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible()Z

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
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public set3DModel(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->set3DModel(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->set3DModel(Z)Lcom/amap/api/maps/model/NavigateArrowOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setPoints(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSideColor(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setSideColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->sideColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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

.method public setTopColor(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setTopColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->topColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->visible(Z)Lcom/amap/api/maps/model/NavigateArrowOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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

.method public setWidth(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setWidth(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->width(F)Lcom/amap/api/maps/model/NavigateArrowOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->zIndex(F)Lcom/amap/api/maps/model/NavigateArrowOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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
