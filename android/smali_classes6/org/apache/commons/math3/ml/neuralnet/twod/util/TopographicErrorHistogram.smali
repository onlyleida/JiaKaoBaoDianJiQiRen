.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final relativeCount:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->relativeCount:Z

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Ljava/lang/Iterable<",
            "[D>;)[[D"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v4

    .line 4
    new-instance v5, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v5, v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v3, v7, v8

    const/4 v9, 0x0

    aput v2, v7, v9

    .line 5
    const-class v10, I

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    new-array v6, v6, [I

    aput v3, v6, v8

    aput v2, v6, v9

    .line 6
    const-class v10, D

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 8
    iget-object v12, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v11, v1, v12}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBestAndSecondBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v11

    .line 9
    invoke-virtual {v11}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    .line 10
    invoke-virtual {v5, v12}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v13

    .line 11
    invoke-virtual {v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v14

    .line 12
    invoke-virtual {v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v13

    .line 13
    aget-object v15, v7, v14

    aget v16, v15, v13

    add-int/lit8 v16, v16, 0x1

    aput v16, v15, v13

    .line 14
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v12

    invoke-virtual {v11}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 15
    aget-object v11, v6, v14

    aget-wide v14, v11, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    aput-wide v14, v11, v13

    goto :goto_0

    .line 16
    :cond_1
    iget-boolean v1, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/TopographicErrorHistogram;->relativeCount:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 17
    aget-object v5, v6, v1

    aget-wide v10, v5, v4

    aget-object v8, v7, v1

    aget v8, v8, v4

    int-to-double v12, v8

    div-double/2addr v10, v12

    aput-wide v10, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v6
.end method
