.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;",
        "Ljava/lang/Iterable<",
        "[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 2
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p5, p6}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;>;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->check2PiConsistency()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->check2PiConsistency()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstArcStart()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method private addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;DZ)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide p3

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1
.end method

.method private static buildTree(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v3

    if-nez v3, :cond_3

    sub-double v3, p2, p0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x1

    cmpl-double v8, p0, p2

    if-gtz v8, :cond_2

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    .line 2
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p0

    add-double/2addr v3, p0

    .line 3
    new-instance p2, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance p3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {p3, p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p2, p3, v2, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object p0

    const/4 p1, 0x0

    cmpg-double p2, v3, v5

    if-gtz p2, :cond_1

    .line 4
    new-instance p2, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance p3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {p3, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p2, p3, v7, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object p2

    .line 5
    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance p5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p5, p2, v2, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {p3, p0, p4, p5, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object p3

    .line 6
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance p3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    sub-double/2addr v3, v5

    invoke-direct {p3, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p2, p3, v7, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object p2

    .line 7
    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p5, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p4, p2, p5, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p2, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p3, p0, p4, p2, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object p3

    .line 8
    :cond_2
    new-instance p4, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p4, p5, p0, p1, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p4

    .line 9
    :cond_3
    :goto_0
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method private check2PiConsistency()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
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

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getLastLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;-><init>()V

    throw v0
.end method

.method private childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isDirect(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

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

.method private createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v3, v5

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v7

    sub-double/2addr v7, v5

    .line 6
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_4

    if-lez v3, :cond_1

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    sub-double/2addr v5, v7

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double p1, v5, v2

    if-lez p1, :cond_2

    .line 12
    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object p1

    :cond_2
    return-object v1

    .line 13
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/2addr v2, v4

    goto/16 :goto_0

    .line 14
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 15
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_6

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {p0, v2, v5, v6, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    add-int/lit8 v5, v3, 0x1

    .line 17
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {p0, v2, v5, v6, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->addArcLimit(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v1

    .line 19
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v0

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object p1
.end method

.method private getAngle(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v0

    return-wide v0
.end method

.method private getFirstArcStart()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
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
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->getFirstLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
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
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->previousInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method private getLastLeaf(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
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
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->nextInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method private isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
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
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isArcEnd(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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

.method private isArcStart(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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

.method private isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
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
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->isDirect()Z

    move-result p1

    return p1
.end method

.method private leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafAfter(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isAfterParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

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
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->childBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->leafBefore(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->isBeforeParent(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Arc;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 3
    new-instance v10, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;-><init>(DDD)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object p1

    return-object p1
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method protected computeGeometricalProperties()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v5, 0x0

    if-nez v2, :cond_1

    .line 2
    sget-object v2, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v5

    :goto_0
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v7, v5

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    const/4 v10, 0x1

    .line 5
    aget-wide v11, v9, v10

    aget-wide v13, v9, v1

    sub-double/2addr v11, v13

    add-double/2addr v5, v11

    .line 6
    aget-wide v13, v9, v1

    aget-wide v15, v9, v10

    add-double/2addr v13, v15

    mul-double v11, v11, v13

    add-double/2addr v7, v11

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    .line 8
    invoke-static {v5, v6, v3, v4, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    sget-object v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_2

    .line 10
    :cond_3
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v4, v5, v2

    if-ltz v4, :cond_4

    .line 11
    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v2

    div-double/2addr v7, v5

    invoke-direct {v1, v7, v8}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    .line 13
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    :goto_2
    return-void
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
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V

    return-object v0
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const/4 v5, 0x0

    move-wide v6, v3

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4
    aget-wide v6, v9, v5

    :cond_0
    const/4 v10, 0x1

    if-nez v8, :cond_5

    .line 5
    aget-wide v11, v9, v5

    cmpg-double v13, v0, v11

    if-gez v13, :cond_3

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    sub-double v6, v0, v3

    .line 7
    aget-wide v10, v9, v5

    sub-double/2addr v10, v0

    cmpg-double v0, v6, v10

    if-gez v0, :cond_2

    .line 8
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v0, p1, v1, v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 9
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    aget-wide v2, v9, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v0, p1, v1, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 10
    :cond_3
    aget-wide v3, v9, v10

    cmpg-double v11, v0, v3

    if-gtz v11, :cond_5

    .line 11
    aget-wide v2, v9, v5

    sub-double/2addr v2, v0

    .line 12
    aget-wide v6, v9, v10

    sub-double/2addr v0, v6

    cmpg-double v4, v2, v0

    if-gez v4, :cond_4

    .line 13
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    aget-wide v4, v9, v10

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v2

    .line 14
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    aget-wide v4, v9, v5

    invoke-direct {v1, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 15
    :cond_5
    :goto_1
    aget-wide v3, v9, v10

    goto :goto_0

    .line 16
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v2, :cond_7

    .line 17
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    :cond_7
    if-eqz v8, :cond_9

    sub-double v8, v3, v9

    sub-double v8, v0, v8

    sub-double v0, v6, v0

    cmpg-double v2, v8, v0

    if-gez v2, :cond_8

    .line 18
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v0, p1, v1, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 19
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v3, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v2

    :cond_9
    sub-double v11, v0, v3

    add-double/2addr v9, v6

    sub-double/2addr v9, v0

    cmpg-double v0, v11, v9

    if-gez v0, :cond_a

    .line 20
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v0, p1, v1, v11, v12}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0

    .line 21
    :cond_a
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v1, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {v0, p1, v1, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v0
.end method

.method public side(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object p1

    return-object p1
.end method

.method public split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v3, v5

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v7

    sub-double/2addr v5, v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    const/4 v9, 0x0

    .line 6
    aget-wide v10, v8, v9

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v12

    sub-double/2addr v10, v12

    .line 7
    aget-wide v12, v8, v9

    sub-double/2addr v12, v10

    const/4 v14, 0x1

    .line 8
    aget-wide v15, v8, v14

    sub-double/2addr v15, v12

    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v19, v10, v5

    if-gez v19, :cond_2

    .line 9
    aget-wide v9, v8, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v9, v15, v5

    if-lez v9, :cond_1

    add-double v9, v5, v12

    .line 10
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v9, v15, v17

    if-lez v9, :cond_0

    add-double v12, v12, v17

    .line 12
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    aget-wide v9, v8, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    aget-wide v9, v8, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    aget-wide v9, v8, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    aget-wide v9, v8, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v9, v15, v17

    if-lez v9, :cond_4

    add-double v9, v12, v17

    .line 18
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double v17, v5, v17

    cmpl-double v9, v15, v17

    if-lez v9, :cond_3

    add-double v17, v17, v12

    .line 20
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    aget-wide v9, v8, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :cond_3
    aget-wide v9, v8, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_4
    aget-wide v9, v8, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->createSplitPart(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$1;)V

    return-object v3
.end method
