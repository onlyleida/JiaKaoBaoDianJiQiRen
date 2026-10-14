.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    }
.end annotation


# instance fields
.field private final locations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 5
    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6
    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 7
    iget-object v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    new-instance v7, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    invoke-direct {v7, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;-><init>(II)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getLocation(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;->locations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;

    return-object p1
.end method
