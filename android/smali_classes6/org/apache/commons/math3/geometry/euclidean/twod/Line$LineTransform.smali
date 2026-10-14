.class Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# instance fields
.field private c11:D

.field private c1X:D

.field private c1Y:D

.field private cX1:D

.field private cXX:D

.field private cXY:D

.field private cY1:D

.field private cYX:D

.field private cYY:D


# direct methods
.method constructor <init>(DDDDDD)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v13, p1

    .line 2
    iput-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    .line 3
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    move-wide/from16 v11, p5

    .line 4
    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    .line 5
    iput-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    move-wide/from16 v9, p9

    .line 6
    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cX1:D

    move-wide/from16 v7, p11

    .line 7
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cY1:D

    neg-double v5, v3

    move-wide v15, v5

    move-wide/from16 v5, p5

    move-wide v9, v15

    move-wide/from16 v11, p9

    .line 8
    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1Y:D

    neg-double v1, v1

    move-wide/from16 v5, p1

    move-wide v9, v1

    .line 9
    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1X:D

    move-wide v5, v1

    move-wide/from16 v1, p1

    move-wide/from16 v7, p5

    .line 10
    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c11:D

    .line 11
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_INVERTIBLE_TRANSFORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 7
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 8
    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1X:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1Y:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c11:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$200(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    .line 9
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v4

    .line 10
    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    invoke-static/range {v6 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v6

    mul-double v8, v6, v6

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    .line 11
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    .line 12
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    neg-double v12, v6

    neg-double v14, v4

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    add-double v13, v12, v14

    mul-double v15, v10, v4

    mul-double v17, v10, v6

    mul-double v19, v10, v2

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v21

    const/16 v23, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v23}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$1;)V

    return-object v8
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v14

    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v16

    .line 6
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cX1:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v4, v14

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v12

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cY1:D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide v14, v12

    move-wide/from16 v12, v18

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    invoke-direct {v1, v14, v15, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .line 14
    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 15
    check-cast p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p3

    .line 17
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result p1

    invoke-static {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v1

    invoke-direct {v0, p3, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object p1

    return-object p1
.end method
