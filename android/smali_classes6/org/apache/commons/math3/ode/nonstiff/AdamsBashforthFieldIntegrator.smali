.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;IDDDD)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;IDDDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-string v2, "Adams-Bashforth"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    .line 1
    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;IDD[D[D)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;IDD[D[D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v2, "Adams-Bashforth"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 2
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    return-void
.end method

.method private errorEstimation([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;[TT;",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-ge v1, v2, :cond_3

    .line 3
    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v3, :cond_0

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v4, v3, v1

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v3, v1

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    invoke-interface {p4}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    .line 7
    :goto_2
    invoke-interface {p4}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_3
    if-ltz v6, :cond_2

    .line 8
    invoke-interface {p4, v6, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    neg-int v4, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 9
    :cond_2
    aget-object v4, p3, v1

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 10
    aget-object v4, p2, v1

    aget-object v5, p1, v1

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 11
    invoke-interface {v2, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    int-to-double p1, v2

    .line 12
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    return-object p1
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 4
    invoke-virtual {v0, v1, v4, v5, v3}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    invoke-virtual {v0, v1, v7, v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    .line 8
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    iget-object v12, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v7, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    .line 9
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setIsLastStep(Z)V

    .line 10
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    array-length v11, v5

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/apache/commons/math3/RealFieldElement;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    move-object v14, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_1
    :goto_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 12
    invoke-interface {v14, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    cmpl-double v11, v16, v8

    if-ltz v11, :cond_3

    .line 13
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/FieldODEState;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    .line 14
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/4 v13, 0x0

    .line 15
    :goto_3
    array-length v14, v10

    if-ge v13, v14, :cond_2

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    aget-object v15, v11, v13

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v14, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 17
    :cond_2
    iget-object v11, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v13

    .line 18
    iget-object v11, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v11, v10, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 19
    invoke-direct {v0, v5, v12, v10, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->errorEstimation([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 20
    invoke-interface {v14, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v11, v2, v8

    if-ltz v11, :cond_1

    .line 21
    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 22
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v2, v6, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    iget-object v11, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v2, v3, v7, v11, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    .line 24
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v19

    move-object v11, v2

    move-object v15, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v7

    move-object v8, v14

    move-object v14, v10

    move-object v9, v15

    move-object v15, v3

    move/from16 v16, v6

    move-object/from16 v18, v7

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    move-object/from16 v11, p3

    invoke-virtual {v0, v2, v11}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 25
    iput-object v10, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 26
    iput-object v3, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v2

    if-nez v2, :cond_a

    .line 28
    array-length v2, v5

    invoke-static {v9, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 31
    :cond_4
    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v6, :cond_5

    .line 34
    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v3, v7, v9

    if-ltz v3, :cond_6

    goto :goto_4

    :cond_5
    const-wide/16 v9, 0x0

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpg-double v3, v7, v9

    if-gtz v3, :cond_6

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 35
    :goto_5
    invoke-virtual {v0, v2, v6, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 36
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v6, :cond_7

    .line 37
    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v3, v7, v9

    if-ltz v3, :cond_8

    goto :goto_6

    :cond_7
    const-wide/16 v9, 0x0

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpg-double v3, v7, v9

    if-gtz v3, :cond_8

    :goto_6
    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_9

    .line 38
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v11, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 39
    :cond_9
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    iget-object v8, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v2, v3, v7, v8, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    move-object v7, v2

    goto :goto_8

    :cond_a
    const-wide/16 v9, 0x0

    .line 41
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 42
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 44
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1

    :cond_b
    move-wide v8, v9

    move-object v3, v11

    goto/16 :goto_1
.end method
