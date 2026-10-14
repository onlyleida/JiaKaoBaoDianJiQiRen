.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final individualDistances:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method

.method private averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 14

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 3
    const-class v4, D

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    .line 5
    invoke-virtual {p1, v5, v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v7

    .line 6
    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v8

    .line 7
    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v7

    const-wide/16 v9, 0x0

    .line 8
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    add-int/lit8 v11, v11, 0x1

    .line 9
    iget-object v13, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v12

    invoke-interface {v13, v7, v12}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v12

    add-double/2addr v9, v12

    goto :goto_2

    .line 10
    :cond_0
    aget-object v7, v2, v5

    int-to-double v11, v11

    div-double/2addr v9, v11

    aput-wide v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v5

    const/4 v6, 0x0

    aput v4, v7, v6

    .line 3
    const-class v4, D

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_3

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_2

    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v5

    .line 4
    invoke-virtual {v1, v7, v9}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v11

    .line 5
    sget-object v12, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v7, v9, v12, v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 6
    aget-object v13, v4, v8

    add-int/lit8 v14, v10, 0x1

    iget-object v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v12

    invoke-interface {v15, v11, v12}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v15

    aput-wide v15, v13, v14

    .line 7
    :cond_0
    sget-object v12, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v7, v9, v12, v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    if-eqz v12, :cond_1

    add-int/lit8 v13, v8, 0x1

    .line 8
    aget-object v13, v4, v13

    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v12

    invoke-interface {v14, v11, v12}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v11

    aput-wide v11, v13, v10

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_8

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v3, :cond_7

    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v5

    .line 9
    invoke-virtual {v1, v7, v9}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v11

    .line 10
    sget-object v12, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v7, v9, v12, v13}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v13

    .line 11
    sget-object v14, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v15, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v7, v9, v14, v15}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v14

    .line 12
    invoke-virtual {v1, v7, v9, v12, v15}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    if-nez v12, :cond_4

    const-wide/16 v11, 0x0

    goto :goto_4

    .line 13
    :cond_4
    iget-object v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v11

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v12

    invoke-interface {v15, v11, v12}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v11

    :goto_4
    if-eqz v13, :cond_6

    if-nez v14, :cond_5

    goto :goto_5

    .line 14
    :cond_5
    iget-object v15, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v13}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v13

    invoke-virtual {v14}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v14

    invoke-interface {v15, v13, v14}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v15

    goto :goto_6

    :cond_6
    :goto_5
    const-wide/16 v15, 0x0

    :goto_6
    add-int/lit8 v13, v8, 0x1

    .line 15
    aget-object v13, v4, v13

    add-int/2addr v10, v5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v15

    mul-double v11, v11, v17

    aput-wide v11, v13, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 16
    :cond_8
    array-length v1, v4

    sub-int/2addr v1, v5

    .line 17
    aget-object v2, v4, v1

    aput-object v2, v4, v6

    .line 18
    aget-object v2, v4, v6

    array-length v2, v2

    sub-int/2addr v2, v5

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_9

    .line 19
    aget-object v5, v4, v3

    aget-object v7, v4, v3

    aget-wide v8, v7, v2

    aput-wide v8, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    return-object v4
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object p1

    return-object p1
.end method
