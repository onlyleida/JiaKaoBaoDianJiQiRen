.class public abstract Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/univariate/UnivariateOptimizer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field private goal:Lorg/apache/commons/math3/optimization/GoalType;

.field private searchMax:D

.field private searchMin:D

.field private searchStart:D


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method

.method protected abstract doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->checker:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    return-object v0
.end method

.method public getMax()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMax:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMin()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMin:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchStart:D

    return-wide v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 10

    sub-double v0, p6, p4

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    add-double v8, p4, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 11
    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMin:D

    .line 2
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchMax:D

    .line 3
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->searchStart:D

    .line 4
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    .line 5
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 6
    iget-object p2, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 7
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method
