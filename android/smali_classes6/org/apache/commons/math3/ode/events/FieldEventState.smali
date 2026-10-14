.class public Lorg/apache/commons/math3/ode/events/FieldEventState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final convergence:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private forward:Z

.field private g0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/Action;

.field private pendingEvent:Z

.field private pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private previousEventTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private t0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DLorg/apache/commons/math3/RealFieldElement;ILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;DTT;I",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    .line 4
    invoke-interface {p4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    iput p5, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    .line 6
    iput-object p6, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    const/4 p3, 0x0

    .line 10
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 12
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 13
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    .line 14
    sget-object p1, Lorg/apache/commons/math3/ode/events/Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/FieldEventState;)Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    return-object p0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    .line 2
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmpg-double v9, v4, v7

    if-gez v9, :cond_0

    return v6

    .line 6
    :cond_0
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    int-to-double v9, v4

    .line 7
    invoke-interface {v3, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    new-instance v15, Lorg/apache/commons/math3/ode/events/FieldEventState$1;

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/math3/ode/events/FieldEventState$1;-><init>(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V

    .line 9
    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 10
    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    move-object v14, v9

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v4, :cond_10

    add-int/lit8 v9, v4, -0x1

    if-ne v13, v9, :cond_1

    move-object v12, v2

    goto :goto_1

    .line 11
    :cond_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v11, v13, 0x1

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    move-object v12, v9

    .line 12
    :goto_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    .line 13
    iget-boolean v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    cmpl-double v18, v16, v7

    if-ltz v18, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    xor-int v9, v9, v16

    if-eqz v9, :cond_f

    .line 14
    invoke-interface {v11, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v9

    cmpl-double v16, v9, v7

    if-ltz v16, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    iput-boolean v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    .line 15
    iget-boolean v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v9, :cond_4

    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    iget v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v17, v11

    move-object v11, v15

    move-object/from16 v18, v12

    move-object v12, v14

    move/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    goto :goto_4

    :cond_4
    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    iget v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    sget-object v14, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v11, v15

    move-object/from16 v13, v20

    :goto_4
    invoke-interface/range {v9 .. v14}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    .line 16
    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v10, :cond_c

    move-object/from16 v10, v20

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v11

    cmpg-double v13, v11, v7

    if-gtz v13, :cond_c

    iget-object v11, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v11

    cmpg-double v13, v11, v7

    if-gtz v13, :cond_c

    move-object v14, v10

    .line 17
    :goto_5
    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v10, :cond_5

    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_6

    :cond_5
    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_6
    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    move-object v14, v10

    .line 18
    invoke-interface {v15, v14}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    .line 19
    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v12

    cmpl-double v16, v12, v7

    if-ltz v16, :cond_6

    const/4 v12, 0x1

    goto :goto_7

    :cond_6
    const/4 v12, 0x0

    :goto_7
    xor-int/2addr v10, v12

    if-eqz v10, :cond_9

    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    move-object/from16 v12, v18

    invoke-interface {v14, v12}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    cmpl-double v13, v16, v7

    if-ltz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_8

    :cond_7
    const/4 v13, 0x0

    :goto_8
    xor-int/2addr v10, v13

    if-nez v10, :cond_8

    goto :goto_9

    :cond_8
    move-object/from16 v18, v12

    goto :goto_5

    :cond_9
    move-object/from16 v12, v18

    .line 20
    :goto_9
    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    invoke-interface {v14, v12}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v12

    cmpl-double v16, v12, v7

    if-ltz v16, :cond_a

    const/4 v12, 0x1

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    xor-int/2addr v10, v12

    if-eqz v10, :cond_b

    add-int/lit8 v13, v19, -0x1

    move-object v12, v14

    goto :goto_b

    .line 21
    :cond_b
    iput-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 22
    iput-boolean v5, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    return v5

    :cond_c
    move-object/from16 v12, v18

    .line 23
    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v10, :cond_e

    invoke-interface {v10, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    cmpl-double v13, v10, v7

    if-lez v13, :cond_d

    goto :goto_c

    :cond_d
    move-object/from16 v11, v17

    move/from16 v13, v19

    :goto_b
    move-object v10, v11

    move-object v14, v12

    goto :goto_d

    .line 24
    :cond_e
    :goto_c
    iput-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 25
    iput-boolean v5, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    return v5

    :cond_f
    move-object/from16 v17, v11

    move/from16 v19, v13

    move-object v14, v12

    move-object/from16 v10, v17

    :goto_d
    add-int/2addr v13, v5

    goto/16 :goto_0

    .line 26
    :cond_10
    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    return v6
.end method

.method public getConvergence()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    return-object v0
.end method

.method public getEventTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v1, :cond_1

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    :goto_1
    return-object v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 6
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v5

    invoke-interface {v4, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    return-void
.end method

.method public reset(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->resetState(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v2, Lorg/apache/commons/math3/ode/events/Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 6
    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 6
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    invoke-interface {v2, p1, v0}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->eventOccurred(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Z)Lorg/apache/commons/math3/ode/events/Action;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double p1, v4, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 8
    sget-object p1, Lorg/apache/commons/math3/ode/events/Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    :goto_1
    return-void
.end method

.method public stop()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/Action;->STOP:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
