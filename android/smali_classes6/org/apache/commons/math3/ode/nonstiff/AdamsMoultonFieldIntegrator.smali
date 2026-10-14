.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;
    }
.end annotation

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
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


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

    add-int/lit8 v4, p2, 0x1

    const-string v2, "Adams-Moulton"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

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

    add-int/lit8 v4, p2, 0x1

    const-string v2, "Adams-Moulton"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 2
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    return-void
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

    move-result-object v13

    .line 14
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    invoke-virtual {v0, v11, v13}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/4 v12, 0x0

    .line 15
    :goto_3
    array-length v14, v10

    if-ge v12, v14, :cond_2

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    aget-object v15, v11, v12

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v14, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 17
    :cond_2
    iget-object v11, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v12

    .line 18
    iget-object v11, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v11, v10, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 19
    new-instance v11, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;

    invoke-direct {v11, v0, v5, v10, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

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
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 25
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    array-length v11, v5

    invoke-static {v3, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x0

    .line 26
    :goto_4
    array-length v15, v3

    if-ge v11, v15, :cond_4

    .line 27
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v15

    aget-object v8, v2, v11

    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v3, v11

    add-int/lit8 v11, v11, 0x1

    const-wide/16 v8, 0x0

    goto :goto_4

    .line 28
    :cond_4
    invoke-virtual {v0, v10, v3, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 29
    new-instance v8, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-direct {v8, v7, v13, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 30
    new-instance v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v19

    move-object v11, v2

    move-object v9, v12

    move-object v12, v7

    move-object v7, v13

    move-object v13, v8

    move-object v10, v14

    move-object v14, v3

    move-object v15, v9

    move/from16 v16, v6

    move-object/from16 v18, v8

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    move-object/from16 v11, p3

    invoke-virtual {v0, v2, v11}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 31
    iput-object v3, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 32
    iput-object v9, v0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v2

    if-nez v2, :cond_b

    .line 34
    array-length v2, v5

    invoke-static {v7, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->resetOccurred()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 37
    :cond_5
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 38
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v6, :cond_6

    .line 40
    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v3, v7, v9

    if-ltz v3, :cond_7

    goto :goto_5

    :cond_6
    const-wide/16 v9, 0x0

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpg-double v3, v7, v9

    if-gtz v3, :cond_7

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    .line 41
    :goto_6
    invoke-virtual {v0, v2, v6, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 42
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v6, :cond_8

    .line 43
    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v3, v7, v9

    if-ltz v3, :cond_9

    goto :goto_7

    :cond_8
    const-wide/16 v9, 0x0

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v7

    cmpg-double v3, v7, v9

    if-gtz v3, :cond_9

    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_a

    .line 44
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v11, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 45
    :cond_a
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 46
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

    goto :goto_9

    :cond_b
    const-wide/16 v9, 0x0

    move-object v7, v8

    .line 47
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->isLastStep()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 48
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 50
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1

    :cond_c
    move-wide v8, v9

    move-object v3, v11

    goto/16 :goto_1
.end method
