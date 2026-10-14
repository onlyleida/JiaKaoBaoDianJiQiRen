.class public Lcom/amap/api/mapcore/util/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/r;

.field b:J

.field private c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:F

.field private i:Z

.field private j:Lcom/amap/api/mapcore/util/h2;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/r;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/r1;->f:Z

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r1;->a:Lcom/amap/api/mapcore/util/r;

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-direct {p1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    .line 8
    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setVisible(Z)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-wide v2, -0x3f99833333333333L    # -179.9

    const-wide v4, 0x405539999999999aL    # 84.9

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-wide v6, 0x40667ccccccccccdL    # 179.9

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const-wide v4, -0x3faac66666666666L    # -84.9

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingLatlngs(Ljava/util/List;)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingTopColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const v1, -0xbbbbbc

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingSideColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setVisible(Z)V

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setZIndex(F)V

    .line 19
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r1;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r1;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/r1;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "BuildingOverlayDelegateImp"

    const-string v1, "create"

    .line 22
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r1;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/r1;->i:Z

    .line 7
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r1;->j:Lcom/amap/api/mapcore/util/h2;

    return-void
.end method

.method public calMapFPoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public checkInBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeDestory(J)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/api/mapcore/util/r1;->e:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    .line 8
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 2
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 4
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/r1;->i:Z

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeClearBuildingOptions(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/r1;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BuildingOverlayOptions;

    .line 8
    iget-wide v3, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    invoke-static {v3, v4, v2}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->addBuildingOptions(JLcom/amap/api/maps/model/BuildingOverlayOptions;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/r1;->i:Z

    .line 10
    :cond_2
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getViewMatrix()[F

    move-result-object v2

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v6

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCurTileIds()[I

    move-result-object v7

    .line 12
    invoke-static/range {v0 .. v7}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->render(J[F[FIIF[I)V

    .line 13
    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 14
    :cond_4
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/r1;->b:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->j:Lcom/amap/api/mapcore/util/h2;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/h2;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;->nativeSetGLShaderManager(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getCustomOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->e:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultOptions()Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->a:Lcom/amap/api/mapcore/util/r;

    const-string v1, "Building"

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r1;->g:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/r1;->h:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/r1;->f:Z

    return v0
.end method

.method public remove()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r1;->a:Lcom/amap/api/mapcore/util/r;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r1;->g:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/r;->s(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r1;->destroy()V

    :cond_0
    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setCustomOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r1;->e:Ljava/util/List;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/r1;->b(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultOptions(Lcom/amap/api/maps/model/BuildingOverlayOptions;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/r1;->b(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/r1;->f:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 1
    :try_start_0
    iput p1, p0, Lcom/amap/api/mapcore/util/r1;->h:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->y()V

    .line 3
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r1;->c:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget v0, p0, Lcom/amap/api/mapcore/util/r1;->h:F

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setZIndex(F)V

    .line 5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 6
    :try_start_2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/r1;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
