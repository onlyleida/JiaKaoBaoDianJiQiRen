.class public Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
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

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 7

    const/4 v0, 0x0

    .line 1
    aget-object v1, p2, v0

    const/4 v2, 0x2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v3, p2, v4

    aget-object v5, p1, v0

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object p2, p2, v2

    aget-object v2, p1, v4

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    new-instance p1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v1, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {p1, v0, v3, v4, v1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x2

    if-ge v3, v10, :cond_1

    .line 5
    new-instance p1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    const-wide/16 v3, 0x0

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v0, v1, v2

    invoke-direct {p1, v0, v3, v4, v1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p1

    .line 6
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 8
    new-instance p1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v12, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    move-object v3, v12

    move-object v6, v0

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v5

    mul-double v5, v5, v3

    new-array v3, v10, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v0, v3, v2

    aput-object v11, v3, v1

    invoke-direct {p1, v12, v5, v6, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p1

    .line 9
    :cond_2
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    new-array v3, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 10
    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v3, v2

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v3, v1

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v5, v3, v10

    new-array v5, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 11
    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v6, v5, v2

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v6, v5, v1

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v6, v5, v10

    new-array v6, v4, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 12
    aget-object v7, v3, v2

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v8, v5, v2

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v2

    aget-object v7, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v8, v5, v1

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v1

    aget-object v7, v3, v10

    aget-object v8, v3, v10

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v8, v5, v10

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v6, v10

    .line 13
    invoke-direct {p0, v3, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    .line 14
    invoke-direct {p0, v6, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    .line 15
    invoke-direct {p0, v6, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    .line 16
    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    .line 17
    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    .line 18
    aget-object v3, v3, v2

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    .line 19
    aget-object v5, v5, v2

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    .line 20
    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v5, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    .line 21
    new-instance v5, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v8}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v12

    invoke-direct {v7, v8, v9, v12, v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    new-array v3, v4, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v0, v3, v2

    aput-object v11, v3, v1

    aput-object p1, v3, v10

    invoke-direct {v5, v7, v8, v9, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v5
.end method
