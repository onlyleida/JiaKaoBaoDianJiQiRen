.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapDataVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final normalizeCount:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->normalizeCount:Z

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;Ljava/lang/Iterable;)[[D
    .locals 12
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

    .line 3
    new-instance v2, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;-><init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 4
    const-class v5, D

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 6
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {v6, p1, v7}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v6

    .line 7
    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getRow()I

    move-result v7

    .line 9
    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->getColumn()I

    move-result v6

    .line 10
    aget-object v7, v3, v7

    aget-wide v8, v7, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    aput-wide v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/HitHistogram;->normalizeCount:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_2

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v1, :cond_1

    .line 12
    aget-object v2, v3, p1

    aget-wide v6, v2, p2

    int-to-double v8, v5

    div-double/2addr v6, v8

    aput-wide v6, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method
