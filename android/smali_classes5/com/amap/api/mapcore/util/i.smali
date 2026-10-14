.class public Lcom/amap/api/mapcore/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field static b:D = 3.141592653589793

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field public static d:D

.field public static e:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/amap/api/maps/model/LatLng;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x4037614434e3369cL    # 23.379947

    const-wide v5, 0x405df072b4528284L    # 119.757001

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x4038fbb9496249a1L    # 24.983296

    const-wide v5, 0x405e1e5e2478854dL    # 120.474496

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x403984caf709b739L    # 25.518722

    const-wide v5, 0x405e57080b673c4fL    # 121.359866

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x403969cd5f99c38bL    # 25.41329

    const-wide v5, 0x405e9c63a5c1c609L    # 122.443582

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x4038dcda6e75ff61L    # 24.862708

    const-wide v5, 0x405e92746455eaeeL    # 122.288354

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x403876173b85e80cL    # 24.461292

    const-wide v5, 0x405e8c0d6b228dcaL    # 122.188319

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x403595b2e59af9ecL    # 21.584761

    const-wide v5, 0x405e3e02d59d55e7L    # 120.968923

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, 0x4035d4b1bbcf4e87L    # 21.830837

    const-wide v5, 0x405e29e26d4801f7L    # 120.654445

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amap/api/mapcore/util/i;->c:Ljava/util/List;

    const-wide v0, 0x415854c140000000L    # 6378245.0

    .line 2
    sput-wide v0, Lcom/amap/api/mapcore/util/i;->d:D

    const-wide v0, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    .line 3
    sput-wide v0, Lcom/amap/api/mapcore/util/i;->e:D

    return-void
.end method

