.class public final Lcom/amap/api/maps/model/Arc;
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

.field private iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

.field private options:Lcom/amap/api/maps/model/ArcOptions;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/ArcOptions;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/Arc;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

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

    iget-object v2, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    instance-of v1, p1, Lcom/amap/api/maps/model/Arc;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lcom/amap/api/maps/model/Arc;

    iget-object p1, p1, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    .line 4
    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    check-cast p1, Lcom/amap/api/maps/model/Arc;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Arc;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/Arc;->getId()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

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

.method public getStrokeColor()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getStrokeColor()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeColor()I

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

.method public getStrokeWidth()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getStrokeWidth()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeWidth()F

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
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/ArcOptions;->getZIndex()F

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

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

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/ArcOptions;->isVisible()Z

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

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

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setStrokeColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->strokeColor(I)Lcom/amap/api/maps/model/ArcOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
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

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setStrokeWidth(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->strokeWidth(F)Lcom/amap/api/maps/model/ArcOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->visible(Z)Lcom/amap/api/maps/model/ArcOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->zIndex(F)Lcom/amap/api/maps/model/ArcOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
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
