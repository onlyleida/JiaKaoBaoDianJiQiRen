.class public Lcom/amap/api/mapcore/util/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/x;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

.field private c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field d:Lcom/amap/api/mapcore/util/h2;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method

.method private c(Lcom/amap/api/mapcore/util/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/h2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShaderManager()Lcom/amap/api/mapcore/util/h2;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/z;->d:Lcom/amap/api/mapcore/util/h2;

    return-object v0
.end method

.method public declared-synchronized b(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    monitor-exit p0

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/mapcore/util/y;-><init>(Lcom/amap/api/maps/model/MultiPointOverlayOptions;Lcom/amap/api/mapcore/util/z;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/z;->c(Lcom/amap/api/mapcore/util/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lcom/amap/api/mapcore/util/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

    return-void
.end method

.method public f(Lcom/autonavi/base/amap/mapcore/MapConfig;[F[F)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/x;

    .line 3
    invoke-interface {v2, p1, p2, p3}, Lcom/amap/api/mapcore/util/x;->a(Lcom/autonavi/base/amap/mapcore/MapConfig;[F[F)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_1

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

    const-string p2, "MultiPointOverlayManagerLayer"

    const-string p3, "draw"

    .line 5
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public g(Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v3, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->onClick(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/model/MultiPointItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1, v3}, Lcom/amap/api/maps/AMap$OnMultiPointClickListener;->onPointClick(Lcom/amap/api/maps/model/MultiPointItem;)Z

    move-result v1

    .line 7
    :cond_2
    monitor-exit v0

    return v1

    .line 8
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized h()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/z;->b:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    const/4 v3, 0x0

    .line 4
    invoke-interface {v2, v3}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->destroy(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    const-string v1, "MultiPointOverlayManagerLayer"

    const-string v2, "destory"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 9
    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit v0

    goto :goto_0

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
    move-exception v0

    :try_start_3
    const-string v1, "MultiPointOverlayManagerLayer"

    const-string v2, "clear"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method
