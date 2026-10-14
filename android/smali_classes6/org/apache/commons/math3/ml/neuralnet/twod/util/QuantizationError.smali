.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 16
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
    new-instance v4, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v8, 0x0

    aput v2, v6, v8

    .line 4
    const-class v9, I

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    new-array v5, v5, [I

    aput v3, v5, v7

    aput v2, v5, v8

    .line 5
    const-class v9, D

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 7
    iget-object v11, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v10, v1, v11}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v11

    .line 8
    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v12

    .line 9
    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v13

    .line 10
    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v12

    .line 11
    aget-object v14, v6, v13

    aget v15, v14, v12

    add-int/2addr v15, v7

    aput v15, v14, v12

    .line 12
    aget-object v13, v5, v13

    aget-wide v14, v13, v12

    iget-object v7, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/QuantizationError;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v10

    add-double/2addr v14, v10

    aput-wide v14, v13, v12

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 13
    aget-object v7, v6, v1

    aget v7, v7, v4

    if-eqz v7, :cond_1

    .line 14
    aget-object v9, v5, v1

    aget-wide v10, v9, v4

    int-to-double v12, v7

    div-double/2addr v10, v12

    aput-wide v10, v9, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v5
.end method
