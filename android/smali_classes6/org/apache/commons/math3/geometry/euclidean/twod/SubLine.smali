.class public Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;)V
    .locals 5

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTolerance()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
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

.method private static buildIntervalSet(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 9

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 2
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    return-object v8
.end method


# virtual methods
.method protected buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 5
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    .line 6
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    .line 7
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-direct {v5, v4, v3, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;Z)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v4

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 6
    sget-object p2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq v0, p2, :cond_1

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    return-object v2

    .line 7
    :cond_2
    sget-object p2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v0, p2, :cond_3

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    return-object v2
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 2
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 3
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTolerance()D

    move-result-wide v3

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v0

    neg-double v6, v3

    cmpg-double p1, v0, v6

    if-gez p1, :cond_0

    .line 6
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {p1, v5, p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object p1

    :cond_0
    cmpl-double p1, v0, v3

    if-lez p1, :cond_1

    .line 7
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {p1, p0, v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {p1, v5, v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 p1, 0x0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    .line 11
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    xor-int/lit8 v8, v6, 0x1

    invoke-direct {v7, v2, v8, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v7

    .line 12
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-direct {v8, v2, v6, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v6, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v6, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 15
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v8, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {v7, v2, v8, p1, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object p1, v7

    .line 16
    :goto_2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v5

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-direct {v7, v6, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct {v2, v5, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-direct {v6, p1, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v0
.end method
