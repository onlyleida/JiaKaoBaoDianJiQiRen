.class public Lcom/amap/api/mapcore/util/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/INavigateArrowDelegate;


# instance fields
.field private A:Z

.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:F

.field private c:I

.field private d:I

.field private e:F

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field i:[I

.field j:[I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/Object;

.field q:F

.field r:F

.field s:F

.field t:F

.field u:Landroid/graphics/Rect;

.field v:Z

.field w:[F

.field x:I

.field private y:Ljava/lang/String;

.field private final z:I


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/y1;->b:F

    const/high16 v0, -0x1000000

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/y1;->c:I

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/y1;->d:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/y1;->e:F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->f:Z

    .line 7
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/y1;->i:[I

    .line 9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/y1;->j:[I

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/amap/api/mapcore/util/y1;->k:I

    .line 11
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y1;->l:Z

    .line 12
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y1;->m:Z

    .line 13
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y1;->n:Z

    .line 14
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y1;->o:Z

    .line 15
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/y1;->p:Ljava/lang/Object;

    .line 16
    iput-object v1, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    .line 17
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y1;->v:Z

    .line 18
    iput v2, p0, Lcom/amap/api/mapcore/util/y1;->x:I

    .line 19
    iput-object v1, p0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    .line 20
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/y1;->z:I

    .line 21
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->A:Z

    .line 22
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/y1;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y1;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NavigateArrowDelegateImp"

    const-string v1, "create"

    .line 24
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 26
    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y1;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/y1;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/y1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    return-object p1
.end method

.method private c()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v5, v6, v3, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Latlng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 7
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v7, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/y1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public calMapFPoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public checkInBounds()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/autonavi/base/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->H(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 9
    iget-object v4, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    iget-object v3, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4, v1}, Lcom/amap/api/mapcore/util/r3;->h0(Landroid/graphics/Rect;II)V

    move-object v1, v2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/amap/api/mapcore/util/y1;->k:I

    .line 13
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y1;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->sort()V

    .line 14
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 15
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/amap/api/mapcore/util/y1;->i:[I

    .line 16
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/amap/api/mapcore/util/y1;->j:[I

    .line 17
    iget-object v1, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    .line 18
    iget-object v4, p0, Lcom/amap/api/mapcore/util/y1;->i:[I

    iget v5, v3, Landroid/graphics/Point;->x:I

    aput v5, v4, v2

    .line 19
    iget-object v4, p0, Lcom/amap/api/mapcore/util/y1;->j:[I

    iget v3, v3, Landroid/graphics/Point;->y:I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/y1;->remove()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->w:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/y1;->w:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "NavigateArrowDelegateImp"

    const-string v2, "destroy"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "destroy erro"

    const-string v1, "NavigateArrowDelegateImp destroy"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/y1;->v:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/amap/api/mapcore/util/y1;->b:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/y1;->m:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 4
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/y1;->n:Z

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    iget-object v7, v0, Lcom/amap/api/mapcore/util/y1;->i:[I

    iget-object v8, v0, Lcom/amap/api/mapcore/util/y1;->j:[I

    iget v9, v0, Lcom/amap/api/mapcore/util/y1;->c:I

    iget v10, v0, Lcom/amap/api/mapcore/util/y1;->d:I

    iget v11, v0, Lcom/amap/api/mapcore/util/y1;->z:I

    iget v12, v0, Lcom/amap/api/mapcore/util/y1;->b:F

    const/16 v13, 0x6f

    const/16 v14, 0xde

    const/16 v15, 0x14d

    const/16 v16, 0x0

    invoke-virtual/range {v4 .. v16}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->updateNativeArrowOverlay(ILjava/lang/String;[I[IIIIFIIIZ)V

    .line 6
    iput-boolean v3, v0, Lcom/amap/api/mapcore/util/y1;->A:Z

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/y1;->e(Lcom/autonavi/base/amap/mapcore/MapConfig;)Z

    .line 8
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->w:[F

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/amap/api/mapcore/util/y1;->k:I

    if-lez v1, :cond_5

    .line 9
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    iget v4, v0, Lcom/amap/api/mapcore/util/y1;->b:F

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v7

    .line 10
    iget-object v5, v0, Lcom/amap/api/mapcore/util/y1;->w:[F

    iget v6, v0, Lcom/amap/api/mapcore/util/y1;->x:I

    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 11
    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v8

    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v9

    iget v10, v0, Lcom/amap/api/mapcore/util/y1;->r:F

    iget v11, v0, Lcom/amap/api/mapcore/util/y1;->s:F

    iget v12, v0, Lcom/amap/api/mapcore/util/y1;->t:F

    iget v13, v0, Lcom/amap/api/mapcore/util/y1;->q:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 12
    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    .line 13
    invoke-static/range {v5 .. v20}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    .line 14
    iput-boolean v3, v0, Lcom/amap/api/mapcore/util/y1;->n:Z

    .line 15
    iput-boolean v3, v0, Lcom/amap/api/mapcore/util/y1;->o:Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 18
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    sget-object v4, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ARROW:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addNativeOverlay(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    .line 19
    :cond_4
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/y1;->A:Z

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    iget-object v7, v0, Lcom/amap/api/mapcore/util/y1;->i:[I

    iget-object v8, v0, Lcom/amap/api/mapcore/util/y1;->j:[I

    iget v9, v0, Lcom/amap/api/mapcore/util/y1;->c:I

    iget v10, v0, Lcom/amap/api/mapcore/util/y1;->d:I

    iget v11, v0, Lcom/amap/api/mapcore/util/y1;->z:I

    iget v12, v0, Lcom/amap/api/mapcore/util/y1;->b:F

    const/16 v13, 0x6f

    const/16 v14, 0xde

    const/16 v15, 0x14d

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/y1;->f:Z

    move/from16 v16, v1

    invoke-virtual/range {v4 .. v16}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->updateNativeArrowOverlay(ILjava/lang/String;[I[IIIIFIIIZ)V

    .line 21
    iput-boolean v2, v0, Lcom/amap/api/mapcore/util/y1;->n:Z

    .line 22
    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/y1;->f:Z

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/y1;->o:Z

    .line 23
    iput-boolean v3, v0, Lcom/amap/api/mapcore/util/y1;->A:Z

    .line 24
    :cond_5
    :goto_0
    iput-boolean v2, v0, Lcom/amap/api/mapcore/util/y1;->l:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public e(Lcom/autonavi/base/amap/mapcore/MapConfig;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-int v1, v1

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int p1, v2

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/y1;->l:Z

    .line 5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/amap/api/mapcore/util/y1;->w:[F

    if-eqz v4, :cond_0

    array-length v4, v4

    mul-int/lit8 v5, v3, 0x3

    if-ge v4, v5, :cond_1

    :cond_0
    mul-int/lit8 v4, v3, 0x3

    .line 7
    new-array v4, v4, [F

    iput-object v4, p0, Lcom/amap/api/mapcore/util/y1;->w:[F

    :cond_1
    mul-int/lit8 v3, v3, 0x3

    .line 8
    iput v3, p0, Lcom/amap/api/mapcore/util/y1;->x:I

    .line 9
    iget-object v3, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/IPoint;

    .line 10
    iget-object v5, p0, Lcom/amap/api/mapcore/util/y1;->w:[F

    mul-int/lit8 v6, v2, 0x3

    iget v7, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    aput v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    .line 11
    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p1

    int-to-float v4, v4

    aput v4, v5, v7

    add-int/lit8 v6, v6, 0x2

    const/4 v4, 0x0

    .line 12
    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y1;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/y1;->k:I

    .line 14
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/y1;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "NavigateArrow"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/y1;->g:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y1;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSideColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/y1;->d:I

    return v0
.end method

.method public getTopColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/y1;->c:I

    return v0
.end method

.method public getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/y1;->b:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/y1;->e:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public is3DModel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->m:Z

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->l:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->m:Z

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->f:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->v:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance v1, Lcom/amap/api/mapcore/util/y1$a;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/y1$a;-><init>(Lcom/amap/api/mapcore/util/y1;)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/y1;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y1;->v:Z

    return-void
.end method

.method public set3DModel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->m:Z

    .line 2
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->f:Z

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->o:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->A:Z

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/y1;->d(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->A:Z

    return-void
.end method

.method public setSideColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/y1;->d:I

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->A:Z

    return-void
.end method

.method public setTopColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/y1;->c:I

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/y1;->q:F

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/y1;->r:F

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/y1;->s:F

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/amap/api/mapcore/util/y1;->t:F

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->A:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->f:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->A:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/y1;->b:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/y1;->A:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/y1;->e:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
