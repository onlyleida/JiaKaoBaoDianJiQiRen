.class public abstract Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Region;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Region<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private barycenter:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field

.field private size:D

.field private final tolerance:D

.field private tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(D)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;>;D)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 10
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Ljava/util/TreeSet;

    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;

    invoke-direct {p3, p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;-><init>(Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;)V

    invoke-direct {p2, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 13
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V

    .line 15
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;

    invoke-direct {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$2;-><init>(Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;)V

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    :goto_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;D)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 6
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;D)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;D)V"
        }
    .end annotation

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    if-eqz p1, :cond_2

    .line 18
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 19
    aget-object p3, p1, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 20
    invoke-virtual {p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 21
    array-length v2, p1

    :goto_0
    if-ge p2, v2, :cond_3

    aget-object v3, p1, p2

    .line 22
    invoke-virtual {p3, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 23
    invoke-virtual {p3, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p3

    .line 26
    invoke-virtual {p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :cond_3
    return-void
.end method

.method private insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :cond_0
    if-nez v1, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 10
    invoke-interface {v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v4

    .line 11
    sget-object v5, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$3;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v3, 0x3

    if-eq v5, v3, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V

    .line 17
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->insertCuts(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/Collection;)V

    return-void
.end method

.method private recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 4
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-nez p2, :cond_2

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    return-object p2

    .line 9
    :cond_3
    invoke-interface {p2, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1

    .line 11
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1

    .line 13
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "TS;TT;>;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    .line 4
    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    invoke-virtual {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    invoke-virtual {v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v2

    .line 7
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    invoke-virtual {v1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v3

    .line 8
    :goto_1
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    .line 9
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-direct {v2, v0, v3, p2, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object p2, v2

    .line 10
    :goto_2
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method


# virtual methods
.method public applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "TS;TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
            "TS;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

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

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object p1

    return-object p1
.end method

.method public abstract buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
            "TS;TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object p1

    return-object p1
.end method

.method public checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p1

    return-object p1
.end method

.method public checkPoint(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p1

    return-object p1
.end method

.method protected checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    :goto_0
    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    :goto_1
    return-object v0
.end method

.method protected checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->checkPoint(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p1

    return-object p1
.end method

.method protected abstract computeGeometricalProperties()V
.end method

.method public contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->difference(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
            "TS;TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object v0

    return-object v0
.end method

.method public getBarycenter()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->computeGeometricalProperties()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getBoundarySize()D
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundarySizeVisitor;->getSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->computeGeometricalProperties()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->size:D

    return-wide v0
.end method

.method public getTolerance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tolerance:D

    return-wide v0
.end method

.method public getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p1
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->recurseIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFull()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    return v0
.end method

.method public isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;-><init>(Lorg/apache/commons/math3/geometry/Point;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjector;->getProjection()Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object p1

    return-object p1
.end method

.method protected setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->barycenter:Lorg/apache/commons/math3/geometry/Point;

    return-void
.end method

.method protected setBarycenter(Lorg/apache/commons/math3/geometry/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method protected setSize(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->size:D

    return-void
.end method

.method public side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->tree:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    :goto_0
    return-object p1
.end method
