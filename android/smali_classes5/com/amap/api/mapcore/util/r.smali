.class public Lcom/amap/api/mapcore/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps/interfaces/IGlOverlayLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/r$a;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Lcom/amap/api/mapcore/util/h2;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/ha;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I

.field private volatile g:Z

.field private h:Ljava/lang/Runnable;

.field i:Lcom/amap/api/mapcore/util/r$a;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/r;->c:I

    .line 3
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 5
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->f:[I

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/r;->g:Z

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Lcom/amap/api/mapcore/util/r$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/r$b;-><init>(Lcom/amap/api/mapcore/util/r;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->h:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lcom/amap/api/mapcore/util/r$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/r$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/amap/api/mapcore/util/r$a;

    .line 10
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    if-eqz v1, :cond_0

    .line 2
    instance-of v2, v1, Lcom/amap/api/mapcore/util/r1;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/amap/api/mapcore/util/v1;

    if-eqz v2, :cond_0

    .line 3
    :cond_1
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/r;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    return-object p0
.end method

.method private p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r;->y()V

    return-void
.end method


# virtual methods
.method public A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object v0
.end method

.method public B()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    return-object v0
.end method

.method public IsCircleContainPoint(Lcom/amap/api/maps/model/CircleOptions;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public IsPolygonContainsPoint(Lcom/amap/api/maps/model/PolygonOptions;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized b()Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/r1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/r1;-><init>(Lcom/amap/api/mapcore/util/r;)V

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->b:Lcom/amap/api/mapcore/util/h2;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r1;->a(Lcom/amap/api/mapcore/util/h2;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;
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
    new-instance v0, Lcom/amap/api/mapcore/util/z1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/z1;-><init>(Lcom/amap/api/mapcore/util/r;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/z1;->d(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/autonavi/amap/mapcore/interfaces/IHeatMapLayer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/v1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/v1;-><init>(Lcom/amap/api/mapcore/util/r;)V

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->b:Lcom/amap/api/mapcore/util/h2;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/v1;->a(Lcom/amap/api/mapcore/util/h2;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/v1;->setOptions(Lcom/amap/api/maps/model/HeatMapLayerOptions;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcom/amap/api/maps/model/ArcOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IArcDelegate;
    .locals 2
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
    new-instance v0, Lcom/amap/api/mapcore/util/q1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/q1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q1;->setStrokeColor(I)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStart()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q1;->setStart(Lcom/amap/api/maps/model/LatLng;)V

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getPassed()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q1;->setPassed(Lcom/amap/api/maps/model/LatLng;)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getEnd()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q1;->setEnd(Lcom/amap/api/maps/model/LatLng;)V

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q1;->setVisible(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q1;->setStrokeWidth(F)V

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q1;->setZIndex(F)V

    .line 10
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Lcom/amap/api/maps/model/CircleOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/ICircleDelegate;
    .locals 3
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
    new-instance v0, Lcom/amap/api/mapcore/util/s1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/s1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setFillColor(I)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setVisible(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setHoleOptions(Ljava/util/List;)V

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setStrokeWidth(F)V

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setZIndex(F)V

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setStrokeColor(I)V

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/s1;->setRadius(D)V

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeDottedLineType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s1;->setDottedLineType(I)V

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isUsePolylineStroke()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/s1;->f(Z)V

    .line 13
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IGroundOverlayDelegate;
    .locals 3
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
    new-instance v0, Lcom/amap/api/mapcore/util/u1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/u1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/r;)V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/u1;->setAnchor(FF)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/u1;->setDimensions(FF)V

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u1;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u1;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u1;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u1;->setBearing(F)V

    .line 13
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u1;->setTransparency(F)V

    .line 14
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u1;->setVisible(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u1;->setZIndex(F)V

    .line 16
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentParticleNum(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNearestLatLng(Lcom/amap/api/maps/model/PolylineOptions;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized h(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/INavigateArrowDelegate;
    .locals 2
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
    new-instance v0, Lcom/amap/api/mapcore/util/y1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/y1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getTopColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y1;->setTopColor(I)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getSideColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y1;->setSideColor(I)V

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y1;->setPoints(Ljava/util/List;)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y1;->setVisible(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y1;->setWidth(F)V

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y1;->setZIndex(F)V

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/y1;->set3DModel(Z)V

    .line 10
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->isDrawFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    instance-of v2, v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, v1

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    invoke-interface {v2, p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 5
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolygonDelegate;
    .locals 2
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
    new-instance v0, Lcom/amap/api/mapcore/util/a2;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/a2;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->setFillColor(I)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->setPoints(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->setHoleOptions(Ljava/util/List;)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->setVisible(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->setStrokeWidth(F)V

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->setStrokeColor(I)V

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->setZIndex(F)V

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getLineJoinType()Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a2;->c(Lcom/amap/api/maps/model/AMapPara$LineJoinType;)V

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isUsePolylineStroke()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/a2;->g(Z)V

    .line 12
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;
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
    new-instance v0, Lcom/amap/api/mapcore/util/b2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/b2;-><init>(Lcom/amap/api/mapcore/util/r;Lcom/amap/api/maps/model/PolylineOptions;)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r;->b:Lcom/amap/api/mapcore/util/h2;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/b2;->i(Lcom/amap/api/mapcore/util/h2;)V

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/r;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->c:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amap/api/mapcore/util/r;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n(Lcom/amap/api/mapcore/util/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->b:Lcom/amap/api/mapcore/util/h2;

    return-void
.end method

.method public o(Lcom/amap/api/mapcore/util/ha;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public prepareIcon(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public processCircleHoleOption(Lcom/amap/api/maps/model/CircleOptions;)V
    .locals 0

    return-void
.end method

.method public processPolygonHoleOption(Lcom/amap/api/maps/model/PolygonOptions;)V
    .locals 0

    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized r(ZI)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r;->z()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/r;->g:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->h:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/r;->g:Z

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    .line 9
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x14

    if-le v1, v4, :cond_4

    .line 10
    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->checkInBounds()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v4

    int-to-float v5, p2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 12
    invoke-interface {v3, v0}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v4

    int-to-float v5, p2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 14
    invoke-interface {v3, v0}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 15
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v4

    int-to-float v5, p2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 16
    invoke-interface {v3, v0}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v4

    int-to-float v5, p2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 18
    invoke-interface {v3, v0}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "GlOverlayLayer"

    const-string v0, "draw"

    .line 19
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :cond_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeOverlay(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/r;->s(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized s(Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/r;->v(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t()Lcom/amap/api/mapcore/util/h2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Lcom/amap/api/mapcore/util/h2;

    return-object v0
.end method

.method public declared-synchronized u(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/r;->C()V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    .line 4
    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "GlOverlayLayer"

    const-string v1, "clear"

    .line 9
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method declared-synchronized v(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized w()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/amap/api/mapcore/util/r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized x()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/r;->u(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "GlOverlayLayer"

    const-string v2, "destory"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized y()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/r;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/ha;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->x()V

    .line 5
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->y()I

    move-result v4

    if-gtz v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/amap/api/mapcore/util/r;->f:[I

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v5

    aput v5, v4, v1

    .line 7
    iget-object v4, p0, Lcom/amap/api/mapcore/util/r;->f:[I

    const/4 v5, 0x1

    invoke-static {v5, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 8
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    .line 9
    iget-object v4, p0, Lcom/amap/api/mapcore/util/r;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
