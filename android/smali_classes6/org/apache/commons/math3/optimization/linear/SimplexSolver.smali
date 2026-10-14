.class public Lorg/apache/commons/math3/optimization/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-6

.field private static final DEFAULT_ULPS:I = 0xa


# instance fields
.field private final epsilon:D

.field private final maxUlps:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/16 v2, 0xa

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    .line 4
    iput p3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    return-void
.end method

.method private getPivotColumn(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    const/4 v4, 0x0

    .line 2
    invoke-virtual {p1, v4, v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    cmpg-double v6, v4, v1

    if-gez v6, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    move-wide v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getPivotRow(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_2

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    .line 4
    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    .line 5
    iget v10, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDI)I

    move-result v8

    if-lez v8, :cond_1

    div-double/2addr v4, v6

    .line 6
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-gez v6, :cond_1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    return-object v1

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x0

    if-le p2, v5, :cond_a

    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result p2

    if-lez p2, :cond_6

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 14
    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 15
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v6

    add-int/2addr v6, v4

    .line 16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 17
    iget v11, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    invoke-static {v7, v8, v9, v10, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getIterations()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getMaxIterations()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge p2, v3, :cond_a

    .line 19
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result p2

    .line 20
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v2

    .line 21
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v3

    sub-int/2addr v3, v5

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_7

    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 24
    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 25
    invoke-virtual {v6, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-ge v5, p2, :cond_8

    move-object v1, v4

    move p2, v5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    return-object v1

    .line 26
    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method protected doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->incrementIterationsCounter()V

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getPivotColumn(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getPivotRow(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4, v2, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->divideRow(ID)V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v2, v5, v3, v4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->subtractRow(IID)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 10
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;

    invoke-direct {p1}, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;-><init>()V

    throw p1
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getFunction()Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getConstraints()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->restrictToNonNegative()Z

    move-result v4

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    iget v7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V

    .line 2
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    .line 3
    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->dropPhase1Objective()V

    .line 4
    :goto_0
    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;

    invoke-direct {p1}, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;-><init>()V

    throw p1
.end method
