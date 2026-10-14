.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    add-int/lit8 v3, p1, 0x1

    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    add-int/lit8 v3, p1, 0x1

    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 2
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 2
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    const/4 v9, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v11

    .line 5
    invoke-virtual {v11}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [D

    .line 6
    array-length v0, v12

    new-array v13, v0, [D

    .line 7
    array-length v0, v12

    new-array v14, v0, [D

    .line 8
    array-length v0, v12

    new-array v15, v0, [D

    const/16 v16, 0x0

    .line 9
    new-instance v4, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v4}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v4, v12, v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v24, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->initIntegration(D[DD)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->start(D[DD)V

    .line 13
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-object v4, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    iget-object v5, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v17, v24

    move-wide/from16 v18, v0

    move-wide/from16 v20, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-virtual/range {v17 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 14
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v4, v24

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 15
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    .line 16
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 17
    iput-boolean v9, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    :goto_1
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    move-object/from16 v5, v16

    move-wide/from16 v30, v0

    move-wide v0, v2

    move-wide/from16 v2, v30

    :goto_2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v0, v16

    if-ltz v18, :cond_4

    .line 18
    iput-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    .line 19
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v0, v2

    .line 20
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v9

    .line 23
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v8

    invoke-virtual {v9, v8, v14}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 24
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    array-length v8, v5

    move-wide/from16 v26, v2

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_1

    aget-object v3, v5, v9

    move-object/from16 v18, v5

    .line 25
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v5

    invoke-virtual {v3, v5, v14}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    const/16 v25, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v18

    goto :goto_3

    :cond_1
    const/16 v25, 0x1

    .line 26
    invoke-virtual {v6, v0, v1, v14, v13}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const/4 v0, 0x0

    .line 27
    :goto_4
    array-length v1, v11

    if-ge v0, v1, :cond_2

    .line 28
    iget-wide v1, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    aget-wide v8, v13, v0

    mul-double v1, v1, v8

    aput-wide v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 29
    :cond_2
    iget-object v0, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v5

    .line 30
    iget-object v0, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    invoke-virtual {v6, v0, v15, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 31
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;

    invoke-direct {v0, v6, v12, v15, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    cmpl-double v2, v0, v16

    if-ltz v2, :cond_3

    .line 32
    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v2

    .line 33
    iget-wide v8, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v8, v8, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v8, v9, v10, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v8

    .line 34
    invoke-virtual {v4, v8, v9}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    move-wide v2, v8

    goto :goto_5

    :cond_3
    move-wide/from16 v2, v26

    :goto_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    move-wide/from16 v26, v2

    const/16 v25, 0x1

    .line 35
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v8, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v2, v8

    .line 36
    invoke-virtual {v6, v2, v3, v14, v13}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 37
    array-length v8, v11

    new-array v8, v8, [D

    move-wide/from16 v28, v0

    const/4 v9, 0x0

    .line 38
    :goto_6
    array-length v0, v11

    if-ge v9, v0, :cond_5

    .line 39
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    aget-wide v16, v13, v9

    mul-double v0, v0, v16

    aput-wide v0, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 40
    :cond_5
    invoke-virtual {v6, v15, v8, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 41
    array-length v0, v12

    const/4 v9, 0x0

    invoke-static {v14, v9, v12, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    move-object/from16 v17, v4

    move-wide/from16 v18, v2

    move-wide/from16 v20, v0

    move-object/from16 v22, v8

    move-object/from16 v23, v5

    invoke-virtual/range {v17 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 43
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 44
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 45
    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    move-wide/from16 v2, v28

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v16, v10

    move-wide/from16 v17, v26

    move-wide v9, v2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v26, v11

    move-object/from16 v27, v13

    move-object v11, v4

    move-object v13, v5

    move-wide/from16 v4, p2

    .line 46
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    .line 47
    iput-object v8, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    .line 48
    iput-object v13, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 49
    iget-boolean v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v2, :cond_c

    .line 50
    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 51
    iget-boolean v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    if-eqz v0, :cond_6

    .line 52
    iget-wide v1, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v0, p0

    move-object v3, v12

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->start(D[DD)V

    .line 53
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-object v4, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    iget-object v5, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v17, v11

    move-wide/from16 v18, v0

    move-wide/from16 v20, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-virtual/range {v17 .. v23}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 54
    :cond_6
    invoke-virtual {v6, v9, v10}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v0

    .line 55
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v2, v2, v0

    .line 56
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v0, v2

    if-eqz v16, :cond_7

    cmpl-double v4, v0, p2

    if-ltz v4, :cond_8

    goto :goto_7

    :cond_7
    cmpg-double v4, v0, p2

    if-gtz v4, :cond_8

    :goto_7
    move/from16 v8, v16

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    move/from16 v8, v16

    const/4 v0, 0x0

    .line 57
    :goto_8
    invoke-virtual {v6, v2, v3, v8, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    .line 58
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v4, v2, v0

    if-eqz v8, :cond_9

    cmpl-double v9, v4, p2

    if-ltz v9, :cond_a

    goto :goto_9

    :cond_9
    cmpg-double v9, v4, p2

    if-gtz v9, :cond_a

    :goto_9
    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_b

    sub-double v0, p2, v2

    .line 59
    :cond_b
    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_b

    :cond_c
    move/from16 v8, v16

    move-wide/from16 v0, v17

    .line 60
    :goto_b
    iget-boolean v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v2, :cond_d

    .line 61
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 62
    invoke-virtual {v7, v12}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void

    :cond_d
    move v10, v8

    move-object v4, v11

    move-object/from16 v16, v13

    move-object/from16 v11, v26

    move-object/from16 v13, v27

    const/4 v9, 0x0

    goto/16 :goto_1
.end method
