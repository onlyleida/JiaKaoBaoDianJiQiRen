.class public Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;,
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private initialStep:D

.field private point:[D

.field private final preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private final updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    new-instance v1, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optimization/general/Preconditioner;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 7
    iput-object p4, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    return-object p0
.end method

.method private findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 14

    .line 1
    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    move-wide/from16 v2, p4

    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    add-double v4, p2, v2

    move-object v6, p1

    .line 2
    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v7

    mul-double v9, v0, v7

    const-wide/16 v11, 0x0

    cmpg-double v13, v9, v11

    if-gtz v13, :cond_0

    return-wide v4

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v7, v0, v7

    .line 3
    invoke-static {v4, v5, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double v2, v2, v4

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 28

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getStartPoint()[D

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v8

    .line 4
    iget-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v9, v0

    .line 5
    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v0

    .line 6
    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v8, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_0

    .line 7
    aget-wide v2, v0, v1

    neg-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    .line 9
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const-wide/16 v11, 0x0

    move-wide v4, v11

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_1

    .line 10
    aget-wide v13, v0, v3

    aget-wide v15, v2, v3

    mul-double v13, v13, v15

    add-double/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getMaxEvaluations()I

    move-result v3

    move-object v13, v1

    move-object v14, v2

    move/from16 v24, v3

    move-wide/from16 v25, v4

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v15, v1, 0x1

    .line 12
    iget-object v1, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 13
    new-instance v4, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v3, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-direct {v4, v3, v1, v2}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v7, v15, v0, v4}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v4

    .line 15
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;

    invoke-direct {v5, v6, v14}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;-><init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V

    const-wide/16 v2, 0x0

    .line 16
    iget-wide v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v27, v4

    move-object/from16 v18, v5

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v20

    .line 17
    iget-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const-wide/16 v1, 0x0

    const-wide v22, 0x3cd203af9ee75616L    # 1.0E-15

    move v3, v15

    move-object v15, v0

    move/from16 v16, v24

    move-object/from16 v17, v18

    move-wide/from16 v18, v1

    invoke-interface/range {v15 .. v23}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    .line 18
    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v2}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getEvaluations()I

    move-result v2

    sub-int v24, v24, v2

    const/4 v2, 0x0

    .line 19
    :goto_3
    iget-object v4, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 20
    aget-wide v15, v4, v2

    aget-wide v17, v14, v2

    mul-double v17, v17, v0

    add-double v15, v15, v17

    aput-wide v15, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v0

    .line 22
    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v8, v1, :cond_4

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_4

    .line 23
    aget-wide v4, v0, v1

    neg-double v4, v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 24
    :cond_4
    iget-object v1, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    move-wide v4, v11

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v9, :cond_5

    .line 25
    aget-wide v15, v0, v2

    aget-wide v17, v1, v2

    mul-double v15, v15, v17

    add-double/2addr v4, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 26
    :cond_5
    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    sget-object v15, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    if-ne v2, v15, :cond_6

    div-double v15, v4, v25

    goto :goto_7

    :cond_6
    move-wide v15, v11

    const/4 v2, 0x0

    .line 27
    :goto_6
    array-length v10, v0

    if-ge v2, v10, :cond_7

    .line 28
    aget-wide v18, v0, v2

    aget-wide v20, v13, v2

    mul-double v18, v18, v20

    add-double v15, v15, v18

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    sub-double v15, v4, v15

    div-double v15, v15, v25

    .line 29
    :goto_7
    rem-int v0, v3, v9

    if-eqz v0, :cond_9

    cmpg-double v0, v15, v11

    if-gez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v9, :cond_a

    .line 30
    aget-wide v18, v1, v0

    aget-wide v20, v14, v0

    mul-double v20, v20, v15

    add-double v18, v18, v20

    aput-wide v18, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 31
    :cond_9
    :goto_9
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move-object v14, v0

    :cond_a
    move-object v13, v1

    move v1, v3

    move-wide/from16 v25, v4

    move-object/from16 v0, v27

    goto/16 :goto_2
.end method

.method public setInitialStep(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    goto :goto_0

    .line 2
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    :goto_0
    return-void
.end method
