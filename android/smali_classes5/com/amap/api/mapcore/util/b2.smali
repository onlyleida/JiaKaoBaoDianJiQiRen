.class public Lcom/amap/api/mapcore/util/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private K:F

.field private M:F

.field private N:F

.field private Q:[F

.field private T:[I

.field private U:[I

.field private V:Z

.field private W:Lcom/autonavi/base/amap/mapcore/FPointBounds;

.field X:Landroid/graphics/Rect;

.field private Y:Lcom/amap/api/maps/model/PolylineOptions;

.field private Z:I

.field private a:Lcom/amap/api/mapcore/util/r;

.field private a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

.field private b:Ljava/lang/String;

.field private b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Lcom/amap/api/mapcore/util/h2;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d0:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private e0:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private f0:F

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/ha;",
            ">;"
        }
    .end annotation
.end field

.field private g0:F

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h0:F

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i0:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k0:Z

.field private l:Ljava/nio/FloatBuffer;

.field l0:I

.field private m:Lcom/amap/api/maps/model/BitmapDescriptor;

.field m0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/base/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Object;

.field n0:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/r;Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->f:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->j:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 12
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b2;->o:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b2;->p:Z

    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->q:Z

    .line 16
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->r:Z

    .line 17
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->s:Z

    .line 18
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b2;->t:Z

    .line 19
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->u:Z

    .line 20
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->v:Z

    .line 21
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b2;->w:Z

    .line 22
    iput v2, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    .line 23
    iput v2, p0, Lcom/amap/api/mapcore/util/b2;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    iput v1, p0, Lcom/amap/api/mapcore/util/b2;->z:F

    const/high16 v3, -0x1000000

    .line 25
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->A:I

    .line 26
    iput v2, p0, Lcom/amap/api/mapcore/util/b2;->B:I

    .line 27
    iput v2, p0, Lcom/amap/api/mapcore/util/b2;->C:I

    const/high16 v3, 0x41200000    # 10.0f

    .line 28
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->D:F

    const/4 v3, 0x0

    .line 29
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->E:F

    .line 30
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->F:F

    .line 31
    iput v1, p0, Lcom/amap/api/mapcore/util/b2;->M:F

    .line 32
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->N:F

    .line 33
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->V:Z

    .line 34
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->W:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    .line 35
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->X:Landroid/graphics/Rect;

    .line 36
    iput v2, p0, Lcom/amap/api/mapcore/util/b2;->Z:I

    .line 37
    sget-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->LineJoinBevel:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    .line 38
    sget-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapRound:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/b2;->d0:J

    .line 40
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->e0:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 41
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->f0:F

    .line 42
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->g0:F

    .line 43
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->h0:F

    const/4 v3, -0x1

    .line 44
    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->i0:I

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    .line 46
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->k0:Z

    .line 47
    iput v2, p0, Lcom/amap/api/mapcore/util/b2;->l0:I

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    .line 49
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/b2;->n0:J

    .line 50
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 51
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/b2;->setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b2;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PolylineDelegateImp"

    const-string v0, "create"

    .line 53
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private A(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 26

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_2

    .line 4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-direct {v1, v4, v0, v2}, Lcom/amap/api/mapcore/util/b2;->c(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->v()F

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/b2;->z:F

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_1
    iput v4, v1, Lcom/amap/api/mapcore/util/b2;->y:I

    .line 9
    iput-boolean v2, v1, Lcom/amap/api/mapcore/util/b2;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    :try_start_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    const-string v3, "loadtexture"

    .line 11
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 14
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    cmpl-double v9, v4, v6

    if-nez v9, :cond_4

    iget-object v10, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    if-eqz v10, :cond_4

    .line 15
    iget v4, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    if-le v4, v8, :cond_4

    .line 16
    iget v11, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget v13, v1, Lcom/amap/api/mapcore/util/b2;->y:I

    iget v14, v1, Lcom/amap/api/mapcore/util/b2;->z:F

    iget v15, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v4, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    iget v5, v1, Lcom/amap/api/mapcore/util/b2;->M:F

    sub-float v19, v0, v5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 17
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v23

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v24

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v25

    move/from16 v12, p1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .line 18
    invoke-static/range {v10 .. v25}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    return-void

    .line 19
    :cond_4
    iput v3, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    .line 21
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    .line 22
    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/b2;->s([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 23
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 24
    :try_start_3
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-static {v2, v5, v3}, Lcom/amap/api/mapcore/util/r3;->G([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 25
    monitor-exit v4

    move-object v4, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0

    .line 26
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v8, :cond_6

    .line 27
    invoke-direct {v1, v4}, Lcom/amap/api/mapcore/util/b2;->y(Ljava/util/List;)V

    .line 28
    iget-object v9, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    iget v10, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget v12, v1, Lcom/amap/api/mapcore/util/b2;->y:I

    iget v13, v1, Lcom/amap/api/mapcore/util/b2;->z:F

    iget v14, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v15, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    iget v4, v1, Lcom/amap/api/mapcore/util/b2;->M:F

    sub-float v18, v0, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 29
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v22

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v23

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v24

    move/from16 v11, p1

    move/from16 v16, v2

    move/from16 v17, v3

    .line 30
    invoke-static/range {v9 .. v24}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_6
    return-void
.end method

.method private B(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->p:Z

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->f:Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/b2;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private C(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v3, :cond_0

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v6, v4, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_1
    aput v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->T:[I

    .line 9
    array-length v3, p1

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private D(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 26

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_2

    .line 4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-direct {v1, v4, v0, v2}, Lcom/amap/api/mapcore/util/b2;->c(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->v()F

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/b2;->z:F

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_1
    iput v4, v1, Lcom/amap/api/mapcore/util/b2;->y:I

    .line 9
    iput-boolean v2, v1, Lcom/amap/api/mapcore/util/b2;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    :try_start_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    const-string v3, "loadtexture"

    .line 11
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 14
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    .line 15
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v4

    if-nez v4, :cond_4

    return-void

    .line 16
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x2

    cmpl-double v9, v4, v6

    if-nez v9, :cond_5

    iget-object v10, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    if-eqz v10, :cond_5

    .line 17
    iget v4, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    if-le v4, v8, :cond_5

    .line 18
    iget v11, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 19
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->C:I

    invoke-interface {v0, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getDottedLineTextureID(I)I

    move-result v13

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v14

    iget v15, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 20
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v23

    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v24

    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v25

    move/from16 v12, p1

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    .line 21
    invoke-static/range {v10 .. v25}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    return-void

    .line 22
    :cond_5
    iput v3, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/b2;->s([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 26
    :try_start_3
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-static {v2, v0, v3}, Lcom/amap/api/mapcore/util/r3;->G([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 27
    monitor-exit v4

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0

    .line 28
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v8, :cond_7

    .line 29
    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/b2;->y(Ljava/util/List;)V

    .line 30
    iget-object v9, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    iget v10, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 31
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->C:I

    invoke-interface {v0, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getDottedLineTextureID(I)I

    move-result v12

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v13

    iget v14, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v15, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 32
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v22

    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v23

    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v24

    move/from16 v11, p1

    move/from16 v16, v0

    move/from16 v17, v2

    .line 33
    invoke-static/range {v9 .. v24}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_7
    return-void
.end method

.method private E(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 42

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    .line 2
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    cmpl-double v9, v2, v4

    if-nez v9, :cond_2

    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    if-eqz v2, :cond_2

    .line 4
    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    if-le v3, v8, :cond_2

    .line 5
    iget-wide v10, v1, Lcom/amap/api/mapcore/util/b2;->d0:J

    cmp-long v0, v10, v6

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->c0:Lcom/amap/api/mapcore/util/h2;

    if-eqz v0, :cond_1

    .line 6
    iget v13, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v15

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v4, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v5, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 8
    invoke-virtual {v6}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v24

    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v6}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v25

    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v6}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v26

    move-object v12, v2

    move/from16 v14, p1

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .line 9
    invoke-static/range {v10 .. v26}, Lcom/autonavi/base/amap/mapcore/AMapNativePolyline;->nativeDrawLineByTextureID(J[FIFIFFFFFZZZ[FII)V

    goto :goto_0

    .line 10
    :cond_1
    iget v11, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 11
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v13

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v14

    iget v15, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v4, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 12
    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v23

    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v24

    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v25

    move-object v10, v2

    move/from16 v12, p1

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    .line 13
    invoke-static/range {v10 .. v25}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    .line 14
    iput v2, v1, Lcom/amap/api/mapcore/util/b2;->Z:I

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v3

    .line 16
    invoke-direct {v1, v3}, Lcom/amap/api/mapcore/util/b2;->s([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-static {v3, v0, v2}, Lcom/amap/api/mapcore/util/r3;->G([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 19
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 20
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v8, :cond_5

    .line 21
    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/b2;->y(Ljava/util/List;)V

    .line 22
    iget-wide v9, v1, Lcom/amap/api/mapcore/util/b2;->d0:J

    cmp-long v0, v9, v6

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->c0:Lcom/amap/api/mapcore/util/h2;

    if-eqz v0, :cond_4

    .line 23
    iget-object v11, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    iget v12, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 24
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v14

    iget v15, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 25
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v23

    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v24

    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v25

    move/from16 v13, p1

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    .line 26
    invoke-static/range {v9 .. v25}, Lcom/autonavi/base/amap/mapcore/AMapNativePolyline;->nativeDrawLineByTextureID(J[FIFIFFFFFZZZ[FII)V

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 28
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v29

    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v30

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->H:F

    iget v4, v1, Lcom/amap/api/mapcore/util/b2;->I:F

    iget v5, v1, Lcom/amap/api/mapcore/util/b2;->K:F

    iget v6, v1, Lcom/amap/api/mapcore/util/b2;->G:F

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    iget-object v7, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 29
    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v39

    iget-object v7, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v40

    iget-object v7, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v7}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v41

    move-object/from16 v26, v0

    move/from16 v27, v2

    move/from16 v28, p1

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v6

    .line 30
    invoke-static/range {v26 .. v41}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_5
    :goto_2
    return-void
.end method

.method private a(DDDDDD)D
    .locals 13

    sub-double v0, p9, p5

    sub-double v2, p1, p5

    mul-double v4, v0, v2

    sub-double v6, p11, p7

    sub-double v8, p3, p7

    mul-double v10, v6, v8

    add-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpg-double v12, v4, v10

    if-gtz v12, :cond_0

    mul-double v2, v2, v2

    mul-double v8, v8, v8

    add-double/2addr v2, v8

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    mul-double v2, v0, v0

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    cmpl-double v8, v4, v2

    if-ltz v8, :cond_1

    sub-double v0, p1, p9

    mul-double v0, v0, v0

    sub-double v2, p3, p11

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_1
    div-double/2addr v4, v2

    mul-double v0, v0, v4

    add-double v0, p5, v0

    mul-double v6, v6, v4

    add-double v2, p7, v6

    sub-double v0, p1, v0

    mul-double v0, v0, v0

    sub-double v2, v2, p3

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)D
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v5, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v7, v0

    iget v0, v1, Landroid/graphics/PointF;->x:F

    float-to-double v9, v0

    iget v0, v1, Landroid/graphics/PointF;->y:F

    float-to-double v11, v0

    iget v0, v2, Landroid/graphics/PointF;->x:F

    float-to-double v13, v0

    iget v0, v2, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    move-object/from16 v4, p0

    move-wide v15, v0

    invoke-direct/range {v4 .. v16}, Lcom/amap/api/mapcore/util/b2;->a(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private c(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b2;->t()V

    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->u()I

    .line 5
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b2;->j(Lcom/amap/api/mapcore/util/ha;)V

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/amap/api/mapcore/util/ha;

    invoke-direct {v0, p2, p3}, Lcom/amap/api/mapcore/util/ha;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b2;->w()I

    move-result p3

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {v0, p3}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/mapcore/util/ha;)V

    .line 12
    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b2;->j(Lcom/amap/api/mapcore/util/ha;)V

    const/4 p1, 0x1

    .line 13
    invoke-static {p3, p2, p1}, Lcom/amap/api/mapcore/util/r3;->c0(ILandroid/graphics/Bitmap;Z)I

    :cond_4
    return-object v0
.end method

.method private e(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 7

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 5
    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-object p1
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    .line 3
    iget v1, p0, Lcom/amap/api/mapcore/util/b2;->B:I

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x1388

    if-le v1, v3, :cond_2

    const/16 v1, 0xc

    .line 4
    iget v3, p0, Lcom/amap/api/mapcore/util/b2;->F:F

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    .line 5
    iget v1, p0, Lcom/amap/api/mapcore/util/b2;->D:F

    div-float/2addr v1, v2

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43480000    # 200.0f

    :goto_0
    mul-float v0, v0, v1

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->N:F

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->N:F

    goto :goto_1

    :cond_2
    mul-float v0, v0, v2

    .line 8
    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->N:F

    :goto_1
    return-void
.end method

.method private g(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->k0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/amap/api/mapcore/util/b2;->U:[I

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/b2;->t()V

    .line 7
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 8
    invoke-direct {v1, v0, v7, v3}, Lcom/amap/api/mapcore/util/b2;->c(ZLcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v6

    .line 10
    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->v()F

    move-result v7

    iput v7, v1, Lcom/amap/api/mapcore/util/b2;->z:F

    .line 11
    :cond_2
    iget-object v7, v1, Lcom/amap/api/mapcore/util/b2;->U:[I

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iput-boolean v2, v1, Lcom/amap/api/mapcore/util/b2;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    const-string v3, "loadtexture"

    .line 13
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 15
    :try_start_1
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    .line 16
    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/b2;->s([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 18
    :try_start_2
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-static {v0, v5, v3}, Lcom/amap/api/mapcore/util/r3;->e0([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 19
    monitor-exit v4

    move-object v4, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    .line 20
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_9

    .line 21
    invoke-direct {v1, v4}, Lcom/amap/api/mapcore/util/b2;->y(Ljava/util/List;)V

    .line 22
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->j:Ljava/util/List;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 23
    :try_start_4
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v8, v10, [I

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_7

    .line 24
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->j:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_6

    const/4 v5, 0x0

    .line 25
    :cond_6
    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->U:[I

    aget v5, v6, v5

    aput v5, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26
    :cond_7
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 27
    :try_start_5
    iget-object v11, v1, Lcom/amap/api/mapcore/util/b2;->T:[I

    if-eqz v11, :cond_8

    const/4 v3, 0x1

    :cond_8
    and-int v0, v2, v3

    if-eqz v0, :cond_9

    .line 28
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    iget v6, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget v9, v1, Lcom/amap/api/mapcore/util/b2;->z:F

    array-length v12, v11

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->M:F

    sub-float v13, v0, v2

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 29
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v14

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v15

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v16

    move/from16 v7, p1

    .line 30
    invoke-static/range {v5 .. v16}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiTextureID([FIF[IFI[IIF[FII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 31
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_5
    return-void
.end method

.method private j(Lcom/amap/api/mapcore/util/ha;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ha;->w()V

    :cond_0
    return-void
.end method

.method private n(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/b2;->D:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    .line 2
    iget v1, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b2;->w:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->g(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->x(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->u(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->x(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 8
    :cond_4
    iget v1, p0, Lcom/amap/api/mapcore/util/b2;->C:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->E(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 10
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->D(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 11
    :cond_6
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b2;->w:Z

    if-eqz v1, :cond_7

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->A(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 13
    :cond_7
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->E(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    .line 14
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->E(FLcom/autonavi/base/amap/mapcore/MapConfig;)V

    :goto_0
    return-void
.end method

.method private r(Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/autonavi/base/amap/mapcore/FPoint3;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/autonavi/base/amap/mapcore/FPoint3;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget v0, v0, Lcom/autonavi/base/amap/mapcore/FPoint3;->colorIndex:I

    move-object v2, p2

    check-cast v2, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget v2, v2, Lcom/autonavi/base/amap/mapcore/FPoint3;->colorIndex:I

    if-eq v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/amap/api/mapcore/util/b2;->N:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/amap/api/mapcore/util/b2;->N:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private s([Lcom/autonavi/base/amap/mapcore/FPoint;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->F:F

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b2;->f()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 4
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore/util/b2;->F:F

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    return v2

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->W:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iget-object v0, v0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/r3;->R(Lcom/autonavi/base/amap/mapcore/FPoint;[Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->W:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    iget-object v0, v0, Lcom/autonavi/base/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 7
    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/r3;->R(Lcom/autonavi/base/amap/mapcore/FPoint;[Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_3
    return v2
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/r;->o(Lcom/amap/api/mapcore/util/ha;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private u(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 15

    move-object v1, p0

    .line 1
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 4
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 7
    :try_start_1
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    .line 8
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b2;->s([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore/util/r3;->e0([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 11
    monitor-exit v2

    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 12
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_4

    .line 13
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/b2;->y(Ljava/util/List;)V

    .line 14
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_2

    .line 15
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16
    aput v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 17
    :cond_2
    iget-object v9, v1, Lcom/amap/api/mapcore/util/b2;->T:[I

    const/4 v0, 0x1

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    :cond_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 18
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    iget v5, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    array-length v10, v9

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 19
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v11

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v12

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v13

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v14

    move/from16 v6, p1

    .line 20
    invoke-static/range {v4 .. v14}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawGradientColorLine([FIF[II[III[FII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    :catchall_2
    move-exception v0

    .line 22
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private w()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v0, v1, v2

    return v0
.end method

.method private x(FLcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 15

    move-object v1, p0

    .line 1
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 4
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 7
    :try_start_1
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    .line 8
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b2;->s([Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore/util/r3;->e0([Lcom/autonavi/base/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 11
    monitor-exit v2

    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 12
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_4

    .line 13
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/b2;->y(Ljava/util/List;)V

    .line 14
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_2

    .line 15
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16
    aput v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 17
    :cond_2
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->T:[I

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    and-int v0, v2, v3

    if-eqz v0, :cond_4

    .line 18
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    iget v5, v1, Lcom/amap/api/mapcore/util/b2;->l0:I

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 19
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v7

    iget-object v10, v1, Lcom/amap/api/mapcore/util/b2;->T:[I

    array-length v11, v10

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    .line 20
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->B()[F

    move-result-object v12

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v13

    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v14

    move/from16 v6, p1

    .line 21
    invoke-static/range {v4 .. v14}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiColor([FIFI[II[II[FII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    :catchall_2
    move-exception v0

    .line 23
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private y(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/mapcore/FPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 4
    iget-object v4, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_3

    .line 5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eq v5, v4, :cond_2

    .line 6
    invoke-direct {p0, v3, v6}, Lcom/amap/api/mapcore/util/b2;->r(Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v7, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    mul-int/lit8 p1, p1, 0x3

    .line 11
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->l0:I

    .line 12
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    if-eqz v3, :cond_4

    array-length v3, v3

    if-lt v3, p1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    new-array v3, p1, [F

    iput-object v3, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    .line 14
    :goto_3
    iget v3, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v3, v5, :cond_6

    if-eq v3, v0, :cond_6

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    goto :goto_5

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 16
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    mul-int/lit8 v5, v2, 0x3

    iget v7, v0, Landroid/graphics/PointF;->x:F

    aput v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    .line 17
    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v3, v7

    add-int/2addr v5, v1

    .line 18
    aput v6, v3, v5

    add-int/2addr v2, v4

    goto :goto_4

    .line 19
    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 21
    :goto_6
    div-int/lit8 v9, p1, 0x3

    if-ge v5, v9, :cond_a

    .line 22
    iget-object v9, p0, Lcom/amap/api/mapcore/util/b2;->m0:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/base/amap/mapcore/FPoint3;

    .line 23
    iget-object v10, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    mul-int/lit8 v11, v5, 0x3

    iget v12, v9, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    add-int/lit8 v12, v11, 0x1

    .line 24
    iget v13, v9, Landroid/graphics/PointF;->y:F

    aput v13, v10, v12

    add-int/2addr v11, v1

    .line 25
    aput v6, v10, v11

    .line 26
    iget v9, v9, Lcom/autonavi/base/amap/mapcore/FPoint3;->colorIndex:I

    if-nez v5, :cond_7

    .line 27
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    goto :goto_8

    :cond_7
    if-ne v9, v7, :cond_8

    goto :goto_9

    :cond_8
    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    goto :goto_7

    :cond_9
    move v7, v9

    .line 28
    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :goto_8
    aput v5, v3, v8

    add-int/lit8 v8, v8, 0x1

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 30
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->T:[I

    .line 31
    array-length v0, p1

    invoke-static {v3, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iput-object v4, p0, Lcom/amap/api/mapcore/util/b2;->j:Ljava/util/List;

    .line 33
    iput-object v4, p0, Lcom/amap/api/mapcore/util/b2;->k:Ljava/util/List;

    :cond_b
    return-void
.end method

.method private z()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/base/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    aget v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v3, v2}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public calMapFPoint()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->f0:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->g0:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->h0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->v(Ljava/util/List;)Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->v(Ljava/util/List;)Z

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public checkInBounds()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->e0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->X:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Lcom/autonavi/base/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    array-length v1, v0

    new-array v2, v1, [F

    .line 2
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    div-int/lit8 v1, v1, 0x3

    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    return v4

    .line 4
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b2;->z()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    iget v3, p0, Lcom/amap/api/mapcore/util/b2;->D:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v1

    float-to-double v5, v1

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v1

    float-to-double v7, v1

    .line 8
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b2;->e(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ge v3, v9, :cond_4

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/mapcore/FPoint;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 12
    invoke-direct {p0, p1, v1, v9}, Lcom/amap/api/mapcore/util/b2;->b(Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;Lcom/autonavi/base/amap/mapcore/FPoint;)D

    move-result-wide v10

    add-double v12, v7, v5

    sub-double/2addr v12, v10

    const-wide/16 v10, 0x0

    cmpl-double v1, v12, v10

    if-ltz v1, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_3
    move-object v1, v9

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :catch_0
    :cond_5
    :goto_1
    return v4
.end method

.method d(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 7

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 2
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    .line 3
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    mul-double v3, p1, p1

    mul-double v5, v1, v1

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    int-to-double v5, p6

    mul-double v5, v5, p4

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    div-double/2addr v5, p4

    iget p4, p3, Landroid/graphics/Point;->y:I

    int-to-double p4, p4

    add-double/2addr v5, p4

    double-to-int p4, v5

    iput p4, v0, Landroid/graphics/Point;->y:I

    .line 5
    iget p5, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p5, p4

    int-to-double p4, p5

    mul-double p4, p4, p1

    div-double/2addr p4, v1

    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-double p1, p1

    add-double/2addr p4, p1

    double-to-int p1, p4

    iput p1, v0, Landroid/graphics/Point;->x:I

    return-object v0
.end method

.method public destroy()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b2;->remove()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/r;->o(Lcom/amap/api/mapcore/util/ha;)V

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->l:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 12
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->l:Ljava/nio/FloatBuffer;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 15
    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    goto :goto_1

    .line 16
    :cond_5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 19
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 20
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 21
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 22
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 23
    :cond_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 25
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 26
    :try_start_5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 27
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    .line 28
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 29
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    .line 32
    :cond_9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    .line 33
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/b2;->d0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    .line 34
    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativePolyline;->nativeDestroy(J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 35
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_2
    move-exception v0

    .line 36
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    const-string v1, "PolylineDelegateImp"

    const-string v2, "destroy"

    .line 37
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "destroy erro"

    const-string v1, "PolylineDelegateImp destroy"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-void
.end method

.method public draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->k0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v2, v1, Lcom/amap/api/mapcore/util/b2;->d0:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativePolyline;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/mapcore/util/b2;->d0:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->c0:Lcom/amap/api/mapcore/util/h2;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h2;->a()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/autonavi/base/amap/mapcore/AMapNativePolyline;->nativeSetGLShaderManager(JJ)V

    .line 6
    :cond_1
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_0
    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->f0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->g0:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->h0:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_16

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_16

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->D:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    goto/16 :goto_b

    .line 11
    :cond_4
    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v3

    if-nez v3, :cond_5

    .line 12
    monitor-exit v2

    return-void

    .line 13
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v3

    double-to-int v3, v3

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    double-to-int v4, v4

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getBeyond180Mode()I

    move-result v5

    .line 17
    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-wide/high16 v8, 0x41a0000000000000L    # 1.34217728E8

    const/high16 v10, 0x4d800000

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_f

    .line 19
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/autonavi/amap/mapcore/IPoint;

    .line 20
    iget-object v13, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 21
    iget v14, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v3

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 22
    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v4

    int-to-float v12, v12

    iput v12, v13, Landroid/graphics/PointF;->y:F

    .line 23
    iget-boolean v12, v1, Lcom/amap/api/mapcore/util/b2;->e0:Z

    if-eqz v12, :cond_7

    if-ltz v5, :cond_6

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v14

    cmpg-double v12, v14, v8

    if-gez v12, :cond_7

    .line 25
    :cond_6
    iget v12, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v10

    iput v12, v13, Landroid/graphics/PointF;->x:F

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 26
    :cond_8
    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v6, v7, :cond_f

    .line 27
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    .line 28
    new-instance v14, Lcom/autonavi/base/amap/mapcore/FPoint3;

    invoke-direct {v14}, Lcom/autonavi/base/amap/mapcore/FPoint3;-><init>()V

    .line 29
    iget-object v15, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    if-eqz v15, :cond_b

    .line 30
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 31
    :try_start_1
    iget v11, v1, Lcom/amap/api/mapcore/util/b2;->i0:I

    if-gtz v11, :cond_9

    .line 32
    iget-object v11, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v12, :cond_a

    .line 33
    iget-object v11, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_4

    .line 34
    :cond_9
    iget-object v11, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget v10, v1, Lcom/amap/api/mapcore/util/b2;->i0:I

    add-int v8, v12, v10

    if-le v11, v8, :cond_a

    .line 35
    iget-object v8, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    add-int/2addr v10, v12

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v14, v8}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    .line 36
    :cond_a
    :goto_4
    monitor-exit v15

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 37
    :cond_b
    :goto_5
    iget v8, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iput v8, v14, Landroid/graphics/PointF;->x:F

    .line 38
    iget v8, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v4

    int-to-float v8, v8

    iput v8, v14, Landroid/graphics/PointF;->y:F

    .line 39
    iget-boolean v8, v1, Lcom/amap/api/mapcore/util/b2;->e0:Z

    if-eqz v8, :cond_e

    if-ltz v5, :cond_d

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v8

    const-wide/high16 v10, 0x41a0000000000000L    # 1.34217728E8

    cmpg-double v13, v8, v10

    if-gez v13, :cond_c

    goto :goto_6

    :cond_c
    const/high16 v9, 0x4d800000

    goto :goto_7

    :cond_d
    const-wide/high16 v10, 0x41a0000000000000L    # 1.34217728E8

    .line 41
    :goto_6
    iget v8, v14, Landroid/graphics/PointF;->x:F

    const/high16 v9, 0x4d800000

    sub-float/2addr v8, v9

    iput v8, v14, Landroid/graphics/PointF;->x:F

    goto :goto_7

    :cond_e
    const/high16 v9, 0x4d800000

    const-wide/high16 v10, 0x41a0000000000000L    # 1.34217728E8

    .line 42
    :goto_7
    iget-object v8, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    move-wide v8, v10

    const/high16 v10, 0x4d800000

    goto/16 :goto_3

    .line 43
    :cond_f
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 44
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->t:Z

    if-eqz v0, :cond_10

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/b2;->calMapFPoint()Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->t:Z

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    .line 47
    iget-boolean v2, v1, Lcom/amap/api/mapcore/util/b2;->u:Z

    if-eqz v2, :cond_14

    .line 48
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_3
    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 50
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 51
    :try_start_4
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v3, :cond_13

    if-le v5, v11, :cond_11

    .line 52
    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->i0:I

    if-gtz v0, :cond_11

    .line 53
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_9

    .line 54
    :cond_11
    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->i0:I

    add-int v6, v0, v11

    if-le v5, v6, :cond_12

    if-lez v0, :cond_12

    .line 55
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/mapcore/FPoint3;

    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    iget v7, v1, Lcom/amap/api/mapcore/util/b2;->i0:I

    add-int/2addr v7, v11

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_12
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 56
    :cond_13
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_a

    :catchall_1
    move-exception v0

    .line 58
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    .line 59
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 60
    :cond_14
    :goto_a
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->Q:[F

    if-eqz v0, :cond_15

    iget v0, v1, Lcom/amap/api/mapcore/util/b2;->B:I

    if-lez v0, :cond_15

    .line 61
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/b2;->n(Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    :cond_15
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->v:Z

    return-void

    .line 63
    :cond_16
    :goto_b
    :try_start_8
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    .line 64
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
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

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b2;->getId()Ljava/lang/String;

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

.method public getColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->A:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    const-string v1, "Polyline"

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b2;->b:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-nez v2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    .line 5
    invoke-static {p1, v1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    goto :goto_1

    .line 6
    :cond_2
    iget-object v4, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    .line 7
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/LatLng;

    .line 8
    invoke-static {p1, v4}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v4

    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    move v3, v2

    move v1, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v1, "PolylineDelegateImp"

    const-string v2, "getNearestLatLng"

    .line 10
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getOptions()Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

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
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    return-object v0
.end method

.method public getShownRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->f0:F

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
    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->D:F

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
    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->E:F

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->C:I

    return-void
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

.method public i(Lcom/amap/api/mapcore/util/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->c0:Lcom/amap/api/mapcore/util/h2;

    return-void
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->V:Z

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->r:Z

    return v0
.end method

.method public isDrawFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->v:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->q:Z

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
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->o:Z

    return v0
.end method

.method k(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Lcom/amap/api/maps/model/LatLngBounds$Builder;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 2
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v5, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v8

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v10, v12

    div-double v11, v10, v8

    const/4 v13, 0x0

    move-object v8, v4

    move-wide v9, v5

    invoke-direct/range {v8 .. v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    move-object/from16 v5, p4

    .line 3
    invoke-virtual {v5, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 4
    iget-wide v5, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v5, v8

    if-lez v10, :cond_0

    const/4 v5, -0x1

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 5
    :goto_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v14

    .line 6
    iget-object v5, v7, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v8

    iget-wide v9, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v11, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v13, v14

    invoke-interface/range {v8 .. v13}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 7
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    .line 8
    iget-object v0, v7, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v15

    iget-wide v9, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v0, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v9

    move-wide/from16 v18, v0

    move-object/from16 v20, v8

    invoke-interface/range {v15 .. v20}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 9
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    .line 10
    iget-object v0, v7, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v16

    iget-wide v0, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v9, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v17, v0

    move-wide/from16 v19, v9

    move-object/from16 v21, v5

    invoke-interface/range {v16 .. v21}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v0

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 12
    iget v4, v14, Landroid/graphics/Point;->x:I

    iget v11, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v11

    int-to-double v11, v4

    iget v4, v14, Landroid/graphics/Point;->y:I

    iget v13, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v13

    move-wide/from16 p1, v9

    int-to-double v9, v4

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    mul-double v9, v9, v0

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v9, v9, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v8

    move-object v3, v5

    move-wide v4, v9

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/b2;->d(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v3, p1

    move-object/from16 v2, p3

    .line 19
    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/b2;->p(Ljava/util/List;Ljava/util/List;D)V

    .line 20
    invoke-virtual {v14}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 21
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 22
    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void
.end method

.method public l(Lcom/amap/api/maps/model/PolylineOptions$LineCapType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->b0:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    return-void
.end method

.method public m(Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a0:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    return-void
.end method

.method o(Ljava/util/List;)V
    .locals 22
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

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/maps/model/LatLng;

    .line 4
    iget-boolean v8, v0, Lcom/amap/api/mapcore/util/b2;->q:Z

    if-nez v8, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    .line 6
    iget-object v8, v0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v9

    iget-wide v10, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v12, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v14, v4

    invoke-interface/range {v9 .. v14}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v2, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    .line 9
    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v12, v8, v10

    if-gez v12, :cond_1

    .line 10
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    .line 11
    iget-object v9, v0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v9}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v13

    iget-wide v14, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v9, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v9

    move-object/from16 v18, v8

    invoke-interface/range {v13 .. v18}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 12
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v2, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 14
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    .line 15
    iget-object v8, v0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v16

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v10, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-object/from16 v21, v4

    invoke-interface/range {v16 .. v21}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v2, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0, v4, v7, v1, v2}, Lcom/amap/api/mapcore/util/b2;->k(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    const/4 v4, 0x1

    if-nez v6, :cond_3

    .line 19
    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3

    .line 20
    iput-boolean v4, v0, Lcom/amap/api/mapcore/util/b2;->e0:Z

    const/4 v6, 0x1

    .line 21
    :cond_3
    iget-boolean v8, v0, Lcom/amap/api/mapcore/util/b2;->e0:Z

    if-nez v8, :cond_4

    .line 22
    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v12, v8, v10

    if-lez v12, :cond_4

    .line 23
    iput-boolean v4, v0, Lcom/amap/api/mapcore/util/b2;->e0:Z

    :cond_4
    move-object v4, v7

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    .line 24
    :cond_6
    iput-object v1, v0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    .line 25
    iput v3, v0, Lcom/amap/api/mapcore/util/b2;->B:I

    .line 26
    iget-object v1, v0, Lcom/amap/api/mapcore/util/b2;->X:Landroid/graphics/Rect;

    if-nez v1, :cond_7

    .line 27
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/b2;->X:Landroid/graphics/Rect;

    .line 28
    :cond_7
    iget-object v1, v0, Lcom/amap/api/mapcore/util/b2;->X:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->H(Landroid/graphics/Rect;)V

    .line 29
    iget-object v1, v0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v6, :cond_8

    .line 30
    iget v4, v2, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x10000000

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 31
    :cond_8
    iget-object v4, v0, Lcom/amap/api/mapcore/util/b2;->X:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5, v2}, Lcom/amap/api/mapcore/util/r3;->h0(Landroid/graphics/Rect;II)V

    goto :goto_2

    .line 32
    :cond_9
    iget-object v1, v0, Lcom/amap/api/mapcore/util/b2;->X:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->sort()V

    .line 33
    iget-object v1, v0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method p(Ljava/util/List;Ljava/util/List;D)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;D)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v2, :cond_1

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float v5, v4, v5

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    float-to-double v9, v5

    sub-double/2addr v7, v9

    mul-double v9, v7, v7

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/amap/mapcore/IPoint;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    mul-double v11, v11, v9

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v13, v13, v5

    float-to-double v13, v13

    mul-double v13, v13, v7

    const/4 v7, 0x1

    .line 4
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/amap/mapcore/IPoint;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-double v1, v8

    mul-double v1, v1, v13

    mul-double v1, v1, p3

    add-double/2addr v11, v1

    mul-float v5, v5, v5

    const/4 v1, 0x2

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v2, v2, v5

    float-to-double v1, v2

    add-double/2addr v11, v1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    mul-double v1, v1, v9

    .line 7
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autonavi/amap/mapcore/IPoint;

    iget v7, v7, Landroid/graphics/Point;->y:I

    move v15, v4

    int-to-double v3, v7

    mul-double v3, v3, v13

    mul-double v3, v3, p3

    add-double/2addr v1, v3

    const/4 v3, 0x2

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-double v3, v3

    add-double/2addr v1, v3

    mul-double v13, v13, p3

    add-double/2addr v9, v13

    float-to-double v3, v5

    add-double/2addr v9, v3

    div-double/2addr v11, v9

    double-to-int v3, v11

    .line 9
    iput v3, v6, Landroid/graphics/Point;->x:I

    div-double/2addr v1, v9

    double-to-int v1, v1

    .line 10
    iput v1, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v1, p2

    .line 11
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v4, v15, v2

    float-to-int v4, v4

    const/16 v2, 0xa

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b2;->w:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public reLoadTexture()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->s:Z

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/amap/api/mapcore/util/b2;->z:F

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->U:[I

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->k0:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r;->removeOverlay(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setVisible(Z)V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b2;->V:Z

    return-void
.end method

.method public setColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_3

    .line 2
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->A:I

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->G:F

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->H:F

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->I:F

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->K:F

    .line 7
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->p:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->r:Z

    if-eqz v0, :cond_1

    .line 9
    iput v1, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    goto :goto_0

    .line 10
    :cond_1
    iput v2, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public setColorValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
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
    nop

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 7
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->p:Z

    .line 8
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b2;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->k:Ljava/util/List;

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/b2;->setColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCustemTextureIndex(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b2;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->j:Ljava/util/List;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b2;->u:Z

    .line 7
    monitor-exit v0

    goto :goto_0

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

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/b2;->n0:J

    sub-long v2, v0, v2

    const/16 v4, 0x10

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/b2;->n0:J

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->p:Z

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->s:Z

    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    .line 10
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 11
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 14
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCustomTextureList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b2;->B(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureIndex()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/b2;->setCustemTextureIndex(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b2;->reLoadTexture()V

    return-void
.end method

.method public setDottedLine(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b2;->r:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->p:Z

    if-eqz v2, :cond_1

    .line 4
    iput v1, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 5
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/b2;->p:Z

    if-eqz p1, :cond_2

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_3
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b2;->q:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setColor(I)V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setGeodesic(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setDottedLine(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getDottedLineType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->h(I)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setAboveMaskLayer(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setVisible(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setWidth(F)V

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setZIndex(F)V

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->q(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getTransparency()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setTransparency(F)V

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getLineCapType()Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->l(Lcom/amap/api/maps/model/PolylineOptions$LineCapType;)V

    .line 13
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getLineJoinType()Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->m(Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;)V

    .line 14
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setColorValues(Ljava/util/List;)V

    .line 16
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseGradient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->useGradient(Z)V

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 19
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b2;->reLoadTexture()V

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b2;->B(Ljava/util/List;)V

    .line 22
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureIndex()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setCustemTextureIndex(Ljava/util/List;)V

    .line 23
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b2;->reLoadTexture()V

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setPoints(Ljava/util/List;)V

    .line 25
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b2;->setShownRatio(F)V

    .line 26
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeBegin()F

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeEnd()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/b2;->setShowRange(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PolylineDelegateImp"

    const-string v1, "setOptions"

    .line 27
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
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
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/b2;->o(Ljava/util/List;)V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 5
    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b2;->t:Z

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setPoints(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/b2;->setShownRatio(F)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeBegin()F

    move-result p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRangeEnd()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/b2;->setShowRange(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "PolylineDelegateImp"

    const-string v1, "setPoints"

    .line 11
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setShowRange(FF)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 1
    iput v0, v1, Lcom/amap/api/mapcore/util/b2;->g0:F

    .line 2
    iput v2, v1, Lcom/amap/api/mapcore/util/b2;->h0:F

    .line 3
    iget-object v3, v1, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v3

    .line 4
    :try_start_0
    iget-object v4, v1, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 5
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v3

    return-void

    :cond_0
    cmpl-float v6, v0, v2

    if-lez v6, :cond_1

    .line 7
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "mapcore"

    const-string v2, "setShownRange return begin < end"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    monitor-exit v3

    return-void

    :cond_1
    const/4 v6, 0x0

    cmpg-float v7, v0, v6

    if-ltz v7, :cond_3

    .line 10
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v7, v4

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    add-int/lit8 v0, v4, -0x1

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    cmpg-float v7, v2, v6

    if-gez v7, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    int-to-float v6, v4

    cmpl-float v6, v2, v6

    if-gez v6, :cond_6

    .line 11
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    .line 12
    :cond_7
    :goto_2
    iget-boolean v6, v1, Lcom/amap/api/mapcore/util/b2;->q:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    .line 13
    iget-object v6, v1, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_8

    const-string v0, "mapcore"

    const-string v2, "setShownRatio return m_polylineOptions.m_latLngPoints.size() < MIN_POLYLINE_COUNT"

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit v3

    return-void

    :cond_8
    sub-int/2addr v6, v7

    int-to-float v5, v6

    div-float/2addr v0, v5

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    mul-float v0, v0, v6

    div-float/2addr v2, v5

    mul-float v2, v2, v6

    .line 16
    :cond_9
    iget-object v5, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    float-to-double v5, v0

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    float-to-double v8, v2

    .line 18
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    int-to-float v8, v5

    sub-float/2addr v0, v8

    float-to-double v8, v0

    int-to-float v0, v6

    sub-float/2addr v2, v0

    float-to-double v10, v2

    const/4 v0, 0x0

    move-object v2, v0

    move v12, v5

    :goto_3
    if-ge v12, v4, :cond_f

    .line 19
    iget-object v13, v1, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    if-lt v5, v12, :cond_a

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-object v0, v13

    move-object v2, v0

    goto/16 :goto_5

    :cond_a
    if-ge v5, v12, :cond_c

    add-int/lit8 v14, v12, -0x1

    if-ne v5, v14, :cond_c

    .line 20
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 21
    iget v14, v0, Landroid/graphics/Point;->x:I

    move-wide v15, v8

    int-to-double v7, v14

    iget v9, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v14

    move-wide/from16 v17, v10

    int-to-double v9, v9

    mul-double v9, v9, v15

    add-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 22
    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-double v8, v7

    iget v10, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v7

    int-to-double v10, v10

    mul-double v10, v10, v15

    add-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v2, Landroid/graphics/Point;->y:I

    .line 23
    iget-object v7, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v6, v5, :cond_b

    .line 24
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 25
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-double v6, v4

    iget v8, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v4

    int-to-double v8, v8

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v4, v6

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 26
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v6, v0

    iget v4, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v0

    int-to-double v8, v4

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 27
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 28
    :cond_b
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-wide v15, v8

    move-wide/from16 v17, v10

    if-ge v5, v12, :cond_d

    if-lt v6, v12, :cond_d

    .line 29
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object v2, v13

    goto :goto_5

    :cond_d
    if-ge v6, v12, :cond_e

    .line 30
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 31
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-double v6, v4

    iget v8, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v4

    int-to-double v8, v8

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v4, v6

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 32
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v6, v2

    iget v4, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    int-to-double v8, v4

    mul-double v8, v8, v17

    add-double/2addr v6, v8

    double-to-int v2, v6

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 33
    iget-object v2, v1, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-wide v8, v15

    move-wide/from16 v10, v17

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_f
    :goto_6
    if-ltz v5, :cond_10

    .line 34
    iput v5, v1, Lcom/amap/api/mapcore/util/b2;->i0:I

    .line 35
    :cond_10
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/b2;->t:Z

    .line 37
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 38
    iget-object v0, v1, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    iget v2, v1, Lcom/amap/api/mapcore/util/b2;->g0:F

    iget v3, v1, Lcom/amap/api/mapcore/util/b2;->h0:F

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->setShownRange(FF)Lcom/amap/api/maps/model/PolylineOptions;

    return-void

    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setShownRatio(F)V
    .locals 10

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->f0:F

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    iget v3, p0, Lcom/amap/api/mapcore/util/b2;->f0:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    .line 7
    :cond_2
    :goto_0
    iget-boolean v5, p0, Lcom/amap/api/mapcore/util/b2;->q:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 8
    iget-object v5, p0, Lcom/amap/api/mapcore/util/b2;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v2, :cond_3

    .line 9
    monitor-exit v0

    return-void

    :cond_3
    sub-int/2addr v5, v6

    int-to-float v2, v5

    div-float/2addr v3, v2

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    mul-float v3, v3, v2

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    float-to-double v7, v3

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v2, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_6

    .line 12
    iget-object v9, p0, Lcom/amap/api/mapcore/util/b2;->c:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/IPoint;

    if-le v8, v2, :cond_5

    int-to-float v1, v2

    sub-float/2addr v3, v1

    cmpl-float v1, p1, v4

    if-eqz v1, :cond_6

    if-eqz v5, :cond_6

    .line 13
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 14
    iget v2, v5, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    iget v8, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v2

    int-to-float v2, v8

    mul-float v2, v2, v3

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 15
    iget v2, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v2

    iget v5, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v2, v2, v3

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 16
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    iget-object v5, p0, Lcom/amap/api/mapcore/util/b2;->j0:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object v5, v9

    goto :goto_1

    .line 18
    :cond_6
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-boolean v6, p0, Lcom/amap/api/mapcore/util/b2;->t:Z

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setShownRatio(F)Lcom/amap/api/maps/model/PolylineOptions;

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

.method public setTransparency(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->M:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b2;->o:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->D:F

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->E:F

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->y()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->Y:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method

.method public useGradient(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->x:I

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method public v(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b2;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v1}, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b2;->v:Z

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    .line 6
    array-length v3, v3

    iput v3, p0, Lcom/amap/api/mapcore/util/b2;->l0:I

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/amap/mapcore/IPoint;

    .line 8
    new-instance v7, Lcom/autonavi/base/amap/mapcore/FPoint3;

    invoke-direct {v7}, Lcom/autonavi/base/amap/mapcore/FPoint3;-><init>()V

    .line 9
    iget-object v8, p0, Lcom/amap/api/mapcore/util/b2;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-interface {v8, v9, v5, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 10
    iget-object v5, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    mul-int/lit8 v8, v4, 0x3

    iget v9, v7, Landroid/graphics/PointF;->x:F

    aput v9, v5, v8

    add-int/lit8 v9, v8, 0x1

    .line 11
    iget v10, v7, Landroid/graphics/PointF;->y:F

    aput v10, v5, v9

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    .line 12
    aput v9, v5, v8

    .line 13
    iget-object v5, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 14
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    :try_start_1
    iget-object v8, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_1

    .line 16
    iget v8, p0, Lcom/amap/api/mapcore/util/b2;->i0:I

    if-gtz v8, :cond_0

    .line 17
    iget-object v8, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_1

    :cond_0
    add-int/2addr v8, v4

    .line 18
    iget-object v9, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 19
    iget-object v8, p0, Lcom/amap/api/mapcore/util/b2;->h:Ljava/util/List;

    iget v9, p0, Lcom/amap/api/mapcore/util/b2;->i0:I

    add-int/2addr v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 20
    :cond_2
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    iget-object v5, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v6, :cond_4

    .line 22
    :try_start_3
    iget-object v6, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_4

    .line 23
    iget v6, p0, Lcom/amap/api/mapcore/util/b2;->i0:I

    if-gtz v6, :cond_3

    .line 24
    iget-object v6, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_2

    :cond_3
    add-int/2addr v6, v4

    .line 25
    iget-object v8, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 26
    iget-object v6, p0, Lcom/amap/api/mapcore/util/b2;->i:Ljava/util/List;

    iget v8, p0, Lcom/amap/api/mapcore/util/b2;->i0:I

    add-int/2addr v8, v4

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/autonavi/base/amap/mapcore/FPoint3;->setColorIndex(I)V

    .line 27
    :cond_4
    :goto_2
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p1

    .line 28
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 29
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/amap/api/mapcore/util/b2;->d:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v1, v7}, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->include(Lcom/autonavi/base/amap/mapcore/FPoint;)Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 31
    :cond_6
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/FPointBounds$Builder;->build()Lcom/autonavi/base/amap/mapcore/FPointBounds;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->W:Lcom/autonavi/base/amap/mapcore/FPointBounds;

    .line 32
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b2;->w:Z

    if-nez v1, :cond_7

    .line 33
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b2;->Q:[F

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/b2;->l:Ljava/nio/FloatBuffer;

    .line 34
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/b2;->B:I

    .line 35
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b2;->f()V

    .line 36
    monitor-exit v0

    return v6

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method
