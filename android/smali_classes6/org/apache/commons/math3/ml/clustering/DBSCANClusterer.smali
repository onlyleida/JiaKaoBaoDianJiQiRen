.class public Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Clusterer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final eps:D

.field private final minPts:I


# direct methods
.method public constructor <init>(DI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;-><init>(DILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    return-void
.end method

.method public constructor <init>(DILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    const-wide/16 v0, 0x0

    cmpg-double p4, p1, v0

    if-ltz p4, :cond_1

    if-ltz p3, :cond_0

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    .line 4
    iput p3, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 6
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p3
.end method

.method private expandCluster(Lorg/apache/commons/math3/ml/clustering/Cluster;Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/List;Ljava/util/Collection;Ljava/util/Map;)Lorg/apache/commons/math3/ml/clustering/Cluster;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;TT;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
            "Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;",
            ">;)",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    .line 2
    sget-object v0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {p5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 5
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 6
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    if-nez v1, :cond_0

    .line 7
    invoke-direct {p0, v0, p4}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    if-lt v3, v4, :cond_0

    .line 9
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 10
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    if-eq v1, v2, :cond_1

    .line 11
    invoke-interface {p5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    .line 5
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v3, p1}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->getNeighbors(Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    if-lt v1, v2, :cond_1

    .line 8
    new-instance v2, Lorg/apache/commons/math3/ml/clustering/Cluster;

    invoke-direct {v2}, Lorg/apache/commons/math3/ml/clustering/Cluster;-><init>()V

    move-object v1, p0

    move-object v5, p1

    move-object v6, v7

    .line 9
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->expandCluster(Lorg/apache/commons/math3/ml/clustering/Cluster;Lorg/apache/commons/math3/ml/clustering/Clusterable;Ljava/util/List;Ljava/util/Collection;Ljava/util/Map;)Lorg/apache/commons/math3/ml/clustering/Cluster;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;->NOISE:Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer$PointStatus;

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getEps()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->eps:D

    return-wide v0
.end method

.method public getMinPts()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/DBSCANClusterer;->minPts:I

    return v0
.end method
