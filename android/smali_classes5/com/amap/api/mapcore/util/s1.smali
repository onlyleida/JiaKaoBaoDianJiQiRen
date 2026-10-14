.class public Lcom/amap/api/mapcore/util/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/ICircleDelegate;


# static fields
.field private static A:I = 0x100

.field private static B:I = 0x14

.field private static C:D = 1.0E10

.field private static y:Ljava/lang/Object; = null

.field private static z:F = 4.0075016E7f


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:Z

.field private m:Lcom/autonavi/amap/mapcore/IPoint;

.field private n:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Ljava/nio/FloatBuffer;

.field private t:Ljava/nio/FloatBuffer;

.field private u:I

.field v:F

.field private w:Z

.field private x:Lcom/amap/api/mapcore/util/h2$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/s1;->y:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->a:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/s1;->b:D

    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/s1;->c:F

    const/high16 v0, -0x1000000

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/s1;->d:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/s1;->e:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/amap/api/mapcore/util/s1;->f:F

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/s1;->g:Z

    .line 9
    iput v0, p0, Lcom/amap/api/mapcore/util/s1;->k:I

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/s1;->l:Z

    .line 11
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/s1;->m:Lcom/autonavi/amap/mapcore/IPoint;

    .line 12
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/s1;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lcom/amap/api/mapcore/util/s1;->u:I

    .line 14
    iput v1, p0, Lcom/amap/api/mapcore/util/s1;->v:F

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/s1;->w:Z

    .line 16
    iput-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/s1;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CircleDelegateImp"

    const-string v1, "create"

    .line 18
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(D)F
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sget v0, Lcom/amap/api/mapcore/util/s1;->z:F

    float-to-double v0, v0

    mul-double p1, p1, v0

    sget v0, Lcom/amap/api/mapcore/util/s1;->A:I

    sget v1, Lcom/amap/api/mapcore/util/s1;->B:I

    shl-int/2addr v0, v1

    int-to-double v0, v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    .line 3
    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    .line 5
    iget-object v5, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v10, v2

    invoke-interface/range {v5 .. v10}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_2

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    sub-int/2addr p1, v2

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    .line 10
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-ne v4, v5, :cond_2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v3, v2, :cond_2

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/amap/api/mapcore/util/r3;->S(Ljava/util/List;II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method private e(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 3
    new-array v0, v0, [F

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lcom/autonavi/amap/mapcore/IPoint;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/amap/mapcore/IPoint;

    mul-int/lit8 v8, v5, 0x3

    .line 6
    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, p2

    int-to-float v9, v9

    aput v9, v0, v8

    add-int/lit8 v9, v8, 0x1

    .line 7
    iget v10, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, p3

    int-to-float v10, v10

    aput v10, v0, v9

    add-int/2addr v8, v1

    .line 8
    aput v7, v0, v8

    .line 9
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v3}, Lcom/amap/api/mapcore/util/s1;->h([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    .line 11
    array-length v5, p1

    if-nez v5, :cond_3

    .line 12
    sget-wide v5, Lcom/amap/api/mapcore/util/s1;->C:D

    const-wide v8, 0x4202a05f20000000L    # 1.0E10

    cmpl-double p1, v5, v8

    if-nez p1, :cond_2

    const-wide v5, 0x4197d78400000000L    # 1.0E8

    .line 13
    sput-wide v5, Lcom/amap/api/mapcore/util/s1;->C:D

    goto :goto_1

    .line 14
    :cond_2
    sput-wide v8, Lcom/amap/api/mapcore/util/s1;->C:D

    .line 15
    :goto_1
    invoke-static {v3}, Lcom/amap/api/mapcore/util/s1;->h([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    .line 16
    :cond_3
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    .line 17
    array-length v5, p1

    const/4 v6, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v8, p1, v4

    mul-int/lit8 v9, v6, 0x3

    .line 18
    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, p2

    int-to-float v10, v10

    aput v10, v3, v9

    add-int/lit8 v10, v9, 0x1

    .line 19
    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p3

    int-to-float v8, v8

    aput v8, v3, v10

    add-int/2addr v9, v1

    .line 20
    aput v7, v3, v9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 21
    :cond_4
    iput v2, p0, Lcom/amap/api/mapcore/util/s1;->q:I

    .line 22
    array-length p1, p1

    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->r:I

    .line 23
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    .line 24
    invoke-static {v3}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/s1;->t:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private g(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/s1;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "CircleDelegateImp"

    const-string v2, "isPolygonInCircle"

    .line 4
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method static h([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 9

    .line 1
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x2

    .line 3
    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    sget-wide v7, Lcom/amap/api/mapcore/util/s1;->C:D

    mul-double v5, v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    mul-double v5, v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/amap/api/mapcore/util/w2;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w2;-><init>()V

    .line 6
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/w2;->c([D)Lcom/amap/api/mapcore/util/n3;

    move-result-object p0

    .line 7
    iget v0, p0, Lcom/amap/api/mapcore/util/n3;->b:I

    .line 8
    new-array v3, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 9
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    aput-object v4, v3, v2

    .line 10
    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/n3;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/mapcore/util/s1;->C:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 11
    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/n3;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/mapcore/util/s1;->C:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private i(D)D
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/s1;->a(D)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h2$e;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    :cond_0
    return-void
.end method

.method private k(Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 7

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    float-to-double v1, v1

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->getRadius()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-double/2addr v3, v5

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "CircleDelegateImp"

    const-string v2, "isCircleInCircle"

    .line 3
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private l()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v3, 0xff

    .line 4
    invoke-static {v3}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const/16 v4, 0x400

    .line 5
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 6
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const/16 v4, 0xb90

    .line 7
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 8
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v4, 0x200

    const/4 v5, 0x1

    .line 9
    invoke-static {v4, v5, v3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 v4, 0x1e01

    const/16 v6, 0x1e00

    .line 10
    invoke-static {v4, v6, v6}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const/4 v4, 0x0

    .line 11
    :goto_0
    iget-object v6, v0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 12
    iget-object v6, v0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 13
    instance-of v7, v6, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v7, :cond_0

    .line 14
    move-object v8, v6

    check-cast v8, Lcom/amap/api/maps/model/PolygonHoleOptions;

    .line 15
    invoke-virtual {v8}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/amap/api/mapcore/util/s1;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v10

    double-to-int v10, v10

    invoke-direct {v0, v8, v9, v10}, Lcom/amap/api/mapcore/util/s1;->e(Ljava/util/List;II)V

    goto :goto_1

    .line 16
    :cond_0
    instance-of v8, v6, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v8, :cond_1

    .line 17
    move-object v8, v6

    check-cast v8, Lcom/amap/api/maps/model/CircleHoleOptions;

    .line 18
    iget-object v9, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    .line 19
    invoke-virtual {v0, v8}, Lcom/amap/api/mapcore/util/s1;->d(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    .line 20
    :cond_1
    :goto_1
    iget-object v8, v0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/amap/api/mapcore/util/s1;->q:I

    if-lez v8, :cond_5

    .line 21
    iget-object v8, v0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 22
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/s1;->j()V

    :cond_3
    if-eqz v7, :cond_4

    .line 23
    iget-object v9, v0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    const/4 v10, -0x1

    iget v11, v0, Lcom/amap/api/mapcore/util/s1;->e:I

    iget-object v12, v0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/s1;->getStrokeWidth()F

    move-result v13

    iget-object v14, v0, Lcom/amap/api/mapcore/util/s1;->t:Ljava/nio/FloatBuffer;

    iget v15, v0, Lcom/amap/api/mapcore/util/s1;->q:I

    iget v6, v0, Lcom/amap/api/mapcore/util/s1;->r:I

    iget-object v7, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 24
    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v17

    iget-object v7, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v18

    iget-object v7, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v19

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v20

    const/16 v21, 0x3

    const/16 v22, 0x0

    iget-boolean v7, v0, Lcom/amap/api/mapcore/util/s1;->w:Z

    const/16 v24, 0x0

    move/from16 v16, v6

    move/from16 v23, v7

    .line 25
    invoke-static/range {v9 .. v24}, Lcom/amap/api/mapcore/util/z2;->g(Lcom/amap/api/mapcore/util/h2$e;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[FIFFIIZZ)V

    goto :goto_2

    .line 26
    :cond_4
    instance-of v6, v6, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v6, :cond_5

    .line 27
    iget-object v7, v0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    const/4 v8, -0x1

    const/4 v9, -0x1

    iget-object v10, v0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x41200000    # 10.0f

    iget v12, v0, Lcom/amap/api/mapcore/util/s1;->q:I

    iget-object v6, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 28
    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v13

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v14

    iget-object v6, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v15

    iget-object v6, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v16

    iget-boolean v6, v0, Lcom/amap/api/mapcore/util/s1;->w:Z

    const/16 v18, 0x0

    move/from16 v17, v6

    .line 29
    invoke-static/range {v7 .. v18}, Lcom/amap/api/mapcore/util/z2;->d(Lcom/amap/api/mapcore/util/h2$e;IILjava/nio/FloatBuffer;FI[FFIFZZ)V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 30
    :cond_6
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v1, 0x205

    .line 31
    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 32
    invoke-static {v2}, Landroid/opengl/GLES20;->glStencilMask(I)V

    :cond_7
    return-void
.end method

.method private m()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v2, 0x400

    .line 2
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v2, 0xb90

    .line 3
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 4
    iget-object v2, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 6
    :goto_0
    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 7
    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 8
    instance-of v4, v3, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v4, :cond_0

    .line 9
    move-object v5, v3

    check-cast v5, Lcom/amap/api/maps/model/PolygonHoleOptions;

    .line 10
    invoke-virtual {v5}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/amap/api/mapcore/util/s1;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-direct {v0, v5, v6, v7}, Lcom/amap/api/mapcore/util/s1;->e(Ljava/util/List;II)V

    goto :goto_1

    .line 11
    :cond_0
    instance-of v5, v3, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v5, :cond_1

    .line 12
    move-object v5, v3

    check-cast v5, Lcom/amap/api/maps/model/CircleHoleOptions;

    .line 13
    iget-object v6, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    .line 14
    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore/util/s1;->d(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    .line 15
    :cond_1
    :goto_1
    iget-object v5, v0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/amap/api/mapcore/util/s1;->q:I

    if-lez v5, :cond_5

    .line 16
    iget-object v5, v0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/s1;->j()V

    :cond_3
    if-eqz v4, :cond_4

    .line 18
    iget-object v6, v0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    const/4 v7, 0x0

    iget v8, v0, Lcom/amap/api/mapcore/util/s1;->d:I

    iget-object v9, v0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    iget v10, v0, Lcom/amap/api/mapcore/util/s1;->c:F

    iget-object v11, v0, Lcom/amap/api/mapcore/util/s1;->t:Ljava/nio/FloatBuffer;

    iget v12, v0, Lcom/amap/api/mapcore/util/s1;->q:I

    iget v13, v0, Lcom/amap/api/mapcore/util/s1;->r:I

    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v14

    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 19
    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v15

    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v16

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v17

    const/16 v18, 0x3

    const/16 v19, 0x0

    iget-boolean v3, v0, Lcom/amap/api/mapcore/util/s1;->w:Z

    move/from16 v20, v3

    .line 20
    invoke-static/range {v6 .. v20}, Lcom/amap/api/mapcore/util/z2;->f(Lcom/amap/api/mapcore/util/h2$e;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[FIFFIIZ)V

    goto :goto_2

    .line 21
    :cond_4
    instance-of v3, v3, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_5

    .line 22
    iget-object v4, v0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    const/4 v5, 0x0

    iget v6, v0, Lcom/amap/api/mapcore/util/s1;->d:I

    iget-object v7, v0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    iget v8, v0, Lcom/amap/api/mapcore/util/s1;->c:F

    iget v9, v0, Lcom/amap/api/mapcore/util/s1;->q:I

    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v10

    .line 23
    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v11

    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v12

    iget-object v3, v0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v13

    iget-boolean v14, v0, Lcom/amap/api/mapcore/util/s1;->w:Z

    .line 24
    invoke-static/range {v4 .. v14}, Lcom/amap/api/mapcore/util/z2;->c(Lcom/amap/api/mapcore/util/h2$e;IILjava/nio/FloatBuffer;FI[FFIFZ)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/mapcore/util/s1;->k:I

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->j:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->p:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/s1;->setHoleOptions(Ljava/util/List;)V

    return-void
.end method

.method public calMapFPoint()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/s1;->y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/s1;->l:Z

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->a:Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x43e

    new-array v4, v4, [F

    .line 4
    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v5, v6}, Lcom/amap/api/mapcore/util/s1;->i(D)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/amap/api/mapcore/util/s1;->b:D

    mul-double v5, v5, v7

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/s1;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, v2, Landroid/graphics/PointF;->x:F

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/s1;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, v2, Landroid/graphics/PointF;->y:F

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aput v7, v4, v1

    .line 9
    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v4, v3

    const/4 v2, 0x0

    const/4 v7, 0x2

    aput v2, v4, v7

    :goto_0
    const/16 v7, 0x169

    if-ge v1, v7, :cond_0

    int-to-double v7, v1

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double v7, v7, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    .line 12
    iget-object v11, p0, Lcom/amap/api/mapcore/util/s1;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    add-double/2addr v12, v9

    double-to-int v9, v12

    .line 13
    iget v10, v11, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    add-double/2addr v10, v7

    double-to-int v7, v10

    .line 14
    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v10, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v10}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v10

    double-to-int v10, v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 15
    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v9, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iput v7, v8, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v7, v1, 0x3

    .line 16
    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    aput v9, v4, v7

    add-int/lit8 v9, v7, 0x1

    .line 17
    iget v8, v8, Landroid/graphics/PointF;->y:F

    aput v8, v4, v9

    add-int/lit8 v7, v7, 0x2

    .line 18
    aput v2, v4, v7

    goto :goto_0

    :cond_0
    const/16 v1, 0x16a

    .line 19
    iput v1, p0, Lcom/amap/api/mapcore/util/s1;->k:I

    .line 20
    invoke-static {v4}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/s1;->j:Ljava/nio/FloatBuffer;

    .line 21
    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkInBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 3
    invoke-static {v2, p1}, Lcom/amap/api/mapcore/util/r3;->N(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/s1;->b:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result p1

    float-to-double v4, p1

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public d(Lcom/amap/api/maps/model/CircleHoleOptions;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/16 v2, 0x43e

    new-array v2, v2, [F

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v3, v4}, Lcom/amap/api/mapcore/util/s1;->i(D)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v5

    mul-double v3, v3, v5

    .line 6
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v5

    double-to-int v5, v5

    sub-int/2addr p1, v5

    int-to-float p1, p1

    iput p1, v1, Landroid/graphics/PointF;->x:F

    .line 7
    iget p1, v0, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    double-to-int v5, v5

    sub-int/2addr p1, v5

    int-to-float p1, p1

    iput p1, v1, Landroid/graphics/PointF;->y:F

    .line 8
    iget v5, v1, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    aput v5, v2, v6

    const/4 v5, 0x1

    aput p1, v2, v5

    const/4 p1, 0x2

    const/4 v5, 0x0

    aput v5, v2, p1

    :goto_0
    const/16 v7, 0x169

    if-ge v6, v7, :cond_0

    int-to-double v7, v6

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double v7, v7, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v3

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    .line 11
    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    add-double/2addr v11, v9

    double-to-int v9, v11

    .line 12
    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    add-double/2addr v10, v7

    double-to-int v7, v10

    .line 13
    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v10

    double-to-int v8, v10

    sub-int/2addr v9, v8

    int-to-float v8, v9

    iput v8, v1, Landroid/graphics/PointF;->x:F

    .line 14
    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, v1, Landroid/graphics/PointF;->y:F

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v8, v6, 0x3

    .line 15
    iget v9, v1, Landroid/graphics/PointF;->x:F

    aput v9, v2, v8

    add-int/lit8 v9, v8, 0x1

    .line 16
    aput v7, v2, v9

    add-int/2addr v8, p1

    .line 17
    aput v5, v2, v8

    goto :goto_0

    :cond_0
    const/16 p1, 0x16a

    .line 18
    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->q:I

    .line 19
    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    .line 20
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 21
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->a:Lcom/amap/api/maps/model/LatLng;

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->j:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->j:Ljava/nio/FloatBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->s:Ljava/nio/FloatBuffer;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->t:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->t:Ljava/nio/FloatBuffer;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->p:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 14
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    :cond_4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->p:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CircleDelegateImp"

    const-string v2, "destroy"

    .line 17
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "destroy erro"

    const-string v1, "CircleDelegateImp destroy"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz p1, :cond_8

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/s1;->b:D

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-lez p1, :cond_8

    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/s1;->g:Z

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->calMapFPoint()Z

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/s1;->l()V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->j:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/amap/api/mapcore/util/s1;->k:I

    if-lez p1, :cond_7

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/s1;->j()V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->v:F

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v1, p0, Lcom/amap/api/mapcore/util/s1;->u:I

    invoke-interface {p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getDottedLineTextureID(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result p1

    :cond_3
    move v10, p1

    .line 10
    iget p1, p0, Lcom/amap/api/mapcore/util/s1;->u:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s1;->x:Lcom/amap/api/mapcore/util/h2$e;

    iget v3, p0, Lcom/amap/api/mapcore/util/s1;->e:I

    iget v4, p0, Lcom/amap/api/mapcore/util/s1;->d:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/s1;->j:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/mapcore/util/s1;->c:F

    iget v7, p0, Lcom/amap/api/mapcore/util/s1;->k:I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 12
    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v8

    iget v9, p0, Lcom/amap/api/mapcore/util/s1;->v:F

    iget-object v11, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v11}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v11

    iget-boolean v12, p0, Lcom/amap/api/mapcore/util/s1;->w:Z

    if-nez v12, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v12, 0x1

    :goto_2
    const/4 v13, 0x1

    move-object v2, v1

    .line 13
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore/util/z2;->d(Lcom/amap/api/mapcore/util/h2$e;IILjava/nio/FloatBuffer;FI[FFIFZZ)V

    .line 14
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/s1;->m()V

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/s1;->l:Z

    :cond_8
    :goto_3
    return-void
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

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->getId()Ljava/lang/String;

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

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/s1;->w:Z

    return-void
.end method

.method public getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getDottedLineType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/s1;->u:I

    return v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/s1;->e:I

    return v0
.end method

.method public getHoleOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "Circle"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->h:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/s1;->b:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/s1;->d:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/s1;->c:F

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
    iget v0, p0, Lcom/amap/api/mapcore/util/s1;->f:F

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

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/s1;->l:Z

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
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/s1;->g:Z

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
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/s1;->y:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/s1;->a:Lcom/amap/api/maps/model/LatLng;

    .line 3
    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->c()V

    .line 5
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

.method public setDottedLineType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->u:I

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->e:I

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setHoleOptions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/s1;->p:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 7
    instance-of v2, v1, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_1

    .line 8
    check-cast v1, Lcom/amap/api/maps/model/PolygonHoleOptions;

    .line 9
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/s1;->g(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/r3;->U(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_1
    instance-of v2, v1, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v2, :cond_2

    .line 12
    check-cast v1, Lcom/amap/api/maps/model/CircleHoleOptions;

    .line 13
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/s1;->k(Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/r3;->T(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/amap/api/mapcore/util/s1;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "PolygonDelegateImp"

    const-string v1, "setHoleOptions"

    .line 15
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public setRadius(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/s1;->b:D

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/s1;->c()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->d:I

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->c:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

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
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/s1;->g:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

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
    iput p1, p0, Lcom/amap/api/mapcore/util/s1;->f:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s1;->i:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
