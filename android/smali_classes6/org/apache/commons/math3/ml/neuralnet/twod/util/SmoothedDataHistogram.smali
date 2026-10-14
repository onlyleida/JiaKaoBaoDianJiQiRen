.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final membershipNormalization:D

.field private final smoothingBins:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    sub-int v2, p1, p2

    int-to-double v2, v2

    add-double/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, v0

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->membershipNormalization:D

    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;",
            "Ljava/lang/Iterable<",
            "[D>;)[[D"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    mul-int v2, v0, v1

    .line 3
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 4
    new-instance v2, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 5
    const-class v0, D

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->sort([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    if-ge v4, v5, :cond_0

    .line 9
    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v6

    .line 11
    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v5

    .line 12
    aget-object v6, v0, v6

    aget-wide v7, v6, v5

    iget v9, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    sub-int/2addr v9, v4

    int-to-double v9, v9

    iget-wide v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->membershipNormalization:D

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 13
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/SmoothedDataHistogram;->smoothingBins:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method
