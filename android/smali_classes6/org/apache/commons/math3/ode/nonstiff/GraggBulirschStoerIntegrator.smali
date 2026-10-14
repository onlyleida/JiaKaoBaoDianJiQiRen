.class public Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "SourceFile"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Gragg-Bulirsch-Stoer"


# instance fields
.field private coeff:[[D

.field private costPerStep:[I

.field private costPerTimeUnit:[D

.field private maxChecks:I

.field private maxIter:I

.field private maxOrder:I

.field private mudif:I

.field private optimalStep:[D

.field private orderControl1:D

.field private orderControl2:D

.field private performTest:Z

.field private sequence:[I

.field private stabilityReduction:D

.field private stepControl1:D

.field private stepControl2:D

.field private stepControl3:D

.field private stepControl4:D

.field private useInterpolationError:Z


# direct methods
.method public constructor <init>(DDDD)V
    .locals 14

    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-object p1, p0

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move-wide/from16 p5, v3

    .line 2
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-object v5, p0

    .line 3
    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    .line 4
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    move-object v2, p0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 9

    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 6
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    const/4 p2, 0x1

    const/4 p3, -0x1

    const/4 p4, -0x1

    const-wide/high16 p5, -0x4010000000000000L    # -1.0

    move-object p1, p0

    .line 7
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 8
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const/4 p2, -0x1

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    .line 9
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method

.method private extrapolate(II[[D[D)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_1

    .line 1
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    sub-int v6, v1, v4

    add-int/lit8 v7, v6, -0x1

    .line 2
    aget-object v8, p3, v7

    aget-object v9, p3, v6

    aget-wide v10, v9, v5

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v12, v1, p1

    aget-object v9, v9, v12

    add-int/lit8 v12, v4, -0x1

    aget-wide v12, v9, v12

    aget-object v6, p3, v6

    aget-wide v14, v6, v5

    aget-object v6, p3, v7

    aget-wide v16, v6, v5

    sub-double v14, v14, v16

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 3
    :goto_2
    array-length v6, v2

    if-ge v4, v6, :cond_2

    .line 4
    aget-object v6, p3, v5

    aget-wide v7, v6, v4

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v9, v1, p1

    aget-object v6, v6, v9

    add-int/lit8 v9, v1, -0x1

    aget-wide v9, v6, v9

    aget-object v6, p3, v5

    aget-wide v11, v6, v4

    aget-wide v13, v2, v4

    sub-double/2addr v11, v13

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private initializeArrays()V
    .locals 10

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 3
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    .line 4
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    .line 5
    new-array v1, v0, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    .line 6
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    .line 7
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v2, v1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 10
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v5, v2, -0x1

    aget v5, v3, v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 11
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    if-lez v2, :cond_4

    new-array v5, v2, [D

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    aput-object v5, v3, v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 12
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v6, v5, v2

    int-to-double v6, v6

    sub-int v8, v2, v3

    sub-int/2addr v8, v4

    aget v5, v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    .line 13
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    aget-object v5, v5, v2

    mul-double v6, v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v8, v6

    aput-wide v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private rescale([D[D[D)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_1

    .line 3
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 4
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    mul-double v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    array-length v0, p3

    if-ge v1, v0, :cond_1

    .line 6
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v0, v1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v0, v1

    mul-double v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private tryStep(D[DDI[D[[D[D[D[D)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    .line 1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v5, v2

    int-to-double v6, v5

    div-double v6, p4, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v6

    add-double v10, p1, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2
    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_0

    .line 3
    aget-wide v14, v1, v13

    aput-wide v14, p11, v13

    .line 4
    aget-wide v14, v1, v13

    aget-object v16, p8, v12

    aget-wide v17, v16, v13

    mul-double v17, v17, v6

    add-double v14, v14, v17

    aput-wide v14, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    .line 5
    aget-object v14, p8, v13

    invoke-virtual {v0, v10, v11, v4, v14}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const/4 v14, 0x1

    :goto_1
    if-ge v14, v5, :cond_7

    mul-int/lit8 v15, v14, 0x2

    if-ne v15, v5, :cond_1

    .line 6
    array-length v15, v1

    move-object/from16 v13, p9

    invoke-static {v4, v12, v13, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    move-object/from16 v13, p9

    :goto_2
    add-double/2addr v10, v6

    const/4 v15, 0x0

    .line 7
    :goto_3
    array-length v12, v1

    if-ge v15, v12, :cond_2

    .line 8
    aget-wide v16, v4, v15

    .line 9
    aget-wide v18, p11, v15

    aget-object v12, p8, v14

    aget-wide v20, v12, v15

    mul-double v20, v20, v8

    add-double v18, v18, v20

    aput-wide v18, v4, v15

    .line 10
    aput-wide v16, p11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v14, 0x1

    .line 11
    aget-object v15, p8, v12

    invoke-virtual {v0, v10, v11, v4, v15}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 12
    iget-boolean v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-eqz v15, :cond_5

    iget v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    if-gt v14, v15, :cond_5

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-ge v2, v14, :cond_5

    move-wide v15, v8

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    .line 13
    :goto_4
    array-length v0, v3

    if-ge v14, v0, :cond_3

    const/4 v0, 0x0

    .line 14
    aget-object v17, p8, v0

    aget-wide v18, v17, v14

    aget-wide v20, v3, v14

    div-double v18, v18, v20

    mul-double v18, v18, v18

    add-double v8, v8, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v17, 0x0

    .line 15
    :goto_5
    array-length v14, v3

    if-ge v0, v14, :cond_4

    .line 16
    aget-object v14, p8, v12

    aget-wide v19, v14, v0

    const/4 v14, 0x0

    aget-object v21, p8, v14

    aget-wide v22, v21, v0

    sub-double v19, v19, v22

    aget-wide v21, v3, v0

    div-double v19, v19, v21

    mul-double v19, v19, v19

    add-double v17, v17, v19

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    .line 17
    invoke-static {v2, v3, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    mul-double v2, v2, v19

    cmpl-double v0, v17, v2

    if-lez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_5
    move-wide v15, v8

    :cond_6
    const/4 v0, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move v14, v12

    move-wide v8, v15

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 18
    :goto_6
    array-length v0, v1

    if-ge v12, v0, :cond_8

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 19
    aget-wide v8, p11, v12

    aget-wide v10, v4, v12

    add-double/2addr v8, v10

    aget-object v0, p8, v5

    aget-wide v10, v0, v12

    mul-double v10, v10, v6

    add-double/2addr v8, v10

    mul-double v8, v8, v2

    aput-wide v8, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 1
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 2
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    const/4 v15, 0x1

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v2

    .line 5
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 6
    array-length v3, v0

    new-array v11, v3, [D

    .line 7
    array-length v3, v0

    new-array v10, v3, [D

    .line 8
    array-length v3, v0

    new-array v9, v3, [D

    .line 9
    array-length v3, v0

    new-array v8, v3, [D

    .line 10
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v4, v3

    sub-int/2addr v4, v15

    new-array v7, v4, [[D

    .line 11
    array-length v3, v3

    sub-int/2addr v3, v15

    new-array v6, v3, [[D

    const/4 v3, 0x0

    .line 12
    :goto_1
    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v5, v4

    sub-int/2addr v5, v15

    if-ge v3, v5, :cond_1

    .line 13
    array-length v4, v0

    new-array v4, v4, [D

    aput-object v4, v7, v3

    .line 14
    array-length v4, v0

    new-array v4, v4, [D

    aput-object v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_1
    array-length v3, v4

    new-array v5, v3, [[[D

    const/4 v3, 0x0

    .line 16
    :goto_2
    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v14, v4

    if-ge v3, v14, :cond_3

    .line 17
    aget v4, v4, v3

    add-int/2addr v4, v15

    new-array v4, v4, [[D

    aput-object v4, v5, v3

    .line 18
    aget-object v4, v5, v3

    const/4 v14, 0x0

    aput-object v11, v4, v14

    const/4 v4, 0x0

    .line 19
    :goto_3
    iget-object v14, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v14, v14, v3

    if-ge v4, v14, :cond_2

    .line 20
    aget-object v14, v5, v3

    add-int/lit8 v4, v4, 0x1

    array-length v15, v2

    new-array v15, v15, [D

    aput-object v15, v14, v4

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    if-eq v0, v2, :cond_4

    .line 21
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    :cond_4
    array-length v3, v2

    new-array v14, v3, [D

    .line 23
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    const/4 v15, 0x2

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    move-object/from16 v16, v5

    array-length v5, v2

    move-object/from16 v17, v2

    new-array v2, v15, [I

    aput v5, v2, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    const-class v3, D

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [[D

    .line 24
    iget v2, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    new-array v2, v2, [D

    .line 25
    invoke-direct {v12, v0, v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 26
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    move-object/from16 v19, v2

    if-nez v3, :cond_5

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    goto :goto_4

    :cond_5
    aget-wide v2, v3, v4

    :goto_4
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 27
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v2

    .line 28
    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v4, v4

    sub-int/2addr v4, v15

    const-wide v20, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v2, v20, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v22

    .line 29
    new-instance v2, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v24

    move-object v3, v2

    move-object v4, v0

    move-object v5, v11

    move-object v15, v6

    move-object v6, v10

    move-object v13, v7

    move-object v7, v14

    move-object/from16 v26, v8

    move-object/from16 v8, v18

    move-object/from16 v27, v9

    move v9, v1

    move-object/from16 v28, v14

    move-object v14, v10

    move-object/from16 v10, v23

    move-object/from16 v23, v14

    move-object v14, v11

    move-object/from16 v11, v24

    invoke-direct/range {v3 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v3

    iput-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 32
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v3

    move-object v11, v0

    move-object/from16 v0, p0

    move v10, v1

    move-object v5, v2

    move-object/from16 v9, v17

    move-object/from16 v8, v19

    move-wide v1, v3

    move-object v3, v9

    move-object/from16 v17, v5

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->initIntegration(D[DD)V

    .line 33
    iget-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    const-wide/16 v29, 0x0

    const/4 v1, 0x0

    aput-wide v29, v0, v1

    .line 34
    iput-boolean v1, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    move-wide/from16 v31, v6

    move/from16 v33, v22

    move-wide/from16 v1, v29

    const/4 v0, 0x1

    const/16 v19, 0x0

    const/16 v22, 0x1

    const/16 v24, 0x0

    :goto_5
    if-eqz v0, :cond_8

    .line 35
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    if-nez v19, :cond_6

    .line 36
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v12, v3, v4, v11, v14}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    :cond_6
    if-eqz v22, :cond_7

    mul-int/lit8 v0, v33, 0x2

    const/4 v1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 37
    iget-wide v4, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v0, p0

    move v1, v10

    move-object v3, v8

    move-object v6, v11

    move-object v7, v14

    move-object/from16 v34, v8

    move-object/from16 v8, v27

    move-object/from16 v35, v14

    move-object v14, v9

    move-object/from16 v9, v26

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v0

    move-wide v1, v0

    goto :goto_6

    :cond_7
    move-object/from16 v34, v8

    move-object/from16 v35, v14

    move-object v14, v9

    :goto_6
    const/16 v36, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v34, v8

    move-object/from16 v35, v14

    move-object v14, v9

    move/from16 v36, v0

    .line 38
    :goto_7
    iput-wide v1, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    if-eqz v10, :cond_9

    .line 39
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v3, v1

    cmpl-double v0, v3, p2

    if-gtz v0, :cond_a

    :cond_9
    if-nez v10, :cond_b

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v3, v1

    cmpg-double v0, v3, p2

    if-gez v0, :cond_b

    .line 40
    :cond_a
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    sub-double v3, p2, v3

    iput-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    .line 41
    :cond_b
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v3, v5

    if-eqz v10, :cond_c

    cmpl-double v0, v3, p2

    if-ltz v0, :cond_d

    goto :goto_8

    :cond_c
    cmpg-double v0, v3, p2

    if-gtz v0, :cond_d

    :goto_8
    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    .line 42
    :goto_9
    iput-boolean v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    const/4 v9, -0x1

    move-wide/from16 v38, v31

    move/from16 v8, v33

    const/4 v6, -0x1

    const/16 v33, 0x1

    const/16 v37, 0x0

    move-wide/from16 v31, v1

    :goto_a
    if-eqz v33, :cond_22

    add-int/lit8 v7, v6, 0x1

    .line 43
    iget-wide v1, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    aget-object v42, v16, v7

    if-nez v7, :cond_e

    const/4 v0, 0x0

    aget-object v3, v18, v0

    move-object/from16 v43, v3

    goto :goto_b

    :cond_e
    add-int/lit8 v0, v7, -0x1

    aget-object v0, v13, v0

    move-object/from16 v43, v0

    :goto_b
    if-nez v7, :cond_f

    move-object/from16 v44, v23

    goto :goto_c

    :cond_f
    add-int/lit8 v0, v7, -0x1

    aget-object v0, v15, v0

    move-object/from16 v44, v0

    :goto_c
    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move v6, v7

    move v13, v7

    move-object/from16 v7, v34

    move v14, v8

    move-object/from16 v8, v42

    move-object/from16 v9, v43

    move/from16 v42, v14

    move v14, v10

    move-object/from16 v10, v44

    move-object/from16 v47, v11

    move-object/from16 v11, v27

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->tryStep(D[DDI[D[[D[D[D[D)Z

    move-result v0

    if-nez v0, :cond_10

    .line 44
    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v14, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    move v6, v13

    move v10, v14

    move/from16 v8, v42

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v11, v47

    :goto_d
    const/4 v9, -0x1

    const/16 v33, 0x0

    const/16 v37, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    if-lez v13, :cond_21

    move-object/from16 v7, v23

    .line 45
    invoke-direct {v12, v2, v13, v15, v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    move-object/from16 v9, v34

    move-object/from16 v8, v47

    .line 46
    invoke-direct {v12, v8, v7, v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    move-wide/from16 v3, v29

    const/4 v0, 0x0

    .line 47
    :goto_e
    iget v1, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v0, v1, :cond_11

    .line 48
    aget-wide v5, v7, v0

    aget-object v1, v15, v2

    aget-wide v10, v1, v0

    sub-double/2addr v5, v10

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-wide v5, v9, v0

    div-double/2addr v1, v5

    mul-double v1, v1, v1

    add-double/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    goto :goto_e

    :cond_11
    int-to-double v0, v1

    div-double/2addr v3, v0

    .line 49
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_20

    const/4 v2, 0x1

    if-le v13, v2, :cond_12

    cmpl-double v3, v0, v38

    if-lez v3, :cond_12

    goto/16 :goto_18

    :cond_12
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double v3, v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 50
    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    mul-int/lit8 v3, v13, 0x2

    add-int/2addr v3, v2

    int-to-double v2, v3

    div-double v2, v5, v2

    .line 51
    iget-wide v10, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    div-double v4, v0, v5

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    div-double/2addr v10, v4

    .line 52
    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    .line 53
    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    div-double v4, v2, v4

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    div-double v2, v40, v2

    invoke-static {v2, v3, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 54
    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v5, v5, v2

    const/4 v2, 0x1

    invoke-virtual {v12, v5, v6, v14, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aput-wide v2, v4, v13

    .line 55
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v13

    int-to-double v3, v3

    iget-object v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v10, v5, v13

    div-double/2addr v3, v10

    aput-wide v3, v2, v13

    sub-int v3, v13, v42

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    if-eqz v3, :cond_19

    const/4 v6, 0x1

    if-eq v3, v6, :cond_15

    if-nez v22, :cond_13

    .line 56
    iget-boolean v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v2, :cond_14

    :cond_13
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v10

    if-gtz v2, :cond_14

    move-object v11, v8

    move-object/from16 v34, v9

    move/from16 v8, v42

    goto :goto_12

    :cond_14
    move-object v11, v8

    move-object/from16 v34, v9

    move/from16 v10, v42

    goto/16 :goto_16

    :cond_15
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v0, v10

    move/from16 v10, v42

    if-lez v3, :cond_18

    const/4 v0, 0x1

    if-le v10, v0, :cond_16

    add-int/lit8 v0, v10, -0x1

    .line 57
    aget-wide v0, v2, v0

    move-object v3, v5

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v31, v2, v10

    mul-double v4, v4, v31

    cmpg-double v2, v0, v4

    if-gez v2, :cond_17

    add-int/lit8 v0, v10, -0x1

    goto :goto_f

    :cond_16
    move-object v3, v5

    :cond_17
    move v0, v10

    .line 58
    :goto_f
    aget-wide v31, v3, v0

    const/16 v37, 0x1

    goto :goto_10

    :cond_18
    move v0, v10

    :goto_10
    move-object v11, v8

    move-object/from16 v34, v9

    const/16 v33, 0x0

    move v8, v0

    goto/16 :goto_17

    :cond_19
    move-object v3, v5

    move/from16 v10, v42

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1a

    move-object v11, v8

    move-object/from16 v34, v9

    :goto_11
    move v8, v10

    :goto_12
    const/16 v33, 0x0

    goto/16 :goto_17

    .line 59
    :cond_1a
    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v5, v13, 0x1

    aget v5, v4, v5

    int-to-double v5, v5

    const/4 v11, 0x0

    aget v4, v4, v11

    move-object v11, v8

    move-object/from16 v34, v9

    int-to-double v8, v4

    div-double/2addr v5, v8

    mul-double v5, v5, v5

    cmpl-double v4, v0, v5

    if-lez v4, :cond_1f

    const/4 v0, 0x1

    if-le v10, v0, :cond_1b

    add-int/lit8 v8, v10, -0x1

    .line 60
    aget-wide v0, v2, v8

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v8, v2, v10

    mul-double v4, v4, v8

    cmpg-double v2, v0, v4

    if-gez v2, :cond_1b

    add-int/lit8 v8, v10, -0x1

    goto :goto_13

    :cond_1b
    move v8, v10

    .line 61
    :goto_13
    aget-wide v31, v3, v8

    :goto_14
    const/16 v33, 0x0

    const/16 v37, 0x1

    goto :goto_17

    :cond_1c
    move-object v3, v5

    move-object v11, v8

    move-object/from16 v34, v9

    move/from16 v10, v42

    const/4 v4, 0x1

    if-le v10, v4, :cond_1f

    if-nez v24, :cond_1f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1d

    goto :goto_11

    .line 62
    :cond_1d
    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v4, v10

    int-to-double v5, v5

    add-int/lit8 v8, v10, 0x1

    aget v8, v4, v8

    int-to-double v8, v8

    mul-double v5, v5, v8

    const/4 v8, 0x0

    aget v9, v4, v8

    aget v4, v4, v8

    mul-int v9, v9, v4

    int-to-double v8, v9

    div-double/2addr v5, v8

    mul-double v5, v5, v5

    cmpl-double v4, v0, v5

    if-lez v4, :cond_1f

    const/4 v0, 0x1

    if-le v13, v0, :cond_1e

    add-int/lit8 v0, v13, -0x1

    .line 63
    aget-wide v0, v2, v0

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v8, v2, v13

    mul-double v4, v4, v8

    cmpg-double v2, v0, v4

    if-gez v2, :cond_1e

    add-int/lit8 v0, v13, -0x1

    move v8, v0

    goto :goto_15

    :cond_1e
    move v8, v13

    .line 64
    :goto_15
    aget-wide v31, v3, v8

    goto :goto_14

    :cond_1f
    :goto_16
    move v8, v10

    :goto_17
    move-object/from16 v23, v7

    move v6, v13

    move v10, v14

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    goto :goto_19

    :cond_20
    :goto_18
    move-object v11, v8

    move-object/from16 v34, v9

    move/from16 v10, v42

    .line 65
    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v14, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    move-object/from16 v23, v7

    move v8, v10

    move v6, v13

    move v10, v14

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    goto/16 :goto_d

    :cond_21
    move/from16 v10, v42

    move v8, v10

    move v6, v13

    move v10, v14

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v11, v47

    :goto_19
    const/4 v9, -0x1

    goto/16 :goto_a

    :cond_22
    move-object/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v7, v23

    move v14, v10

    move v10, v8

    if-nez v37, :cond_23

    .line 66
    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v0, v2

    move-object/from16 v8, v28

    invoke-virtual {v12, v0, v1, v7, v8}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    goto :goto_1a

    :cond_23
    move-object/from16 v8, v28

    .line 67
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v0

    if-nez v37, :cond_2f

    const/4 v2, 0x1

    :goto_1b
    if-gt v2, v6, :cond_24

    const/4 v3, 0x0

    .line 68
    aget-object v4, v18, v3

    move-object/from16 v9, v45

    invoke-direct {v12, v3, v2, v9, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_24
    move-object/from16 v9, v45

    mul-int/lit8 v2, v6, 0x2

    .line 69
    iget v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 70
    div-int/lit8 v4, v3, 0x2

    .line 71
    iget-object v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v5, v4

    move-wide/from16 v22, v0

    int-to-double v0, v5

    mul-double v0, v0, v20

    invoke-static {v0, v1, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    .line 72
    aget-object v5, v16, v4

    array-length v5, v5

    const/4 v13, 0x2

    div-int/2addr v5, v13

    move/from16 v33, v14

    move-object/from16 v28, v15

    move-object/from16 v15, v46

    const/4 v13, 0x0

    .line 73
    :goto_1d
    array-length v14, v15

    if-ge v13, v14, :cond_25

    add-int/lit8 v14, v3, 0x1

    .line 74
    aget-object v14, v18, v14

    aget-object v42, v16, v4

    add-int v43, v5, v3

    aget-object v42, v42, v43

    aget-wide v43, v42, v13

    mul-double v43, v43, v0

    aput-wide v43, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_25
    const/4 v0, 0x1

    :goto_1e
    sub-int v1, v6, v4

    if-gt v0, v1, :cond_27

    .line 75
    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int v5, v0, v4

    aget v1, v1, v5

    int-to-double v13, v1

    mul-double v13, v13, v20

    invoke-static {v13, v14, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v13

    .line 76
    aget-object v1, v16, v5

    array-length v1, v1

    const/16 v25, 0x2

    div-int/lit8 v1, v1, 0x2

    move/from16 v42, v10

    move-object/from16 v47, v11

    const/4 v10, 0x0

    .line 77
    :goto_1f
    array-length v11, v15

    if-ge v10, v11, :cond_26

    add-int/lit8 v11, v0, -0x1

    .line 78
    aget-object v11, v9, v11

    aget-object v43, v16, v5

    add-int v44, v1, v3

    aget-object v43, v43, v44

    aget-wide v44, v43, v10

    mul-double v44, v44, v13

    aput-wide v44, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_26
    add-int/lit8 v1, v3, 0x1

    .line 79
    aget-object v1, v18, v1

    invoke-direct {v12, v4, v0, v9, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v42

    move-object/from16 v11, v47

    goto :goto_1e

    :cond_27
    move/from16 v42, v10

    move-object/from16 v47, v11

    const/4 v0, 0x0

    .line 80
    :goto_20
    array-length v1, v15

    if-ge v0, v1, :cond_28

    add-int/lit8 v1, v3, 0x1

    .line 81
    aget-object v1, v18, v1

    aget-wide v4, v1, v0

    iget-wide v10, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v4, v4, v10

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 82
    div-int/lit8 v0, v3, 0x2

    :goto_21
    if-gt v0, v6, :cond_2b

    .line 83
    aget-object v1, v16, v0

    array-length v1, v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_22
    mul-int/lit8 v4, v3, 0x2

    if-lt v1, v4, :cond_2a

    const/4 v4, 0x0

    .line 84
    :goto_23
    array-length v5, v15

    if-ge v4, v5, :cond_29

    .line 85
    aget-object v5, v16, v0

    aget-object v5, v5, v1

    aget-wide v10, v5, v4

    aget-object v13, v16, v0

    add-int/lit8 v14, v1, -0x2

    aget-object v13, v13, v14

    aget-wide v43, v13, v4

    sub-double v10, v10, v43

    aput-wide v10, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2b
    move-object/from16 v46, v15

    move-wide/from16 v0, v22

    move-object/from16 v15, v28

    move/from16 v14, v33

    move/from16 v10, v42

    move-object/from16 v11, v47

    goto/16 :goto_1c

    :cond_2c
    move-wide/from16 v22, v0

    move/from16 v42, v10

    move-object/from16 v47, v11

    move/from16 v33, v14

    move-object/from16 v28, v15

    move-object/from16 v15, v46

    if-ltz v2, :cond_2e

    .line 86
    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    move-object/from16 v10, v17

    invoke-virtual {v10, v2, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->computeCoefficients(ID)V

    .line 87
    iget-boolean v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-eqz v0, :cond_2d

    move-object/from16 v11, v34

    .line 88
    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->estimateError([D)D

    move-result-wide v0

    .line 89
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-int/lit8 v2, v2, 0x4

    int-to-double v13, v2

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v13, v22, v13

    invoke-static {v0, v1, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v13

    move/from16 v17, v6

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v6, v0, v4

    move-wide v13, v2

    if-lez v6, :cond_30

    move-wide/from16 v31, v13

    const/16 v37, 0x1

    goto :goto_26

    :cond_2d
    move/from16 v17, v6

    move-object/from16 v11, v34

    goto :goto_25

    :cond_2e
    move-object/from16 v10, v17

    move-object/from16 v11, v34

    goto :goto_24

    :cond_2f
    move-wide/from16 v22, v0

    move/from16 v42, v10

    move-object/from16 v47, v11

    move/from16 v33, v14

    move-object/from16 v28, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v34

    move-object/from16 v9, v45

    move-object/from16 v15, v46

    :goto_24
    move/from16 v17, v6

    :goto_25
    move-wide/from16 v13, v22

    :cond_30
    :goto_26
    if-nez v37, :cond_3b

    .line 90
    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v0, v2

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v4, p2

    .line 91
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    .line 92
    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 93
    array-length v0, v15

    move-object/from16 v1, v47

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    array-length v0, v15

    move-object/from16 v3, v35

    invoke-static {v8, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v17

    const/4 v4, 0x1

    if-ne v0, v4, :cond_33

    move-object/from16 v35, v3

    move-object/from16 v23, v7

    move-object/from16 v17, v8

    move/from16 v2, v42

    if-eqz v24, :cond_31

    goto :goto_27

    :cond_31
    const/4 v4, 0x2

    :cond_32
    :goto_27
    const/4 v5, 0x2

    goto/16 :goto_29

    :cond_33
    move/from16 v2, v42

    if-gt v0, v2, :cond_36

    .line 95
    iget-object v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v6, v0, -0x1

    aget-wide v22, v5, v6

    move-object/from16 v35, v3

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v31, v5, v0

    mul-double v3, v3, v31

    cmpg-double v17, v22, v3

    if-gez v17, :cond_34

    move v4, v6

    move-object/from16 v23, v7

    move-object/from16 v17, v8

    goto :goto_27

    .line 96
    :cond_34
    aget-wide v3, v5, v0

    move-object/from16 v23, v7

    move-object/from16 v17, v8

    iget-wide v7, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    aget-wide v31, v5, v6

    mul-double v7, v7, v31

    cmpg-double v5, v3, v7

    if-gez v5, :cond_35

    add-int/lit8 v6, v0, 0x1

    .line 97
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v6, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v3

    goto :goto_27

    :cond_35
    move v4, v0

    goto :goto_27

    :cond_36
    move-object/from16 v35, v3

    move-object/from16 v23, v7

    move-object/from16 v17, v8

    const/4 v4, 0x2

    add-int/lit8 v6, v0, -0x1

    if-le v0, v4, :cond_37

    .line 98
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v4, v0, -0x2

    aget-wide v7, v3, v4

    move/from16 v19, v4

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v31, v3, v6

    mul-double v4, v4, v31

    cmpg-double v3, v7, v4

    if-gez v3, :cond_37

    move/from16 v4, v19

    goto :goto_28

    :cond_37
    move v4, v6

    .line 99
    :goto_28
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v5, v3, v0

    iget-wide v7, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    aget-wide v31, v3, v4

    mul-double v7, v7, v31

    cmpg-double v3, v5, v7

    if-gez v3, :cond_32

    .line 100
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    :goto_29
    if-eqz v24, :cond_38

    .line 101
    invoke-static {v4, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    .line 102
    iget-wide v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v6, v0, v4

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-wide/from16 v31, v2

    move/from16 v3, v33

    const/4 v0, 0x0

    goto :goto_2b

    :cond_38
    if-gt v4, v0, :cond_39

    .line 103
    iget-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v2, v0, v4

    move-wide v5, v2

    move/from16 v3, v33

    const/4 v0, 0x0

    goto :goto_2a

    :cond_39
    if-ge v0, v2, :cond_3a

    .line 104
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v6, v2, v0

    move-wide/from16 v31, v6

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    add-int/lit8 v3, v0, -0x1

    aget-wide v7, v2, v3

    mul-double v5, v5, v7

    cmpg-double v2, v31, v5

    if-gez v2, :cond_3a

    .line 105
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v5, v2, v0

    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v3, v4, 0x1

    aget v3, v2, v3

    int-to-double v7, v3

    mul-double v5, v5, v7

    aget v0, v2, v0

    int-to-double v2, v0

    div-double/2addr v5, v2

    move/from16 v3, v33

    const/4 v0, 0x0

    invoke-virtual {v12, v5, v6, v3, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v5

    goto :goto_2a

    :cond_3a
    move/from16 v3, v33

    .line 106
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v5, v2, v0

    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v7, v2, v4

    int-to-double v7, v7

    mul-double v5, v5, v7

    aget v0, v2, v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    const/4 v0, 0x0

    invoke-virtual {v12, v5, v6, v3, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v5

    :goto_2a
    move-wide/from16 v31, v5

    :goto_2b
    move/from16 v33, v4

    move-wide/from16 v4, v31

    const/16 v19, 0x1

    const/16 v36, 0x1

    goto :goto_2c

    :cond_3b
    move-object/from16 v23, v7

    move-object/from16 v17, v8

    move/from16 v3, v33

    move/from16 v2, v42

    move-object/from16 v1, v47

    const/4 v0, 0x0

    move/from16 v33, v2

    move-wide/from16 v4, v31

    .line 107
    :goto_2c
    invoke-static {v4, v5, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    if-nez v3, :cond_3c

    neg-double v4, v4

    :cond_3c
    if-eqz v37, :cond_3d

    .line 108
    iput-boolean v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    const/16 v24, 0x1

    goto :goto_2d

    :cond_3d
    const/16 v24, 0x0

    .line 109
    :goto_2d
    iget-boolean v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v2, :cond_3e

    .line 110
    iget-wide v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v6, p1

    invoke-virtual {v6, v2, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 111
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void

    :cond_3e
    move-object/from16 v6, p1

    move-object v13, v9

    move-object v8, v11

    move-object v9, v15

    move-object/from16 v15, v28

    move-object/from16 v14, v35

    move/from16 v0, v36

    move-wide/from16 v31, v38

    const/16 v22, 0x0

    move-object v11, v1

    move-wide v1, v4

    move-object/from16 v28, v17

    move-object/from16 v17, v10

    move v10, v3

    goto/16 :goto_5
.end method

.method public setControlFactors(DDDD)V
    .locals 5

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_1

    cmpl-double v4, p1, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide p1, 0x3fe4cccccccccccdL    # 0.65

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    :goto_1
    cmpg-double p1, p3, v2

    if-ltz p1, :cond_3

    cmpl-double p1, p3, v0

    if-lez p1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    goto :goto_3

    :cond_3
    :goto_2
    const-wide p1, 0x3fee147ae147ae14L    # 0.94

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    :goto_3
    cmpg-double p1, p5, v2

    if-ltz p1, :cond_5

    cmpl-double p1, p5, v0

    if-lez p1, :cond_4

    goto :goto_4

    .line 5
    :cond_4
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    goto :goto_5

    :cond_5
    :goto_4
    const-wide p1, 0x3f947ae147ae147bL    # 0.02

    .line 6
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    :goto_5
    const-wide p1, 0x3ff00068db8bac71L    # 1.0001

    cmpg-double p3, p7, p1

    if-ltz p3, :cond_7

    const-wide p1, 0x408f3f3333333333L    # 999.9

    cmpl-double p3, p7, p1

    if-lez p3, :cond_6

    goto :goto_6

    .line 7
    :cond_6
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    goto :goto_7

    :cond_7
    :goto_6
    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    :goto_7
    return-void
.end method

.method public setInterpolationControl(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-lez p2, :cond_1

    const/4 p1, 0x7

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    :goto_1
    return-void
.end method

.method public setOrderControl(IDD)V
    .locals 4

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    .line 1
    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x12

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    :cond_1
    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p2, v2

    if-ltz p1, :cond_3

    cmpl-double p1, p2, v0

    if-lez p1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    goto :goto_1

    :cond_3
    :goto_0
    const-wide p1, 0x3fe999999999999aL    # 0.8

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    :goto_1
    cmpg-double p1, p4, v2

    if-ltz p1, :cond_5

    cmpl-double p1, p4, v0

    if-lez p1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    goto :goto_3

    :cond_5
    :goto_2
    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 6
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    .line 7
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public setStabilityCheck(ZIID)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-gtz p2, :cond_0

    const/4 p2, 0x2

    .line 2
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-gtz p3, :cond_1

    const/4 p3, 0x1

    .line 3
    :cond_1
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    const-wide p1, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p3, p4, p1

    if-ltz p3, :cond_3

    const-wide p1, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double p3, p4, p1

    if-lez p3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    .line 5
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    :goto_1
    return-void
.end method
