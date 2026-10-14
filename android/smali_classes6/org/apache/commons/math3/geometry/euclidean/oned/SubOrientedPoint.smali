.class public Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-void
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public getSize()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    const/4 p1, 0x0

    const-wide v2, -0x4224832026284245L    # -1.0E-10

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v0

    :cond_0
    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {v0, p1, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v0
.end method
