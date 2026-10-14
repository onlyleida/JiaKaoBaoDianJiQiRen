.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "SourceFile"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final exp:D

.field private final fsal:Z

.field private maxGrowth:D

.field private minReduction:D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private safety:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p13

    .line 1
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    move v0, p2

    .line 2
    iput-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    move-object v0, p3

    .line 3
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    move-object v0, p4

    .line 4
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    move-object/from16 v0, p5

    .line 5
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    move-object/from16 v0, p6

    .line 6
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, v0

    iput-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 8
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 9
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    .line 11
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    move v0, p2

    .line 12
    iput-boolean v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    move-object v0, p3

    .line 13
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    move-object v0, p4

    .line 14
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    move-object v0, p5

    .line 15
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    move-object v0, p6

    .line 16
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, v0

    iput-wide v2, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 18
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method


# virtual methods
.method protected abstract estimateError([[D[D[DD)D
.end method

.method public getMaxGrowth()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-wide v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 2
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v15

    .line 5
    invoke-virtual {v15}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [D

    .line 6
    iget-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    array-length v0, v0

    add-int/lit8 v8, v0, 0x1

    .line 7
    array-length v0, v9

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v12

    aput v8, v1, v13

    const-class v0, D

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[D

    .line 8
    invoke-virtual {v15}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [D

    .line 9
    array-length v0, v9

    new-array v6, v0, [D

    .line 10
    iget-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, v16

    move v4, v14

    move-object v12, v5

    move-object/from16 v5, v17

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    const-wide/16 v17, 0x0

    .line 14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v15

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->initIntegration(D[DD)V

    .line 15
    iput-boolean v13, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    const/4 v0, 0x1

    .line 16
    :goto_1
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    move v6, v0

    move-wide v4, v1

    :goto_2
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v21

    if-ltz v0, :cond_f

    if-nez v6, :cond_1

    .line 17
    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-nez v0, :cond_2

    .line 18
    :cond_1
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    aget-object v2, v16, v13

    invoke-virtual {v10, v0, v1, v9, v2}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    :cond_2
    if-eqz v6, :cond_6

    .line 19
    iget v0, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    new-array v3, v0, [D

    .line 20
    iget-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 21
    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    move/from16 v23, v14

    iget-wide v13, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    aget-wide v17, v9, v1

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    add-double/2addr v4, v13

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v23

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    move/from16 v23, v14

    goto :goto_5

    :cond_4
    move/from16 v23, v14

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_5

    .line 22
    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v2, v1

    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v13, v2, v1

    aget-wide v17, v9, v1

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    add-double/2addr v4, v13

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 23
    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    const/4 v0, 0x0

    aget-object v13, v16, v0

    const/4 v14, 0x1

    aget-object v17, v16, v14

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object v6, v9

    move-object/from16 v19, v7

    move-object v7, v13

    move v13, v8

    move-object/from16 v8, v19

    move-object v14, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v0

    move-wide v7, v0

    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v19, v7

    move v13, v8

    move/from16 v23, v14

    move-object v14, v9

    move-wide/from16 v7, v17

    .line 24
    :goto_6
    iput-wide v7, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    if-eqz v23, :cond_7

    .line 25
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v2, v0, v7

    cmpl-double v4, v2, p2

    if-ltz v4, :cond_8

    sub-double v0, p2, v0

    .line 26
    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    goto :goto_7

    .line 27
    :cond_7
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v2, v0, v7

    cmpg-double v4, v2, p2

    if-gtz v4, :cond_8

    sub-double v0, p2, v0

    .line 28
    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    :cond_8
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-ge v0, v13, :cond_b

    const/4 v1, 0x0

    .line 29
    :goto_9
    array-length v2, v15

    if-ge v1, v2, :cond_a

    .line 30
    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    const/4 v4, 0x0

    aget-wide v17, v2, v4

    aget-object v2, v16, v4

    aget-wide v4, v2, v1

    mul-double v17, v17, v4

    const/4 v2, 0x1

    :goto_a
    if-ge v2, v0, :cond_9

    .line 31
    iget-object v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    aget-object v4, v4, v3

    aget-wide v24, v4, v2

    aget-object v4, v16, v2

    aget-wide v26, v4, v1

    mul-double v24, v24, v26

    add-double v17, v17, v24

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 32
    :cond_9
    aget-wide v2, v14, v1

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v4, v4, v17

    add-double/2addr v2, v4

    move-object/from16 v9, v19

    aput-wide v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    move-object/from16 v9, v19

    .line 33
    iget-wide v1, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-object v3, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v3, v4

    move/from16 v17, v6

    move-wide/from16 v18, v7

    iget-wide v6, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v4, v4, v6

    add-double/2addr v1, v4

    aget-object v3, v16, v0

    invoke-virtual {v10, v1, v2, v9, v3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v17

    move-wide/from16 v7, v18

    move-object/from16 v19, v9

    goto :goto_8

    :cond_b
    move/from16 v17, v6

    move-object/from16 v9, v19

    move-wide/from16 v18, v7

    const/4 v0, 0x0

    .line 34
    :goto_b
    array-length v1, v15

    if-ge v0, v1, :cond_d

    .line 35
    iget-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-object v1, v16, v2

    aget-wide v5, v1, v0

    mul-double v3, v3, v5

    const/4 v1, 0x1

    :goto_c
    if-ge v1, v13, :cond_c

    .line 36
    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v5, v2, v1

    aget-object v2, v16, v1

    aget-wide v7, v2, v0

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 37
    :cond_c
    aget-wide v1, v14, v0

    iget-wide v5, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v5, v5, v3

    add-double/2addr v1, v5

    aput-wide v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 38
    :cond_d
    iget-wide v4, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->estimateError([[D[D[DD)D

    move-result-wide v4

    cmpl-double v0, v4, v21

    if-ltz v0, :cond_e

    .line 39
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    iget-wide v6, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-object/from16 v21, v9

    iget-wide v8, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 40
    iget-wide v2, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v2, v2, v0

    move/from16 v8, v23

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v3, v8, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    move-object v9, v14

    move/from16 v6, v17

    move-object/from16 v7, v21

    move-wide/from16 v17, v0

    move v14, v8

    move v8, v13

    goto :goto_d

    :cond_e
    move-object v7, v9

    move v8, v13

    move-object v9, v14

    move/from16 v6, v17

    move-wide/from16 v17, v18

    move/from16 v14, v23

    :goto_d
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v21, v7

    move v13, v8

    move v8, v14

    const/4 v7, 0x0

    move-object v14, v9

    .line 41
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v0, v2

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 42
    array-length v0, v15

    move-object/from16 v9, v21

    invoke-static {v9, v7, v14, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v13, -0x1

    .line 43
    aget-object v0, v16, v0

    array-length v1, v15

    move-object/from16 v3, v20

    invoke-static {v0, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v14

    move-wide/from16 v28, v4

    move-wide/from16 v4, p2

    .line 44
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    .line 45
    array-length v0, v14

    invoke-static {v14, v7, v9, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v0, :cond_16

    .line 47
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 48
    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-eqz v0, :cond_10

    .line 49
    aget-object v0, v16, v7

    array-length v1, v15

    move-object/from16 v2, v20

    invoke-static {v2, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    :cond_10
    move-object/from16 v2, v20

    .line 50
    :goto_e
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    iget-wide v3, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move/from16 v23, v8

    iget-wide v7, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move/from16 v19, v6

    iget-wide v5, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    move-object/from16 v20, v12

    move/from16 v21, v13

    move-wide/from16 v12, v28

    invoke-static {v12, v13, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v5

    mul-double v7, v7, v5

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 51
    iget-wide v3, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v3, v3, v0

    .line 52
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v0, v3

    if-eqz v23, :cond_11

    cmpl-double v5, v0, p2

    if-ltz v5, :cond_12

    goto :goto_f

    :cond_11
    cmpg-double v5, v0, p2

    if-gtz v5, :cond_12

    :goto_f
    move/from16 v12, v23

    const/4 v0, 0x1

    goto :goto_10

    :cond_12
    move/from16 v12, v23

    const/4 v0, 0x0

    .line 53
    :goto_10
    invoke-virtual {v10, v3, v4, v12, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    .line 54
    iget-wide v3, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v5, v3, v0

    if-eqz v12, :cond_13

    cmpl-double v7, v5, p2

    if-ltz v7, :cond_14

    goto :goto_11

    :cond_13
    cmpg-double v7, v5, p2

    if-gtz v7, :cond_14

    :goto_11
    const/4 v5, 0x1

    goto :goto_12

    :cond_14
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_15

    sub-double v0, p2, v3

    :cond_15
    move-wide/from16 v17, v0

    goto :goto_13

    :cond_16
    move/from16 v19, v6

    move/from16 v21, v13

    move-object/from16 v2, v20

    move-object/from16 v20, v12

    move v12, v8

    .line 55
    :goto_13
    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v0, :cond_17

    .line 56
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 57
    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void

    :cond_17
    move-object v7, v9

    move-object v9, v14

    move/from16 v0, v19

    move/from16 v8, v21

    const/4 v13, 0x0

    move v14, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v2

    goto/16 :goto_1
.end method

.method public setMaxGrowth(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-void
.end method

.method public setMinReduction(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-void
.end method

.method public setSafety(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-void
.end method
