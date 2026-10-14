.class public Lcom/amap/api/mapcore/util/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ab$a;
    }
.end annotation


# instance fields
.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Landroid/content/Context;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/amap/api/mapcore/util/ab$a;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/amap/api/mapcore/util/f2;

.field g:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/ab$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ab$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ab;->d:Lcom/amap/api/mapcore/util/ab$a;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ab;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ab;->g:[F

    .line 7
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 8
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ab;->b:Landroid/content/Context;

    .line 9
    new-instance p1, Lcom/amap/api/mapcore/util/u2;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p2

    const/16 v0, 0x100

    invoke-direct {p1, v0, v0, p2}, Lcom/amap/api/mapcore/util/u2;-><init>(IILcom/autonavi/base/amap/mapcore/MapConfig;)V

    .line 10
    new-instance p2, Lcom/amap/api/maps/model/TileOverlayOptions;

    invoke-direct {p2}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>()V

    .line 11
    invoke-virtual {p2, p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object p1

    const/high16 p2, 0xa00000

    .line 12
    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    const/16 p2, 0x5000

    .line 13
    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 14
    new-instance p2, Lcom/amap/api/mapcore/util/f2;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Lcom/amap/api/mapcore/util/f2;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/ab;Z)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    return-void
.end method

.method private q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/f2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/amap/api/mapcore/util/f2;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/ab;Z)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ab;->d(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/f2;->refresh(Z)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 6
    new-instance p1, Lcom/amap/api/maps/model/TileOverlay;

    invoke-direct {p1, v1}, Lcom/amap/api/maps/model/TileOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ab;->i(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)Z

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ab;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/f2;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ab;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/f2;->refresh(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f2;->c()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/f2;->refresh(Z)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f2;->c()V

    .line 13
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 15
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_5

    .line 16
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-interface {v3, p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->refresh(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_6
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "TileOverlayView"

    const-string v1, "refresh"

    .line 19
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->f0(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ab;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f2;->drawTiles()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 9
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    .line 10
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->drawTiles()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_2
    return-void
.end method

.method public h(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/f2;->onFling(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v3, p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->onFling(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 4
    invoke-interface {v3, v4}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->destroy(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ab;->d:Lcom/amap/api/mapcore/util/ab$a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f2;->onResume()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;->onResume()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->b:Landroid/content/Context;

    return-object v0
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ab;->j()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f2;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/f2;->destroy(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    return-void
.end method

.method public o()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->g:[F

    return-object v0
.end method

.method public p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->f:Lcom/amap/api/mapcore/util/f2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f2;->clearTileCache()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->b:Landroid/content/Context;

    const-string v1, "Map3DCache"

    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/h3;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ab;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->clearTileCache()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
