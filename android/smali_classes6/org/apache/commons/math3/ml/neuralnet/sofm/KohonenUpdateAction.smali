.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/UpdateAction;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

.field private final neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

.field private final numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    return-void
.end method

.method private attemptNeuronUpdate(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->computeFeatures([D[DD)[D

    move-result-object p2

    .line 3
    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->compareAndSetFeatures([D[D)Z

    move-result p1

    return p1
.end method

.method private computeFeatures([D[DD)[D
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    return-object p1
.end method

.method private findAndUpdateBestNeuron(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-static {p2, p1, v0}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils;->findBest([DLjava/lang/Iterable;Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->attemptNeuronUpdate(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method private updateNeighbouringNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V
    .locals 1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->attemptNeuronUpdate(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public getNumberOfCalls()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Lorg/apache/commons/math3/ml/neuralnet/Network;[D)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->numberOfCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->learningFactor:Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;->value(J)D

    move-result-wide v4

    .line 3
    invoke-direct {p0, p1, p2, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->findAndUpdateBestNeuron(Lorg/apache/commons/math3/ml/neuralnet/Network;[DD)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->neighbourhoodSize:Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;

    invoke-interface {v3, v0, v1}, Lorg/apache/commons/math3/ml/neuralnet/sofm/NeighbourhoodSizeFunction;->value(J)I

    move-result v0

    .line 5
    new-instance v1, Lorg/apache/commons/math3/analysis/function/Gaussian;

    int-to-double v8, v0

    const-wide/16 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DDD)V

    if-lez v0, :cond_2

    .line 6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 9
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 10
    :cond_0
    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    int-to-double v7, v2

    .line 12
    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(D)D

    move-result-wide v7

    invoke-direct {p0, v6, p2, v7, v8}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->updateNeighbouringNeuron(Lorg/apache/commons/math3/ml/neuralnet/Neuron;[DD)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    :cond_2
    return-void
.end method
