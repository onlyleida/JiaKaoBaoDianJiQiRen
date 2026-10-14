.class public Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;-><init>(D)V

    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getStartValue()D

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    .line 3
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->computeObjectiveValueAndDerivative(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v5

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v9, 0x0

    aput v7, v8, v9

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v7

    div-double/2addr v5, v7

    sub-double v4, v0, v5

    sub-double v0, v4, v0

    .line 5
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_0

    return-wide v4

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method

.method public bridge synthetic solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/NewtonRaphsonSolver;->solve(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide p3

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide p1

    return-wide p1
.end method