.method private static a(D)D
    .locals 4

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double p0, p0, v0

    .line 1
    sget-wide v0, Lcom/amap/api/mapcore/util/i;->b:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static b(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double v2, v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double p0, p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method private static c(DI)D
    .locals 1

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x4

    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/k3;->a(DD)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p1

    .line 2
    :cond_1
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    sget-boolean p1, Lcom/amap/api/mapcore/util/i;->a:Z

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/i;->h(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v3, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p1
.end method

.method public static e(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 8

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/k3;->a(DD)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/amap/api/mapcore/util/i;->g(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 3
    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object v7

    .line 5
    :cond_0
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/i;->l(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/amap/api/mapcore/util/i;->g(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 7
    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/i;->q(DD)Lcom/amap/api/maps/model/LatLng;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object p0
.end method

.method private static f(DDDD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    sub-double p4, p0, p4

    sub-double p6, p2, p6

    .line 2
    invoke-static {p4, p5, p6, p7}, Lcom/amap/api/mapcore/util/i;->p(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    add-double/2addr p0, p4

    .line 3
    iget-wide p4, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double/2addr p0, p4

    const/16 p4, 0x8

    invoke-static {p0, p1, p4}, Lcom/amap/api/mapcore/util/i;->c(DI)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr p2, p6

    .line 4
    iget-wide p0, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr p2, p0

    invoke-static {p2, p3, p4}, Lcom/amap/api/mapcore/util/i;->c(DI)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    return-object v0
.end method

.method private static g(DDI)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 14

    const-wide v0, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v2, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v10, v0

    move-wide v12, v2

    move/from16 v0, p4

    :goto_0
    if-ge v5, v0, :cond_0

    move-wide v6, p0

    move-wide/from16 v8, p2

    .line 1
    invoke-static/range {v6 .. v13}, Lcom/amap/api/mapcore/util/i;->f(DDDD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    .line 2
    iget-wide v1, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double v10, p0, v1

    .line 3
    iget-wide v1, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double v12, p2, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private static h(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/k3;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [D

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/t8;->b(DD)[D

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    const/4 p1, 0x0

    .line 4
    aget-wide v1, v0, p1

    const/4 p1, 0x1

    aget-wide v3, v0, p1

    invoke-static {v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method private static i(D)D
    .locals 4

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double p0, p0, v0

    .line 1
    sget-wide v0, Lcom/amap/api/mapcore/util/i;->b:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static j(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double v2, v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double p0, p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static k(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 8

    .line 1
    :try_start_0
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/k3;->a(DD)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/i;->o(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 3
    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {p0, v7}, Lcom/amap/api/mapcore/util/i;->d(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public static l(DD)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 2
    sget-object p0, Lcom/amap/api/mapcore/util/i;->c:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/r3;->P(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(DD)D
    .locals 12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p0

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v8

    .line 2
    sget-wide v8, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p0, p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double p0, p0, v8

    sget-wide v10, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 3
    sget-wide p0, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double p0, p2, p0

    .line 4
    sget-wide v2, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double p0, p0, v2

    sget-wide v2, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p2, p2, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    return-wide v4
.end method

.method public static n(DD)D
    .locals 12

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double v8, v8, p2

    add-double/2addr v2, v8

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double p2, p2, p0

    .line 2
    sget-wide v6, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double p2, p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr p2, v8

    mul-double p2, p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 3
    sget-wide p2, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double v6, v6, v10

    add-double/2addr p2, v6

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4028000000000000L    # 12.0

    div-double p2, p0, p2

    .line 4
    sget-wide v6, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double p0, p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    add-double/2addr p2, p0

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    return-wide v2
.end method

.method private static o(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 11

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double p0, p0, v0

    double-to-long p0, p0

    const-wide/32 v2, 0x2255100

    .line 1
    rem-long/2addr p0, v2

    long-to-double p0, p0

    mul-double p2, p2, v0

    double-to-long p2, p2

    .line 2
    rem-long/2addr p2, v2

    long-to-double p2, p2

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/i;->b(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v2, p0

    double-to-int v2, v2

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/i;->j(DD)D

    move-result-wide v3

    neg-double v3, v3

    add-double/2addr v3, p2

    double-to-int v3, v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 5
    invoke-static {v4, v5, v2, v3}, Lcom/amap/api/mapcore/util/i;->b(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, p0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    cmpl-double v10, p0, v8

    if-lez v10, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    int-to-double p0, p0

    add-double/2addr v4, p0

    double-to-int p0, v4

    int-to-double p0, p0

    .line 6
    invoke-static {p0, p1, v2, v3}, Lcom/amap/api/mapcore/util/i;->j(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v2, p2

    cmpl-double v4, p2, v8

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    int-to-double p2, v6

    add-double/2addr v2, p2

    double-to-int p2, v2

    div-double/2addr p0, v0

    int-to-double p2, p2

    div-double/2addr p2, v0

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    return-object p0
.end method

.method private static p(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 9

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/i;->i(D)D

    move-result-wide v1

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 3
    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/i;->a(D)D

    move-result-wide v3

    mul-double v5, p0, p0

    mul-double v7, p2, p2

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v3, v7

    mul-double v1, v1, v3

    const-wide v3, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v1, v3

    .line 4
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/i;->i(D)D

    move-result-wide v3

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    .line 5
    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/i;->a(D)D

    move-result-wide p2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr p2, v3

    mul-double p0, p0, p2

    const-wide p2, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr p0, p2

    const/16 p2, 0x8

    .line 6
    invoke-static {v1, v2, p2}, Lcom/amap/api/mapcore/util/i;->c(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 7
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/i;->c(DI)D

    move-result-wide p0

    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    return-object v0
.end method

.method private static q(DD)Lcom/amap/api/maps/model/LatLng;
    .locals 5

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/i;->r(DD)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double p2, p2, v1

    .line 2
    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr p2, v3

    mul-double p0, p0, v1

    .line 3
    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr p0, v0

    .line 4
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static r(DD)Lcom/amap/api/maps/model/LatLng;
    .locals 18

    const-wide v0, 0x405a400000000000L    # 105.0

    sub-double v0, p2, v0

    const-wide v2, 0x4041800000000000L    # 35.0

    sub-double v2, p0, v2

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/i;->m(DD)D

    move-result-wide v4

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/i;->n(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v6, p0, v2

    .line 3
    sget-wide v8, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double v6, v6, v8

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 5
    sget-wide v10, Lcom/amap/api/mapcore/util/i;->e:D

    mul-double v10, v10, v8

    mul-double v10, v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v8, v10

    .line 6
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v4, v4, v2

    .line 7
    sget-wide v14, Lcom/amap/api/mapcore/util/i;->d:D

    sget-wide v16, Lcom/amap/api/mapcore/util/i;->e:D

    sub-double v8, v8, v16

    mul-double v8, v8, v14

    mul-double v10, v10, v12

    div-double/2addr v8, v10

    sget-wide v10, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double v8, v8, v10

    div-double/2addr v4, v8

    mul-double v0, v0, v2

    div-double/2addr v14, v12

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v14, v14, v2

    sget-wide v2, Lcom/amap/api/mapcore/util/i;->b:D

    mul-double v14, v14, v2

    div-double/2addr v0, v14

    add-double v2, p0, v4

    add-double v0, p2, v0

    .line 9
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object v4
.end method
