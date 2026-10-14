.class public abstract Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFUNC;"
        }
    .end annotation
.end field

.field private start:[D

.field private target:[D

.field private weight:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 2
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/Target;

    if-eqz v3, :cond_0

    .line 3
    check-cast v2, Lorg/apache/commons/math3/optimization/Target;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/Target;->getTarget()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    goto :goto_1

    .line 4
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/Weight;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lorg/apache/commons/math3/optimization/Weight;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    .line 6
    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    if-eqz v3, :cond_2

    .line 7
    check-cast v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/InitialGuess;->getInitialGuess()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->start:[D

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue([D)[D
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method protected abstract doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method protected getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFUNC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    return-object v0
.end method

.method public getStartPoint()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->start:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getTarget()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method protected getTargetRef()[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    return-object v0
.end method

.method public getWeight()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method protected getWeightRef()[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weight:[D

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected varargs optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1
    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    .line 2
    new-instance v2, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v2, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    aput-object v2, v0, v1

    const/4 p3, 0x1

    new-instance v1, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    aput-object v1, v0, p3

    const/4 p3, 0x2

    new-instance p4, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {p4, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    aput-object p4, v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p3

    array-length p3, p4

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 9
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 10
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 11
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 12
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->checkParameters()V

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->setUp()V

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected setUp()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->target:[D

    array-length v0, v0

    .line 2
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weight:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weight:[D

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
