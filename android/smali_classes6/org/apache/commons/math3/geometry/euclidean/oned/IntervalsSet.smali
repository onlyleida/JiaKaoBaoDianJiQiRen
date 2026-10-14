.class public Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;",
        "Ljava/lang/Iterable<",
        "[D>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 6
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 2
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p5, p6}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;>;D)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;D)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstIntervalBoundary()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method private static buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    cmpg-double v2, p0, v4

    if-gez v2, :cond_1

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    cmpl-double p0, p2, v4

    if-lez p0, :cond_0

    .line 3
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-direct {p0, p1, v3, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object p0

    .line 5
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p3, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p0, p2, p3, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object p1

    .line 6
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v7, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    const/4 p0, 0x0

    invoke-direct {v2, v7, p0, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object p0

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_2

    cmpl-double p1, p2, v4

    if-lez p1, :cond_2

    .line 8
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p3, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p0, p2, p3, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v2, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-direct {p1, v2, v3, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object p1

    .line 10
    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p5, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p4, p1, p5, v0, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {p2, p0, p3, p4, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object p2
.end method

.method private childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method private childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method private finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method private getFirstIntervalBoundary()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method private isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result p1

    return p1
.end method

.method private isIntervalEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isIntervalStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method private previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 3
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;-><init>(DD)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometricalProperties()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->asList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;

    .line 5
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSize()D

    move-result-wide v7

    add-double/2addr v2, v7

    .line 6
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSize()D

    move-result-wide v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getBarycenter()D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v4, v7

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v1, v2, v6

    if-ltz v1, :cond_4

    .line 11
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    div-double/2addr v4, v2

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    :goto_1
    return-void
.end method

.method public getInf()D
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    :goto_1
    move-wide v1, v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :cond_2
    return-wide v1
.end method

.method public getSup()D
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 2
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    :goto_1
    move-wide v1, v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :cond_2
    return-wide v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[D>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet$SubIntervalsIterator;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V

    return-object v0
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/4 v6, 0x0

    .line 3
    aget-wide v7, v5, v6

    cmpg-double v9, v0, v7

    if-gez v9, :cond_1

    sub-double v7, v0, v3

    .line 4
    aget-wide v9, v5, v6

    sub-double/2addr v9, v0

    cmpg-double v0, v7, v9

    if-gez v0, :cond_0

    .line 5
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-direct {v0, p1, v1, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    aget-wide v1, v5, v6

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-direct {v0, p1, v1, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    :cond_1
    const/4 v3, 0x1

    .line 7
    aget-wide v7, v5, v3

    cmpg-double v4, v0, v7

    if-gtz v4, :cond_3

    .line 8
    aget-wide v7, v5, v6

    sub-double/2addr v7, v0

    .line 9
    aget-wide v9, v5, v3

    sub-double/2addr v0, v9

    cmpg-double v2, v7, v0

    if-gez v2, :cond_2

    .line 10
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    aget-wide v3, v5, v3

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v2

    .line 11
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    aget-wide v1, v5, v6

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-direct {v0, p1, v1, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 12
    :cond_3
    aget-wide v3, v5, v3

    goto :goto_0

    .line 13
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;->finiteOrNullPoint(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v5

    sub-double/2addr v0, v3

    invoke-direct {v2, p1, v5, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v2
.end method
