.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 8

    const/4 v0, 0x0

    .line 1
    aget-object v1, p2, v0

    const/4 v2, 0x1

    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v4, p1, v3

    const/4 v5, 0x3

    aget-object v6, p1, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v0

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v0

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v2

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v3

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v2

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v2

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v5

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v3

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v5

    aget-object v6, p3, v2

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object p2, p2, v5

    aget-object p3, p3, v3

    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p2

    aget-object p3, p1, v2

    aget-object p1, p1, v0

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 2
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v3, v4, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v1, v2, v5, v6, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 3
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x2

    if-ge v5, v12, :cond_1

    .line 5
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    const-wide/16 v5, 0x0

    new-array v3, v3, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v2, v3, v4

    invoke-direct {v1, v2, v5, v6, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 6
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x3

    if-ge v5, v11, :cond_2

    .line 8
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    move-object v5, v14

    move-object v8, v2

    move-object v11, v13

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v2, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v7

    mul-double v7, v7, v5

    new-array v5, v12, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v2, v5, v4

    aput-object v13, v5, v3

    invoke-direct {v1, v14, v7, v8, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 9
    :cond_2
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    .line 11
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v7

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v9

    add-double/2addr v7, v9

    mul-double v9, v7, v5

    move-object v5, v1

    move-object v6, v2

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 12
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;

    invoke-direct {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;-><init>()V

    new-array v6, v11, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v5

    .line 13
    new-instance v6, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/Vector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v7

    new-array v5, v11, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v2, v5, v4

    aput-object v13, v5, v3

    aput-object v14, v5, v12

    invoke-direct {v6, v1, v7, v8, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v6

    .line 14
    :cond_3
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-array v5, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 15
    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v4

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v3

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v12

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v11

    new-array v7, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 16
    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v4

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v3

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v12

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v11

    new-array v8, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 17
    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    move-object/from16 p1, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-direct {v9, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v9, v8, v4

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    move-object v9, v5

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-direct {v6, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v6, v8, v3

    new-instance v4, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v4, v8, v12

    new-instance v4, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v4, v8, v11

    const/4 v4, 0x4

    new-array v5, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v4, 0x0

    .line 18
    aget-object v6, v9, v4

    aget-object v7, v9, v4

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v7, p1, v4

    aget-object v15, p1, v4

    invoke-virtual {v7, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v7, v8, v4

    aget-object v15, v8, v4

    invoke-virtual {v7, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v5, v4

    aget-object v4, v9, v3

    aget-object v6, v9, v3

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v3

    aget-object v15, p1, v3

    invoke-virtual {v6, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, v8, v3

    aget-object v15, v8, v3

    invoke-virtual {v6, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v5, v3

    aget-object v4, v9, v12

    aget-object v6, v9, v12

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v12

    aget-object v15, p1, v12

    invoke-virtual {v6, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, v8, v12

    aget-object v15, v8, v12

    invoke-virtual {v6, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v5, v12

    aget-object v4, v9, v11

    aget-object v6, v9, v11

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v11

    aget-object v15, p1, v11

    invoke-virtual {v6, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, v8, v11

    aget-object v15, v8, v11

    invoke-virtual {v6, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v5, v11

    move-object/from16 v4, p1

    .line 19
    invoke-direct {v0, v9, v4, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    .line 20
    invoke-direct {v0, v5, v4, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v15

    .line 21
    invoke-direct {v0, v5, v9, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    .line 22
    invoke-direct {v0, v5, v9, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    .line 23
    invoke-virtual {v15, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v15

    .line 24
    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    .line 25
    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    const/4 v6, 0x0

    .line 26
    aget-object v9, v9, v6

    invoke-virtual {v9, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    .line 27
    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 28
    aget-object v8, v8, v6

    move-object v6, v7

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    .line 29
    invoke-virtual {v9, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v4, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v8, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    .line 30
    new-instance v8, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v15}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v6}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v19

    invoke-virtual {v5}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v21

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v22}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    const/4 v6, 0x4

    new-array v6, v6, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v13, v6, v3

    aput-object v14, v6, v12

    aput-object v1, v6, v11

    invoke-direct {v8, v9, v4, v5, v6}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v8
.end method
