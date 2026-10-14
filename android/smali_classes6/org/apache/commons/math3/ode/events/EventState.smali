.class public Lorg/apache/commons/math3/ode/events/EventState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    }
.end annotation


# instance fields
.field private final convergence:D

.field private expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private forward:Z

.field private g0:D

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field private pendingEvent:Z

.field private pendingEventTime:D

.field private previousEventTime:D

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private t0:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    .line 4
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    .line 5
    iput p6, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    .line 6
    iput-object p7, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 9
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const/4 p3, 0x1

    .line 10
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const/4 p4, 0x0

    .line 11
    iput-boolean p4, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 12
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 13
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 14
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 15
    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object p0
.end method

.method private getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 4
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    .line 2
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    .line 3
    iget-wide v4, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    sub-double v4, v2, v4

    .line 4
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-wide v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    const/4 v10, 0x0

    cmpg-double v11, v6, v8

    if-gez v11, :cond_0

    return v10

    .line 5
    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-wide v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    int-to-double v8, v6

    div-double/2addr v4, v8

    .line 6
    new-instance v8, Lorg/apache/commons/math3/ode/events/EventState$1;

    invoke-direct {v8, v1, v0}, Lorg/apache/commons/math3/ode/events/EventState$1;-><init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    .line 7
    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 8
    iget-wide v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    move-wide/from16 v21, v11

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_13

    add-int/lit8 v11, v6, -0x1

    if-ne v9, v11, :cond_1

    move-object/from16 v23, v8

    move-wide v7, v2

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v23, v8

    int-to-double v7, v15

    mul-double v7, v7, v4

    add-double/2addr v11, v7

    move-wide v7, v11

    .line 10
    :goto_1
    invoke-interface {v0, v7, v8}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 11
    iget-object v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v12

    invoke-interface {v11, v7, v8, v12}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v24

    .line 12
    iget-boolean v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const-wide/16 v26, 0x0

    cmpl-double v12, v24, v26

    if-ltz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    xor-int/2addr v11, v12

    if-eqz v11, :cond_11

    cmpl-double v11, v24, v13

    if-ltz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 13
    :goto_3
    iput-boolean v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 14
    iget-object v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    instance-of v12, v11, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    if-eqz v12, :cond_5

    .line 15
    check-cast v11, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    .line 16
    iget-boolean v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v12, :cond_4

    iget v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v13, v23

    move-wide/from16 v14, v21

    move-wide/from16 v16, v7

    invoke-interface/range {v11 .. v18}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v11

    goto :goto_4

    :cond_4
    iget v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v13, v23

    move-wide v14, v7

    move-wide/from16 v16, v21

    invoke-interface/range {v11 .. v18}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v11

    :goto_4
    move-wide/from16 v28, v2

    goto :goto_7

    .line 17
    :cond_5
    iget-boolean v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v12, :cond_6

    iget v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object/from16 v13, v23

    move-wide/from16 v14, v21

    move-wide/from16 v16, v7

    invoke-interface/range {v11 .. v17}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v11

    goto :goto_5

    :cond_6
    iget v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object/from16 v13, v23

    move-wide v14, v7

    move-wide/from16 v16, v21

    invoke-interface/range {v11 .. v17}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v11

    :goto_5
    move-wide v14, v11

    .line 18
    iget v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v12}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getEvaluations()I

    move-result v12

    sub-int/2addr v11, v12

    .line 19
    new-instance v13, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;

    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move/from16 v16, v11

    invoke-interface {v12}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v10

    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-wide/from16 v28, v2

    invoke-interface {v12}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    invoke-direct {v13, v10, v11, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;-><init>(DD)V

    .line 20
    iget-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v2, :cond_7

    sget-object v20, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move/from16 v11, v16

    move-object/from16 v12, v23

    move-wide/from16 v16, v21

    move-wide/from16 v18, v7

    invoke-static/range {v11 .. v20}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    goto :goto_6

    :cond_7
    sget-object v20, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move/from16 v11, v16

    move-object/from16 v12, v23

    move-wide/from16 v16, v7

    move-wide/from16 v18, v21

    invoke-static/range {v11 .. v20}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    :goto_6
    move-wide v11, v2

    .line 21
    :goto_7
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_f

    sub-double v2, v11, v21

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v10, v2, v13

    if-gtz v10, :cond_f

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double v2, v11, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v10, v2, v13

    if-gtz v10, :cond_f

    .line 22
    :goto_8
    iget-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v2, :cond_8

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    add-double v21, v21, v2

    goto :goto_9

    :cond_8
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    sub-double v21, v21, v2

    :goto_9
    move-wide/from16 v2, v21

    move-object/from16 v10, v23

    .line 23
    invoke-interface {v10, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v24

    .line 24
    iget-boolean v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    cmpl-double v14, v24, v26

    if-ltz v14, :cond_9

    const/4 v14, 0x1

    goto :goto_a

    :cond_9
    const/4 v14, 0x0

    :goto_a
    xor-int/2addr v13, v14

    if-eqz v13, :cond_c

    iget-boolean v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v14, v2, v7

    if-ltz v14, :cond_a

    const/4 v14, 0x1

    goto :goto_b

    :cond_a
    const/4 v14, 0x0

    :goto_b
    xor-int/2addr v13, v14

    if-nez v13, :cond_b

    goto :goto_c

    :cond_b
    move-wide/from16 v21, v2

    move-object/from16 v23, v10

    goto :goto_8

    .line 25
    :cond_c
    :goto_c
    iget-boolean v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v14, v2, v7

    if-ltz v14, :cond_d

    const/4 v7, 0x1

    goto :goto_d

    :cond_d
    const/4 v7, 0x0

    :goto_d
    xor-int/2addr v7, v13

    if-eqz v7, :cond_e

    add-int/lit8 v9, v9, -0x1

    move-wide v7, v2

    goto :goto_e

    .line 26
    :cond_e
    iput-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    return v0

    :cond_f
    move-object/from16 v10, v23

    .line 28
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_10

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double/2addr v2, v11

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpl-double v15, v2, v13

    if-lez v15, :cond_12

    .line 29
    :cond_10
    iput-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    return v0

    :cond_11
    move-wide/from16 v28, v2

    move-object/from16 v10, v23

    :cond_12
    :goto_e
    move-wide/from16 v21, v7

    move-wide/from16 v13, v24

    const/4 v2, 0x1

    add-int/2addr v9, v2

    move-object v8, v10

    move-wide/from16 v2, v28

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 32
    iput-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;

    move-result-object v0

    throw v0
.end method

.method public getConvergence()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    return-wide v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method public getEventTime()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 2
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 5
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v6

    add-double/2addr v4, v0

    .line 6
    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p1

    invoke-interface {v0, v4, v5, p1}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 8
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    return-void
.end method

.method public reset(D[D)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    .line 4
    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 5
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 6
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-eq p1, v2, :cond_2

    sget-object p2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-void
.end method

.method public stepAccepted(D[D)V
    .locals 6

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 3
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 5
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 6
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    invoke-interface {v2, p1, p2, p3, v0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    goto :goto_1

    .line 7
    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double p3, p1, v2

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 8
    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    :goto_1
    return-void
.end method

.method public stop()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
