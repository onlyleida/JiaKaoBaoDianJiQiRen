.class public Lcom/amap/api/mapcore/util/w1;
.super Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;
.implements Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;


# static fields
.field private static r0:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Landroid/graphics/Point;

.field private F:F

.field private G:F

.field private H:I

.field private I:I

.field private J:Lcom/amap/api/mapcore/util/ha;

.field private K:[Lcom/amap/api/mapcore/util/ha;

.field L:[F

.field M:[F

.field N:Landroid/graphics/Rect;

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Lcom/amap/api/maps/model/LatLng;

.field private R:Lcom/amap/api/maps/model/LatLng;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:F

.field private V:F

.field private W:Z

.field private X:Z

.field private Y:Lcom/amap/api/mapcore/util/u;

.field private Z:Ljava/lang/Object;

.field private a:Z

.field private a0:Z

.field private b:F

.field private b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private c0:Z

.field private d:Z

.field private d0:Z

.field private e:Z

.field e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

.field private f:F

.field f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

.field private g:F

.field private g0:Z

.field private h:Z

.field private h0:Z

.field private i:I

.field private i0:I

.field private j:I

.field private j0:I

.field private k:I

.field private k0:Z

.field private l:I

.field private l0:I

.field private m:I

.field private m0:I

.field private n:I

.field private n0:J

.field private o:Lcom/autonavi/base/amap/mapcore/FPoint;

.field o0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private p:[F

.field p0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private q:F

.field q0:Ljava/lang/Object;

.field private r:F

.field private s:F

.field private t:F

.field private u:Lcom/amap/api/maps/model/MarkerOptions;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/util/u;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->f:F

    .line 6
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->g:F

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->h:Z

    .line 8
    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->i:I

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->j:I

    .line 9
    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->k:I

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->l:I

    .line 10
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/16 v2, 0x24

    new-array v2, v2, [F

    .line 11
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    .line 12
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->q:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    .line 14
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    .line 15
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->v:Z

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->w:Z

    const/4 v3, 0x5

    .line 18
    iput v3, p0, Lcom/amap/api/mapcore/util/w1;->x:I

    .line 19
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->y:Z

    .line 20
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->z:Z

    .line 21
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->A:Z

    .line 22
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->B:Z

    .line 23
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->C:Z

    .line 24
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->D:Z

    .line 25
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 26
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/w1;->E:Landroid/graphics/Point;

    .line 27
    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->H:I

    .line 28
    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->I:I

    const/4 v3, 0x0

    .line 29
    iput-object v3, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    .line 30
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    .line 31
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->O:Z

    const/high16 v4, 0x3f000000    # 0.5f

    .line 32
    iput v4, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    .line 33
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    .line 34
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->W:Z

    .line 35
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->X:Z

    .line 36
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->a0:Z

    .line 37
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    .line 38
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c0:Z

    .line 39
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->d0:Z

    .line 40
    iput-object v3, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    .line 41
    iput-object v3, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    .line 42
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->g0:Z

    .line 43
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    .line 44
    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->i0:I

    const/16 v1, 0x14

    .line 45
    iput v1, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    .line 46
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w1;->n0:J

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->q0:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    .line 50
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w1;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/amap/api/mapcore/util/w1;->r0:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/w1;->r0:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/amap/api/mapcore/util/w1;->r0:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(DD)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    double-to-int p1, p1

    double-to-int p2, p3

    invoke-interface {v1, p1, p2, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 4
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/w1;->e(II)V

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    goto :goto_0

    :cond_0
    double-to-int p1, p1

    double-to-int p2, p3

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/w1;->e(II)V

    :goto_0
    return-void
.end method

.method private e(II)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 4
    iget p2, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    invoke-static {p2, v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 5
    new-instance p2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    .line 6
    iget-object p2, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 8
    iget-object p2, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 10
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    return-void
.end method

.method private f(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    .line 4
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/w1;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->l0:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    .line 8
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->m0:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    .line 9
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    iget-wide v5, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 11
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    .line 12
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    .line 13
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_0

    .line 14
    :cond_1
    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    .line 15
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    .line 16
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 17
    iget-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 18
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    .line 19
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    .line 20
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    :goto_0
    return-void
.end method

.method private g(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;FII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    int-to-float p3, p3

    mul-float v0, v0, p3

    float-to-int p3, v0

    .line 2
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    int-to-float p4, p4

    mul-float v0, v0, p4

    float-to-int p4, v0

    int-to-float p3, p3

    mul-float p3, p3, p2

    int-to-float p4, p4

    mul-float p4, p4, p2

    .line 3
    iget-object p2, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 4
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 5
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v1

    .line 6
    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->f:F

    .line 7
    iget-object v3, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 8
    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/w1;->a:Z

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    array-length v6, v3

    .line 10
    iget v7, p0, Lcom/amap/api/mapcore/util/w1;->f:F

    iget v8, p0, Lcom/amap/api/mapcore/util/w1;->b:F

    div-float v9, v7, v8

    float-to-int v9, v9

    if-le v9, v6, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    rem-float v2, v7, v8

    :goto_0
    add-int/2addr v9, v6

    .line 11
    rem-int/2addr v9, v6

    .line 12
    aget-object v3, v3, v9

    iput-object v3, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    goto :goto_1

    .line 13
    :cond_1
    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->i0:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/amap/api/mapcore/util/w1;->i0:I

    .line 14
    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    iget-object v6, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int v3, v3, v6

    .line 15
    iget v6, p0, Lcom/amap/api/mapcore/util/w1;->i0:I

    if-lt v6, v3, :cond_2

    .line 16
    iput v4, p0, Lcom/amap/api/mapcore/util/w1;->i0:I

    .line 17
    :cond_2
    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    if-nez v3, :cond_3

    .line 18
    iput v5, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    .line 19
    :cond_3
    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->i0:I

    iget v6, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    div-int/2addr v3, v6

    .line 20
    iget-object v6, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    aget-object v3, v6, v3

    iput-object v3, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    .line 21
    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    if-nez v3, :cond_4

    .line 22
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 23
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/w1;->h:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 24
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p1

    sub-float/2addr v2, p1

    const/4 v1, 0x0

    .line 25
    :cond_5
    iget p1, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    cmpg-float v3, p1, v6

    if-gez v3, :cond_6

    goto :goto_2

    :cond_6
    move v6, p1

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v3, v6, p1

    if-lez v3, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    .line 26
    :cond_7
    iget-object v3, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget v7, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    mul-float v8, p3, v7

    sub-float v8, v0, v8

    aput v8, v3, v4

    .line 27
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    sub-float v8, p1, v4

    mul-float v8, v8, p4

    add-float/2addr v8, p2

    aput v8, v3, v5

    const/4 v5, 0x2

    .line 28
    aput v0, v3, v5

    const/4 v5, 0x3

    .line 29
    aput p2, v3, v5

    const/4 v5, 0x6

    .line 30
    aput v2, v3, v5

    const/4 v5, 0x7

    .line 31
    aput v1, v3, v5

    const/16 v5, 0x8

    .line 32
    aput v6, v3, v5

    const/16 v5, 0x9

    sub-float v8, p1, v7

    mul-float v8, v8, p3

    add-float/2addr v8, v0

    .line 33
    aput v8, v3, v5

    const/16 v5, 0xa

    sub-float v8, p1, v4

    mul-float v8, v8, p4

    add-float/2addr v8, p2

    .line 34
    aput v8, v3, v5

    const/16 v5, 0xb

    .line 35
    aput v0, v3, v5

    const/16 v5, 0xc

    .line 36
    aput p2, v3, v5

    const/16 v5, 0xf

    .line 37
    aput v2, v3, v5

    const/16 v5, 0x10

    .line 38
    aput v1, v3, v5

    const/16 v5, 0x11

    .line 39
    aput v6, v3, v5

    const/16 v5, 0x12

    sub-float/2addr p1, v7

    mul-float p1, p1, p3

    add-float/2addr p1, v0

    .line 40
    aput p1, v3, v5

    const/16 p1, 0x13

    mul-float v5, p4, v4

    sub-float v5, p2, v5

    .line 41
    aput v5, v3, p1

    const/16 p1, 0x14

    .line 42
    aput v0, v3, p1

    const/16 p1, 0x15

    .line 43
    aput p2, v3, p1

    const/16 p1, 0x18

    .line 44
    aput v2, v3, p1

    const/16 p1, 0x19

    .line 45
    aput v1, v3, p1

    const/16 p1, 0x1a

    .line 46
    aput v6, v3, p1

    const/16 p1, 0x1b

    mul-float p3, p3, v7

    sub-float p3, v0, p3

    .line 47
    aput p3, v3, p1

    const/16 p1, 0x1c

    mul-float p4, p4, v4

    sub-float p3, p2, p4

    .line 48
    aput p3, v3, p1

    const/16 p1, 0x1d

    .line 49
    aput v0, v3, p1

    const/16 p1, 0x1e

    .line 50
    aput p2, v3, p1

    const/16 p1, 0x21

    .line 51
    aput v2, v3, p1

    const/16 p1, 0x22

    .line 52
    aput v1, v3, p1

    const/16 p1, 0x23

    .line 53
    aput v6, v3, p1

    return-void
.end method

.method private i([FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->d()Z

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x1f

    const/16 v3, 0x17

    const/16 v4, 0x16

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v9, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v9}, Lcom/amap/api/mapcore/util/ha;->i()F

    move-result v9

    aput v9, v0, v8

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v8, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/ha;->g()F

    move-result v8

    aput v8, v0, v7

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v7, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->e()F

    move-result v7

    aput v7, v0, v6

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v6, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v6}, Lcom/amap/api/mapcore/util/ha;->g()F

    move-result v6

    aput v6, v0, v5

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v5, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/ha;->e()F

    move-result v5

    aput v5, v0, v4

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->k()F

    move-result v4

    aput v4, v0, v3

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->i()F

    move-result v3

    aput v3, v0, v2

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->k()F

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v9, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v9}, Lcom/amap/api/mapcore/util/ha;->o()F

    move-result v9

    aput v9, v0, v8

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v8, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/ha;->s()F

    move-result v8

    aput v8, v0, v7

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v7, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->q()F

    move-result v7

    aput v7, v0, v6

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v6, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v6}, Lcom/amap/api/mapcore/util/ha;->s()F

    move-result v6

    aput v6, v0, v5

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v5, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/ha;->q()F

    move-result v5

    aput v5, v0, v4

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->m()F

    move-result v4

    aput v4, v0, v3

    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->o()F

    move-result v3

    aput v3, v0, v2

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p:[F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->m()F

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->D:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->o0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->q0:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->g0:Z

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    new-instance v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    .line 6
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    .line 7
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    .line 8
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->f:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    .line 9
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    int-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    .line 10
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    int-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    .line 11
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    .line 12
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/w1;->g0:Z

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-nez v2, :cond_2

    .line 14
    new-instance v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->clear()V

    .line 16
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->o0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-virtual {v2, v4, v5, v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    .line 17
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v2, :cond_6

    .line 18
    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    .line 19
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    double-to-float v4, v4

    iput v4, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    .line 20
    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    double-to-float v2, v4

    iput v2, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    .line 21
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4

    .line 22
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    double-to-float v2, v4

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/w1;->setRotateAngle(F)V

    .line 23
    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    .line 24
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    .line 25
    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    .line 26
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/amap/api/mapcore/util/w1;->d(DD)V

    .line 27
    :cond_5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_6

    .line 28
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    double-to-float v2, v4

    iput v2, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    .line 29
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    .line 31
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->o0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_12

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v2, :cond_12

    :cond_8
    if-eqz v0, :cond_9

    .line 35
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    .line 37
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    goto :goto_0

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_b

    .line 39
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    float-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_a

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    float-to-double v2, v2

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    cmpl-double v8, v2, v6

    if-eqz v8, :cond_b

    :cond_a
    double-to-float v2, v4

    .line 40
    iput v2, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    .line 41
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    .line 42
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_c

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    double-to-float v0, v2

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/w1;->setRotateAngle(F)V

    goto :goto_1

    .line 44
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_d

    .line 45
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->f:F

    float-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_d

    double-to-float v0, v4

    .line 46
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/w1;->setRotateAngle(F)V

    .line 47
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_e

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    .line 49
    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    .line 50
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/w1;->d(DD)V

    goto :goto_2

    .line 51
    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_10

    .line 52
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_f

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    int-to-double v2, v2

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    cmpl-double v8, v2, v6

    if-eqz v8, :cond_10

    .line 53
    :cond_f
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    .line 54
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/amap/api/mapcore/util/w1;->d(DD)V

    .line 55
    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_11

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    goto :goto_3

    .line 57
    :cond_11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_12

    .line 58
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    float-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_12

    double-to-float v0, v4

    .line 59
    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    .line 60
    :cond_12
    :goto_3
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->D:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->e0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    .line 62
    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->f0:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 64
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    :cond_13
    :goto_4
    return-void
.end method

.method private n()I
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

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->F:F

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->G:F

    :cond_0
    return-void
.end method


# virtual methods
.method public anchorUVoff()Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    mul-float v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    mul-float v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-object v0
.end method

.method declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public calFPoint()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->l0:I

    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->m0:I

    invoke-interface {v2, v3, v4, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 7
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    .line 8
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    .line 9
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0

    :catchall_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public checkInBounds()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->D:Z

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->E:Landroid/graphics/Point;

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 5
    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    .line 7
    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->o()V

    .line 9
    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->r:F

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->F:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 10
    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->s:F

    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->G:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 11
    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    int-to-float v4, v4

    int-to-float v5, v2

    iget v6, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 12
    iget v5, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 13
    invoke-virtual {v0, v4, v5}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    .line 14
    :cond_3
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/autonavi/base/amap/mapcore/Rectangle;->isOverlap(IIII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    return v1

    :catchall_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "checkInBounds"

    .line 15
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/w1;->destroy(Z)V

    return-void
.end method

.method public destroy(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->O:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->remove()Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 5
    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/u;->k(Lcom/amap/api/mapcore/util/ha;)V

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    .line 11
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Z:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "MarkerDelegateImp"

    const-string v1, "destroy"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "destroy erro"

    const-string v0, "MarkerDelegateImp destroy"

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 0

    return-void
.end method

.method public drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->O:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return-void

    .line 2
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c:Z

    if-nez v0, :cond_4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/api/mapcore/util/w1;->n0:J

    .line 4
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->c:Z

    .line 5
    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->z:Z

    if-eqz v0, :cond_5

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 7
    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->l0:I

    iget v4, p0, Lcom/amap/api/mapcore/util/w1;->m0:I

    invoke-interface {p1, v3, v4, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 8
    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    .line 9
    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    .line 10
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x4d000000    # 1.3421773E8f

    const/high16 v5, 0x4d800000

    cmpl-float v4, v3, v4

    if-lez v4, :cond_6

    sub-float/2addr v3, v5

    .line 13
    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_6
    const/high16 v4, -0x33000000

    cmpg-float v4, v3, v4

    if-gez v4, :cond_7

    add-float/2addr v3, v5

    .line 14
    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 15
    :cond_7
    :goto_2
    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 16
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getWidth()I

    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getHeight()I

    move-result v3

    .line 18
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->m()V

    .line 19
    invoke-direct {p0, p1, p4, v0, v3}, Lcom/amap/api/mapcore/util/w1;->g(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;FII)V

    .line 20
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->A:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    if-nez p1, :cond_9

    .line 21
    :cond_8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->l()V

    .line 22
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->A:Z

    .line 23
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/amap/api/mapcore/util/w1;->i([FI)V

    .line 24
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    if-eqz p1, :cond_a

    .line 25
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->isInfoWindowShown()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->redrawInfoWindow()V

    const/16 p1, 0x3e8

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/w1;->n0:J

    sub-long/2addr p2, v2

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-lez p1, :cond_a

    .line 28
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const-string p2, "MarkerDelegateImp"

    const-string p3, "drawMarker"

    .line 29
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
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
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getId()Ljava/lang/String;

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

.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    return v0
.end method

.method public getAnchor()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->j()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getAnchorU()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    return v0
.end method

.method public declared-synchronized getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->c()V

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 9
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    const-string v2, "MarkerDelegateImp"

    const-string v3, "getBitmapDescriptor"

    .line 10
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->x:I

    return v0
.end method

.method public getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->l0:I

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->m0:I

    invoke-interface {v1, v2, v3, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    return-object v0

    .line 4
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIAnimation()Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;
    .locals 0

    return-object p0
.end method

.method public getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 0

    return-object p0
.end method

.method public declared-synchronized getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->P:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Marker"

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/w1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->P:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoWindowOffsetX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->i:I

    return v0
.end method

.method public getInfoWindowOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->j:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Z:Ljava/lang/Object;

    return-object v0
.end method

.method public getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    return v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->calFPoint()Z

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    return-object v0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/w1;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-interface {v2, v4, v3, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 8
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 9
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 10
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 11
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object v2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRealInfoWindowOffsetX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->k:I

    return v0
.end method

.method public getRealInfoWindowOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->l:I

    return v0
.end method

.method public getRealPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->l0:I

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->m0:I

    invoke-interface {v1, v2, v3, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 4
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object v1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->R:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "getRealPosition"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->p:[F

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/w1;->getWidth()I

    move-result v3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/w1;->getHeight()I

    move-result v4

    .line 8
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    .line 9
    iget-boolean v6, v1, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz v6, :cond_2

    .line 10
    iget v0, v1, Lcom/amap/api/mapcore/util/w1;->l0:I

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 11
    iget v0, v1, Lcom/amap/api/mapcore/util/w1;->m0:I

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 12
    :cond_2
    iget v6, v1, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v7, v1, Lcom/amap/api/mapcore/util/w1;->n:I

    invoke-virtual {v0, v6, v7, v5}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 13
    :goto_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 14
    iget-object v6, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v7, 0x0

    iget v0, v1, Lcom/amap/api/mapcore/util/w1;->f:F

    neg-float v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 15
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/w1;->h:Z

    if-eqz v0, :cond_3

    .line 16
    iget-object v6, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 17
    iget-object v12, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 18
    iget-object v10, v1, Lcom/amap/api/mapcore/util/w1;->M:[F

    neg-int v6, v3

    int-to-float v12, v6

    iget v6, v1, Lcom/amap/api/mapcore/util/w1;->U:F

    mul-float v6, v6, v12

    aput v6, v10, v2

    int-to-float v13, v4

    .line 19
    iget v6, v1, Lcom/amap/api/mapcore/util/w1;->V:F

    mul-float v6, v6, v13

    const/4 v14, 0x1

    aput v6, v10, v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    .line 20
    aput v15, v10, v16

    const/16 v17, 0x3

    const/high16 v18, 0x3f800000    # 1.0f

    .line 21
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 22
    iget-object v8, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 23
    iget-object v6, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v0, v2

    add-float/2addr v8, v7

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/PointF;->y:F

    aget v10, v0, v14

    sub-float v10, v9, v10

    float-to-int v10, v10

    aget v11, v0, v2

    add-float/2addr v7, v11

    float-to-int v7, v7

    aget v11, v0, v14

    sub-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v6, v8, v10, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    iget-object v10, v1, Lcom/amap/api/mapcore/util/w1;->M:[F

    int-to-float v3, v3

    iget v6, v1, Lcom/amap/api/mapcore/util/w1;->U:F

    sub-float v6, v18, v6

    mul-float v6, v6, v3

    aput v6, v10, v2

    .line 25
    iget v6, v1, Lcom/amap/api/mapcore/util/w1;->V:F

    mul-float v13, v13, v6

    aput v13, v10, v14

    .line 26
    aput v15, v10, v16

    .line 27
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 28
    iget-object v8, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 29
    iget-object v6, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v0, v2

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    aget v9, v0, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->union(II)V

    .line 30
    iget-object v10, v1, Lcom/amap/api/mapcore/util/w1;->M:[F

    iget v6, v1, Lcom/amap/api/mapcore/util/w1;->U:F

    sub-float v6, v18, v6

    mul-float v3, v3, v6

    aput v3, v10, v2

    neg-int v3, v4

    int-to-float v3, v3

    .line 31
    iget v4, v1, Lcom/amap/api/mapcore/util/w1;->V:F

    sub-float v4, v18, v4

    mul-float v4, v4, v3

    aput v4, v10, v14

    .line 32
    aput v15, v10, v16

    .line 33
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 34
    iget-object v8, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 35
    iget-object v4, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    aget v7, v0, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/PointF;->y:F

    aget v8, v0, v14

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->union(II)V

    .line 36
    iget-object v10, v1, Lcom/amap/api/mapcore/util/w1;->M:[F

    iget v4, v1, Lcom/amap/api/mapcore/util/w1;->U:F

    mul-float v12, v12, v4

    aput v12, v10, v2

    .line 37
    iget v4, v1, Lcom/amap/api/mapcore/util/w1;->V:F

    sub-float v4, v18, v4

    mul-float v3, v3, v4

    aput v3, v10, v14

    .line 38
    aput v15, v10, v16

    .line 39
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 40
    iget-object v8, v1, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 41
    iget-object v3, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    aget v6, v0, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, v5, Landroid/graphics/PointF;->y:F

    aget v0, v0, v14

    sub-float/2addr v6, v0

    float-to-int v0, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->union(II)V

    .line 42
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v3, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/amap/api/mapcore/util/w1;->k:I

    .line 43
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v3, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/amap/api/mapcore/util/w1;->l:I

    .line 44
    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    .line 45
    iget-object v0, v1, Lcom/amap/api/mapcore/util/w1;->N:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v3, "MarkerDelegateImp"

    const-string v4, "getRect"

    .line 46
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 2
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->g:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureId()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->J:Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->q:F

    return v0
.end method

.method public declared-synchronized h(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->c()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->H:I

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hashCodeRemote()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->isInfoWindowShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/u;->r(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->d:Z

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    return-void
.end method

.method public isAllowLow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    return v0
.end method

.method public isBelowMaskLayer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->B:Z

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->y:Z

    return v0
.end method

.method public isContains()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/u;->w(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result v0

    return v0
.end method

.method public isDestory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->O:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->W:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->h:Z

    return v0
.end method

.method public isInfoWindowAutoOverturn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->v:Z

    return v0
.end method

.method public isInfoWindowEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->w:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->d:Z

    return v0
.end method

.method public isOnTap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->C:Z

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->a0:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/u;->w(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isViewMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->X:Z

    return v0
.end method

.method public j()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v3, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    return-object v0
.end method

.method public loadTexture(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->d0:Z

    if-nez v0, :cond_d

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 5
    iget-object v5, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v5, v4}, Lcom/amap/api/mapcore/util/u;->k(Lcom/amap/api/mapcore/util/ha;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-eqz v2, :cond_c

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/amap/api/mapcore/util/ha;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {p1, v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 12
    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v8

    goto :goto_3

    :cond_3
    move-object v7, v0

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-nez v7, :cond_5

    .line 13
    new-instance v7, Lcom/amap/api/mapcore/util/ha;

    invoke-direct {v7, v6, v8}, Lcom/amap/api/mapcore/util/ha;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_5
    if-nez v8, :cond_9

    .line 14
    invoke-virtual {v6}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 15
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_9

    .line 16
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/amap/api/mapcore/util/w1;->H:I

    .line 17
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/amap/api/mapcore/util/w1;->I:I

    .line 18
    iget-object v8, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v8

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getBaseOverlayTextureID()I

    move-result v8

    if-nez v8, :cond_7

    .line 19
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->n()I

    move-result v8

    .line 20
    invoke-virtual {v7, v8}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    if-eqz v2, :cond_6

    .line 21
    invoke-interface {p1, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/mapcore/util/ha;)V

    .line 22
    :cond_6
    invoke-static {v8, v6, v1}, Lcom/amap/api/mapcore/util/r3;->c0(ILandroid/graphics/Bitmap;Z)I

    goto :goto_5

    .line 23
    :cond_7
    iget-object v9, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v9, v6, v7}, Lcom/amap/api/mapcore/util/u;->o(Landroid/graphics/Bitmap;Lcom/amap/api/mapcore/util/ha;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 24
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/w1;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 25
    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->o()F

    move-result v9

    const/high16 v10, 0x44000000    # 512.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->m()F

    move-result v10

    const/high16 v11, 0x44800000    # 1024.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-static {v8, v6, v9, v10}, Lcom/amap/api/mapcore/util/r3;->i(ILandroid/graphics/Bitmap;II)I

    .line 26
    invoke-virtual {v7, v8}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    goto :goto_4

    .line 27
    :cond_8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->n()I

    move-result v8

    .line 28
    invoke-static {v8, v6, v1}, Lcom/amap/api/mapcore/util/r3;->c0(ILandroid/graphics/Bitmap;Z)I

    .line 29
    invoke-virtual {v7, v8}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    :goto_4
    if-eqz v2, :cond_9

    .line 30
    invoke-interface {p1, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/mapcore/util/ha;)V

    .line 31
    :cond_9
    :goto_5
    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/ha;->w()V

    .line 32
    iget-object v6, p0, Lcom/amap/api/mapcore/util/w1;->K:[Lcom/amap/api/mapcore/util/ha;

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_b

    .line 34
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    goto :goto_6

    .line 35
    :cond_b
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->h0:Z

    .line 36
    :goto_6
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->A:Z

    .line 37
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/w1;->d0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_c
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->calFPoint()Z

    .line 39
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception p1

    const-string v0, "MarkerDelegateImp"

    const-string v1, "loadtexture"

    .line 40
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_d
    :goto_7
    return-void
.end method

.method public declared-synchronized reLoadTexture()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->d0:Z
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

.method public remove()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->X:Z

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore/util/u;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public set2Top()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/u;->m(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->alpha(F)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setAnchor(FF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    .line 4
    iput p2, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    .line 6
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    return-void
.end method

.method public setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getIAnimation()Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    :goto_0
    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;->setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    return-void
.end method

.method public setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->p0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public setAutoOverturnInfoWindow(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->v:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setBelowMaskLayer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->B:Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->y:Z

    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->x:I

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->W:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    return-void
.end method

.method public setFixingPointEnable(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->z:Z

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    .line 4
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/w1;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    iget v2, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 10
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->l0:I

    .line 11
    iget v0, p1, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->m0:I

    .line 12
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFlat(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->h:Z

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    .line 2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/w1;->e(II)V

    return-void
.end method

.method public setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->a:Z

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->A:Z

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->d0:Z

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c:Z

    .line 9
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->H:I

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->I:I

    .line 13
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "MarkerDelegateImp"

    const-string v1, "setIcon"

    .line 14
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setIcons(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->b0:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->a:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w1;->h(Ljava/util/ArrayList;)V

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->d0:Z

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c:Z

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->A:Z

    .line 7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "MarkerDelegateImp"

    const-string v1, "setIcons"

    .line 9
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 12
    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setInfoWindowEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->w:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->hideInfoWindow()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setInfoWindowOffset(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->i:I

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/w1;->j:I

    return-void
.end method

.method public setInfoWindowShown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->d:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    return-void
.end method

.method public setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c0:Z

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->c0:Z

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    .line 8
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    .line 9
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/t8;->b(DD)[D

    move-result-object v0

    .line 11
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/w1;->R:Lcom/amap/api/maps/model/LatLng;

    .line 12
    aget-wide v3, v0, v5

    aget-wide v1, v0, v2

    invoke-static {v3, v4, v1, v2, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "create"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->R:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 16
    :cond_2
    :goto_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    .line 17
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->U:F

    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->V:F

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->i:I

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->j:I

    .line 22
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->q:F

    .line 24
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->B:Z

    .line 25
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->calFPoint()Z

    .line 26
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/w1;->setIcons(Ljava/util/ArrayList;)V

    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->a:Z

    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAngleOffset()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->b:F

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->X:Z

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->T:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->S:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->W:Z

    .line 33
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->P:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isPerspective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->a0:Z

    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->h:Z

    .line 36
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->B:Z

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->t:F

    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/w1;->setRotateAngle(F)V

    .line 39
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getDisplayLevel()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->x:I

    .line 40
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowAutoOverturn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->v:Z

    .line 41
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->w:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 42
    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->L:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 43
    iput-object v0, p0, Lcom/amap/api/mapcore/util/w1;->M:[F

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 45
    invoke-static {}, Lcom/amap/api/mapcore/util/b3;->a()Lcom/amap/api/mapcore/util/b3;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->S:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/b3;->d(Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Z:Ljava/lang/Object;

    return-void
.end method

.method public setOnTap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->C:Z

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    iput v0, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->j0:I

    :goto_0
    return-void
.end method

.method public setPerspective(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->a0:Z

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 9

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u975e\u6cd5\u5750\u6807\u503c latlng is null"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    const-string v0, "setPosition"

    const-string v1, "Marker"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->c0:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/mapcore/util/t8;->b(DD)[D

    move-result-object v1

    .line 6
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    aget-wide v5, v1, v2

    aget-wide v7, v1, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/amap/api/mapcore/util/w1;->R:Lcom/amap/api/maps/model/LatLng;

    .line 7
    aget-wide v4, v1, v3

    aget-wide v6, v1, v2

    invoke-static {v4, v5, v6, v7, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->R:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    .line 9
    :cond_1
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    :goto_0
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->m:I

    .line 11
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->n:I

    .line 12
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    .line 13
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->calFPoint()Z

    .line 14
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 15
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    .line 16
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void
.end method

.method public setPositionByPixels(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->l0:I

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/w1;->m0:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->k0:Z

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->calFPoint()Z

    .line 5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    return-void
.end method

.method public setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w1;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->g:F

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->f:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->e:Z

    .line 5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    return-void
.end method

.method public setRotateAngleNotUpdate(F)V
    .locals 0

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->T:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w1;->S:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/b3;->a()Lcom/amap/api/mapcore/util/b3;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Q:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w1;->S:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/b3;->d(Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->X:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->X:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->C:Z

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->isInfoWindowShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore/util/u;->r(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/w1;->q:F

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->u:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    .line 3
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->C:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w1;->C:Z

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/u;->g()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/u;->A()V

    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w1;->X:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->isContains()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w1;->isInfoWindowEnable()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->Y:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/u;->l(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V

    .line 6
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    return-void
.end method

.method public startAnimation()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->p0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w1;->q0:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->p0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    instance-of v3, v2, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    .line 5
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    .line 6
    invoke-direct {p0, v4}, Lcom/amap/api/mapcore/util/w1;->f(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    .line 7
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/w1;->f(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w1;->D:Z

    .line 10
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w1;->p0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/w1;->o0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v3, 0x1

    .line 11
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/w1;->g0:Z

    .line 12
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w1;->k()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return v1
.end method
