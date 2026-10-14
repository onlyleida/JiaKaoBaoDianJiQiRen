.class public Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;,
        Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<",
            "TS;>.NodesCleaner;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method private recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 7
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 8
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    .line 11
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 13
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 14
    :goto_2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    .line 15
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object v0, v1

    .line 16
    :goto_3
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public varargs buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    .line 2
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v3

    .line 3
    invoke-interface {v3, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 5
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, p1, v6

    .line 6
    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_3

    .line 11
    :cond_1
    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    move-object v9, v4

    .line 12
    :goto_1
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v10

    if-eqz v10, :cond_5

    if-eqz v8, :cond_5

    .line 13
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v10

    .line 14
    invoke-interface {v8, v10}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v11

    .line 15
    sget-object v12, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    const/4 v8, 0x2

    if-eq v12, v8, :cond_2

    .line 16
    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v8

    goto :goto_2

    .line 17
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_CONVEX_HYPERPLANES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 18
    :cond_3
    invoke-interface {v7, v10}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 19
    aget-object p1, p1, v2

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    :goto_2
    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v9

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-object v3

    :cond_7
    :goto_4
    return-object v1
.end method

.method public difference(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 3
    invoke-interface {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    return-object p1
.end method

.method public getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->recurseComplement(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    return-object p1
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 3
    invoke-interface {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    return-object p1
.end method

.method public union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$UnionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 3
    invoke-interface {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    return-object p1
.end method

.method public xor(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$XorMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V

    invoke-virtual {v1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->nodeCleaner:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$NodesCleaner;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 3
    invoke-interface {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    return-object p1
.end method
