.class public Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<",
        "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final optima:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;)Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optimizer:Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;

    return-object p0
.end method

.method private getPairComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;)V

    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic getOptima()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->getOptima()[Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->getPairComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/PointVectorValuePair;

    return-object v0
.end method

.method protected bridge synthetic store(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->store(Lorg/apache/commons/math3/optim/PointVectorValuePair;)V

    return-void
.end method

.method protected store(Lorg/apache/commons/math3/optim/PointVectorValuePair;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultiStartMultivariateVectorOptimizer;->optima:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
