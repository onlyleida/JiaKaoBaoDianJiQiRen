.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private beta:[D

.field private final costRelativeTolerance:D

.field private diagR:[D

.field private final initialStepBoundFactor:D

.field private jacNorm:[D

.field private lmDir:[D

.field private lmPar:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private permutation:[I

.field private final qrRankingThreshold:D

.field private rank:I

.field private solvedCols:I

.field private weightedJacobian:[[D

.field private weightedResidual:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .line 9
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 11
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 12
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 13
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 14
    iput-wide p7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 15
    iput-wide p9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 6
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 7
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 8
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 3
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v6, v7, :cond_0

    .line 4
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v8, v7, v4

    aput-wide v8, v6, v3

    .line 6
    aget-wide v6, p1, v3

    aput-wide v6, p4, v3

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_7

    .line 8
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    .line 9
    aget-wide v7, p2, v4

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 10
    array-length v9, v1

    invoke-static {v1, v4, v9, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    .line 11
    :cond_2
    aput-wide v7, v1, v3

    move v4, v3

    move-wide v7, v5

    .line 12
    :goto_3
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v9, :cond_6

    .line 13
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v4

    .line 14
    aget-wide v10, v1, v4

    cmpl-double v12, v10, v5

    if-eqz v12, :cond_4

    .line 15
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    aget-wide v11, v10, v9

    .line 16
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    aget-wide v15, v1, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v13, v15

    if-gez v10, :cond_3

    .line 17
    aget-wide v13, v1, v4

    div-double v13, v11, v13

    mul-double v15, v13, v13

    add-double v15, v15, v17

    .line 18
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    div-double v17, v17, v15

    mul-double v13, v13, v17

    goto :goto_4

    .line 19
    :cond_3
    aget-wide v13, v1, v4

    div-double/2addr v13, v11

    mul-double v15, v13, v13

    add-double v15, v15, v17

    .line 20
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    div-double v15, v17, v15

    mul-double v17, v15, v13

    move-wide v13, v15

    :goto_4
    move-wide/from16 v5, v17

    .line 21
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    mul-double v11, v11, v13

    aget-wide v17, v1, v4

    mul-double v17, v17, v5

    add-double v11, v11, v17

    aput-wide v11, v10, v9

    .line 22
    aget-wide v10, p4, v4

    mul-double v10, v10, v13

    mul-double v17, v5, v7

    add-double v10, v10, v17

    move/from16 v17, v3

    neg-double v2, v5

    .line 23
    aget-wide v18, p4, v4

    mul-double v18, v18, v2

    mul-double v7, v7, v13

    add-double v7, v18, v7

    .line 24
    aput-wide v10, p4, v4

    add-int/lit8 v10, v4, 0x1

    .line 25
    :goto_5
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_5

    .line 26
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v18, v11, v10

    aget-wide v19, v18, v9

    mul-double v21, v13, v19

    .line 27
    aget-wide v23, v1, v10

    mul-double v23, v23, v5

    add-double v21, v21, v23

    mul-double v19, v19, v2

    .line 28
    aget-wide v23, v1, v10

    mul-double v23, v23, v13

    add-double v19, v19, v23

    aput-wide v19, v1, v10

    .line 29
    aget-object v11, v11, v10

    aput-wide v21, v11, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    move/from16 v17, v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v17

    const-wide/16 v5, 0x0

    goto/16 :goto_3

    :cond_6
    move/from16 v17, v3

    .line 30
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v2, v17

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v4, v17

    aget-wide v5, v3, v5

    aput-wide v5, v1, v17

    .line 31
    aget-object v2, v2, v17

    aget v3, v4, v17

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v5, v4, v17

    aput-wide v5, v2, v3

    add-int/lit8 v3, v17, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 32
    :goto_6
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_a

    .line 33
    aget-wide v5, v1, v2

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_8

    if-ne v4, v3, :cond_8

    move v4, v2

    :cond_8
    if-ge v4, v3, :cond_9

    .line 34
    aput-wide v7, p4, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    const-wide/16 v7, 0x0

    if-lez v4, :cond_c

    add-int/lit8 v2, v4, -0x1

    :goto_7
    if-ltz v2, :cond_c

    .line 35
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    add-int/lit8 v5, v2, 0x1

    move-wide v9, v7

    :goto_8
    if-ge v5, v4, :cond_b

    .line 36
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v6, v6, v5

    aget-wide v13, v6, v3

    aget-wide v15, p4, v5

    mul-double v13, v13, v15

    add-double/2addr v9, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 37
    :cond_b
    aget-wide v5, p4, v2

    sub-double/2addr v5, v9

    aget-wide v9, v1, v2

    div-double/2addr v5, v9

    aput-wide v5, p4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    .line 38
    :goto_9
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v1

    if-ge v2, v3, :cond_d

    .line 39
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    aget-wide v4, p4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method private determineLMParameter([DD[D[D[D[D)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 1
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    const/4 v9, 0x0

    .line 2
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    if-ge v9, v10, :cond_0

    .line 3
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v9

    aget-wide v12, v1, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    if-ge v10, v7, :cond_1

    .line 4
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    .line 6
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v7

    .line 7
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_2

    .line 8
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v11, v11, v10

    aget-wide v21, v11, v9

    mul-double v21, v21, v13

    sub-double v17, v17, v21

    aput-wide v17, v15, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_3

    .line 9
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aput-wide v13, v8, v9

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 10
    :goto_4
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_4

    .line 11
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 12
    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v14, v13, v10

    mul-double v11, v11, v14

    .line 13
    aput-wide v11, v4, v10

    mul-double v11, v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 14
    :cond_4
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double v9, v7, v2

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double v13, v2, v11

    cmpg-double v15, v9, v13

    if-gtz v15, :cond_5

    const-wide/16 v11, 0x0

    .line 15
    iput-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    return-void

    .line 16
    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    .line 17
    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v11, v12, :cond_6

    .line 18
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v11

    .line 19
    aget-wide v21, v4, v12

    aget-wide v23, p4, v12

    div-double v23, v23, v7

    mul-double v21, v21, v23

    aput-wide v21, v4, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move-wide/from16 v21, v13

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    .line 20
    :goto_6
    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v13, :cond_8

    .line 21
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v15

    const/4 v14, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v14, v15, :cond_7

    .line 22
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v14

    aget-wide v25, v5, v13

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v14

    aget-wide v27, v4, v5

    mul-double v25, v25, v27

    add-double v23, v23, v25

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p6

    goto :goto_7

    .line 23
    :cond_7
    aget-wide v25, v4, v13

    sub-double v25, v25, v23

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v23, v5, v13

    div-double v25, v25, v23

    .line 24
    aput-wide v25, v4, v13

    mul-double v25, v25, v25

    add-double v11, v11, v25

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p6

    goto :goto_6

    :cond_8
    mul-double v11, v11, v2

    div-double v11, v9, v11

    goto :goto_8

    :cond_9
    move-wide/from16 v21, v13

    const-wide/16 v11, 0x0

    :goto_8
    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    .line 25
    :goto_9
    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v5, v15, :cond_b

    .line 26
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v5

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const-wide/16 v23, 0x0

    :goto_a
    if-gt v9, v5, :cond_a

    .line 27
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v9

    aget-wide v27, v10, v15

    aget-wide v29, v1, v9

    mul-double v27, v27, v29

    add-double v23, v23, v27

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 28
    :cond_a
    aget-wide v9, p4, v15

    div-double v23, v23, v9

    mul-double v23, v23, v23

    add-double v13, v13, v23

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v9, v25

    goto :goto_9

    :cond_b
    move-wide/from16 v25, v9

    .line 29
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double v13, v9, v2

    const-wide/16 v19, 0x0

    cmpl-double v5, v13, v19

    if-nez v5, :cond_c

    .line 30
    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    div-double/2addr v13, v5

    .line 31
    :cond_c
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v15, v5, v19

    if-nez v15, :cond_d

    div-double/2addr v9, v7

    .line 32
    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    :cond_d
    const/16 v5, 0xa

    move-wide/from16 v9, v25

    :goto_b
    if-ltz v5, :cond_18

    .line 33
    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v8, v6, v19

    if-nez v8, :cond_e

    .line 34
    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    move-wide/from16 v23, v9

    mul-double v8, v13, v17

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_c

    :cond_e
    move-wide/from16 v23, v9

    .line 35
    :goto_c
    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const/4 v8, 0x0

    .line 36
    :goto_d
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v8, v9, :cond_f

    .line 37
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v8

    .line 38
    aget-wide v17, p4, v9

    mul-double v17, v17, v6

    aput-wide v17, v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_f
    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 39
    invoke-direct {v0, v1, v4, v8, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    .line 40
    :goto_e
    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v15, :cond_10

    .line 41
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v10

    .line 42
    aget-wide v17, p4, v15

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v25, v1, v15

    mul-double v17, v17, v25

    .line 43
    aput-wide v17, v9, v15

    mul-double v17, v17, v17

    add-double v6, v6, v17

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_e

    .line 44
    :cond_10
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v17, v6, v2

    .line 45
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    cmpg-double v1, v25, v21

    if-lez v1, :cond_18

    const-wide/16 v19, 0x0

    cmpl-double v1, v11, v19

    if-nez v1, :cond_11

    cmpg-double v1, v17, v23

    if-gtz v1, :cond_11

    cmpg-double v1, v23, v19

    if-gez v1, :cond_11

    goto/16 :goto_13

    :cond_11
    const/4 v1, 0x0

    .line 46
    :goto_f
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v10, :cond_12

    .line 47
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v1

    .line 48
    aget-wide v23, v9, v10

    aget-wide v25, p4, v10

    mul-double v23, v23, v25

    div-double v23, v23, v6

    aput-wide v23, v4, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    .line 49
    :cond_13
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v6, :cond_14

    .line 50
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v1

    .line 51
    aget-wide v23, v4, v6

    aget-wide v25, v8, v1

    div-double v23, v23, v25

    aput-wide v23, v4, v6

    .line 52
    aget-wide v23, v4, v6

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    .line 53
    :goto_10
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v10, :cond_13

    .line 54
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v7

    aget-wide v25, v4, v10

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v15, v15, v7

    aget-wide v27, v15, v6

    mul-double v27, v27, v23

    sub-double v25, v25, v27

    aput-wide v25, v4, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 55
    :goto_11
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v10, :cond_15

    .line 56
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v1

    aget-wide v23, v4, v10

    mul-double v23, v23, v23

    add-double v6, v6, v23

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_15
    mul-double v6, v6, v2

    div-double v6, v17, v6

    const-wide/16 v19, 0x0

    cmpl-double v1, v17, v19

    if-lez v1, :cond_16

    .line 57
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v11, v1

    goto :goto_12

    :cond_16
    cmpg-double v1, v17, v19

    if-gez v1, :cond_17

    .line 58
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide v13, v1

    .line 59
    :cond_17
    :goto_12
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    add-double/2addr v1, v6

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v9, v17

    goto/16 :goto_b

    :cond_18
    :goto_13
    return-void
.end method

.method private qTy([D)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 2
    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 4
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v3

    aget-wide v10, p1, v6

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v7, v6, v3

    mul-double v4, v4, v7

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    .line 6
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v3

    mul-double v10, v10, v4

    sub-double/2addr v7, v10

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-object/from16 v3, p1

    .line 1
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    .line 3
    aget-object v1, v1, v3

    array-length v1, v1

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    .line 4
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v7, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_0

    .line 5
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v9, v8, v4

    mul-double v9, v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_b

    const-wide/high16 v7, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v9, -0x1

    move v10, v4

    :goto_3
    if-ge v10, v1, :cond_5

    move v11, v4

    move-wide v12, v5

    :goto_4
    if-ge v11, v2, :cond_2

    .line 7
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v10

    aget-wide v15, v14, v15

    mul-double v15, v15, v15

    add-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 8
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_4

    cmpl-double v11, v12, v7

    if-lez v11, :cond_3

    move v9, v10

    move-wide v7, v12

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 9
    :cond_4
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 10
    :cond_5
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v12, v7, v10

    if-gtz v12, :cond_6

    .line 11
    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    return-void

    .line 12
    :cond_6
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v10, v9

    .line 13
    aget v12, v10, v4

    aput v12, v10, v9

    .line 14
    aput v11, v10, v4

    .line 15
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v4

    aget-wide v12, v9, v11

    cmpl-double v9, v12, v5

    if-lez v9, :cond_7

    .line 16
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    neg-double v9, v9

    goto :goto_5

    :cond_7
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    :goto_5
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v12, v12, v9

    sub-double/2addr v7, v12

    div-double/2addr v14, v7

    .line 17
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v14, v7, v11

    .line 18
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v9, v7, v11

    .line 19
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v11

    sub-double/2addr v12, v9

    aput-wide v12, v7, v11

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v4

    :goto_6
    if-lez v7, :cond_a

    move v8, v4

    move-wide v9, v5

    :goto_7
    if-ge v8, v2, :cond_8

    .line 20
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v13, v12, v8

    aget-wide v16, v13, v11

    aget-object v12, v12, v8

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v18, v4, v7

    aget v13, v13, v18

    aget-wide v18, v12, v13

    mul-double v16, v16, v18

    add-double v9, v9, v16

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    mul-double v9, v9, v14

    move v8, v4

    :goto_8
    if-ge v8, v2, :cond_9

    .line 21
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v13, v12, v8

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v16, v4, v7

    aget v3, v3, v16

    aget-wide v16, v13, v3

    aget-object v12, v12, v8

    aget-wide v18, v12, v11

    mul-double v18, v18, v9

    sub-double v16, v16, v18

    aput-wide v16, v13, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    add-int/lit8 v7, v7, -0x1

    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 22
    :cond_b
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 62

    move-object/from16 v8, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->checkParameters()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->getTarget()[D

    move-result-object v0

    array-length v9, v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v10

    .line 5
    array-length v11, v10

    .line 6
    invoke-static {v9, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iput v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 7
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    .line 8
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 9
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    .line 10
    new-array v0, v11, [I

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    .line 11
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 12
    new-array v12, v11, [D

    .line 13
    new-array v13, v11, [D

    .line 14
    new-array v0, v9, [D

    .line 15
    new-array v1, v9, [D

    .line 16
    new-array v14, v9, [D

    .line 17
    new-array v15, v11, [D

    .line 18
    new-array v7, v11, [D

    .line 19
    new-array v6, v11, [D

    .line 20
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 21
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v1

    .line 22
    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 23
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v3, v10, v1}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 24
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v16

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    .line 25
    iput-wide v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    move-wide/from16 v6, v16

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .line 27
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementIterationCount()V

    move-object/from16 v26, v0

    .line 28
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 29
    invoke-interface {v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    const/16 v27, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_0

    move-object/from16 v28, v1

    .line 30
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v29, v1, v0

    aput-wide v29, v14, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v28

    goto :goto_1

    :cond_0
    move-object/from16 v28, v1

    .line 31
    invoke-direct {v8, v14}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qTy([D)V

    const/4 v0, 0x0

    .line 32
    :goto_2
    iget v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v0, v1, :cond_1

    .line 33
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v0

    move-object/from16 v29, v2

    .line 34
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v0

    move-object/from16 v30, v4

    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v31, v4, v1

    aput-wide v31, v2, v1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    goto :goto_2

    :cond_1
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    if-ge v0, v11, :cond_3

    .line 35
    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v22, v4, v0

    const-wide/16 v20, 0x0

    cmpl-double v4, v22, v20

    if-nez v4, :cond_2

    move-wide/from16 v22, v31

    .line 36
    :cond_2
    aget-wide v24, v10, v0

    mul-double v24, v24, v22

    mul-double v24, v24, v24

    add-double v1, v1, v24

    .line 37
    aput-wide v22, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 38
    :cond_3
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    const-wide/16 v20, 0x0

    cmpl-double v0, v24, v20

    if-nez v0, :cond_4

    .line 39
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v0, v0, v24

    :goto_4
    move-wide/from16 v22, v0

    goto :goto_5

    :cond_5
    const-wide/16 v20, 0x0

    :goto_5
    cmpl-double v0, v6, v20

    if-eqz v0, :cond_9

    move-wide/from16 v0, v20

    const/4 v2, 0x0

    .line 40
    :goto_6
    iget v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v4, :cond_8

    .line 41
    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    move/from16 v33, v3

    .line 42
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v34, v3, v4

    cmpl-double v3, v34, v20

    if-eqz v3, :cond_7

    move-wide/from16 v36, v20

    const/4 v3, 0x0

    :goto_7
    if-gt v3, v2, :cond_6

    move-object/from16 v38, v5

    .line 43
    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v3

    aget-wide v39, v5, v4

    aget-wide v41, v14, v3

    mul-double v39, v39, v41

    add-double v36, v36, v39

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v38

    goto :goto_7

    :cond_6
    move-object/from16 v38, v5

    .line 44
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    mul-double v34, v34, v6

    div-double v3, v3, v34

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    goto :goto_8

    :cond_7
    move-object/from16 v38, v5

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v33

    move-object/from16 v5, v38

    goto :goto_6

    :cond_8
    move/from16 v33, v3

    move-object/from16 v38, v5

    move-wide/from16 v34, v0

    goto :goto_9

    :cond_9
    move/from16 v33, v3

    move-object/from16 v38, v5

    move-wide/from16 v34, v20

    .line 45
    :goto_9
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v2, v34, v0

    if-gtz v2, :cond_a

    .line 46
    invoke-virtual {v8, v6, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->setCost(D)V

    return-object v17

    :cond_a
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v11, :cond_b

    .line 47
    aget-wide v1, v12, v0

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v4, v3, v0

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aput-wide v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    move-object/from16 v3, v17

    move-wide/from16 v4, v20

    move-object/from16 v0, v26

    move-object/from16 v2, v29

    move-wide/from16 v59, v6

    move-object/from16 v7, v28

    move-wide/from16 v28, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v59

    :goto_b
    const-wide v36, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v4, v36

    if-gez v1, :cond_25

    const/4 v1, 0x0

    .line 48
    :goto_c
    iget v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_c

    .line 49
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 50
    aget-wide v3, v10, v2

    aput-wide v3, v13, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 51
    :cond_c
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 52
    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, v24

    move-object/from16 v5, v30

    move-object v4, v12

    move/from16 v30, v9

    move-object/from16 v26, v38

    move-object v9, v5

    move-object v5, v15

    move-object/from16 v16, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v14

    move-object v14, v6

    move-object/from16 v6, v18

    move-object/from16 v43, v7

    move-object/from16 v59, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v59

    move-object/from16 v7, v16

    .line 53
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    move-wide/from16 v6, v19

    const/4 v0, 0x0

    .line 54
    :goto_d
    iget v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v0, v1, :cond_d

    .line 55
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v0

    .line 56
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v3, v2, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    .line 57
    aget-wide v3, v13, v1

    aget-wide v38, v2, v1

    add-double v3, v3, v38

    aput-wide v3, v10, v1

    .line 58
    aget-wide v3, v12, v1

    aget-wide v1, v2, v1

    mul-double v3, v3, v1

    mul-double v3, v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 59
    :cond_d
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    move-wide/from16 v4, v24

    if-eqz v33, :cond_e

    .line 60
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 61
    :cond_e
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v7

    .line 62
    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 63
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v3, v10, v7}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v24, v7

    .line 64
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v6

    const-wide/high16 v38, -0x4010000000000000L    # -1.0

    const-wide v40, 0x3fb999999999999aL    # 0.1

    mul-double v44, v6, v40

    cmpg-double v25, v44, v22

    if-gez v25, :cond_f

    div-double v38, v6, v22

    mul-double v38, v38, v38

    sub-double v38, v31, v38

    :cond_f
    move-object/from16 v25, v2

    move-object/from16 v42, v13

    const/4 v2, 0x0

    .line 65
    :goto_e
    iget v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v13, :cond_11

    .line 66
    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v2

    move-wide/from16 v46, v6

    .line 67
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v48, v6, v13

    .line 68
    aput-wide v19, v15, v2

    const/4 v6, 0x0

    :goto_f
    if-gt v6, v2, :cond_10

    .line 69
    aget-wide v50, v15, v6

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v52, v7, v13

    mul-double v52, v52, v48

    add-double v50, v50, v52

    aput-wide v50, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_10
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v6, v46

    goto :goto_e

    :cond_11
    move-wide/from16 v46, v6

    move-wide/from16 v6, v19

    const/4 v2, 0x0

    .line 70
    :goto_10
    iget v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v13, :cond_12

    .line 71
    aget-wide v48, v15, v2

    aget-wide v50, v15, v2

    mul-double v48, v48, v50

    add-double v6, v6, v48

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_12
    mul-double v48, v22, v22

    div-double v6, v6, v48

    move-object v13, v3

    .line 72
    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v50, v2, v0

    mul-double v50, v50, v0

    div-double v50, v50, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v52, v50, v48

    add-double v52, v6, v52

    add-double v6, v6, v50

    neg-double v6, v6

    cmpl-double v50, v52, v19

    if-nez v50, :cond_13

    move-wide/from16 v50, v19

    goto :goto_11

    :cond_13
    div-double v50, v38, v52

    :goto_11
    const-wide/high16 v54, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    cmpg-double v58, v50, v54

    if-gtz v58, :cond_17

    cmpg-double v2, v38, v19

    if-gez v2, :cond_14

    mul-double v2, v6, v56

    mul-double v56, v56, v38

    add-double v6, v6, v56

    div-double v56, v2, v6

    :cond_14
    cmpl-double v2, v44, v22

    if-gez v2, :cond_16

    cmpg-double v2, v56, v40

    if-gez v2, :cond_15

    goto :goto_12

    :cond_15
    move-wide/from16 v40, v56

    :cond_16
    :goto_12
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    .line 73
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    mul-double v0, v0, v40

    .line 74
    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v2, v2, v40

    iput-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_14

    :cond_17
    cmpl-double v6, v2, v19

    if-eqz v6, :cond_19

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v40, v50, v6

    if-ltz v40, :cond_18

    goto :goto_13

    :cond_18
    move-wide v0, v4

    goto :goto_14

    :cond_19
    :goto_13
    mul-double v0, v0, v48

    mul-double v2, v2, v56

    .line 75
    iput-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    :goto_14
    cmpl-double v2, v50, v36

    if-ltz v2, :cond_1c

    move-wide/from16 v6, v19

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v11, :cond_1a

    .line 76
    aget-wide v3, v12, v2

    aget-wide v22, v10, v2

    mul-double v3, v3, v22

    mul-double v3, v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 77
    :cond_1a
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    if-eqz v9, :cond_1b

    .line 78
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getIterations()I

    move-result v2

    invoke-interface {v9, v2, v14, v13}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-wide/from16 v2, v46

    .line 79
    invoke-virtual {v8, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->setCost(D)V

    return-object v13

    :cond_1b
    move-wide/from16 v2, v46

    move-wide v4, v2

    move-object v3, v13

    move-object/from16 v2, v18

    move-object/from16 v7, v24

    const/16 v33, 0x0

    goto :goto_17

    :cond_1c
    const/4 v2, 0x0

    .line 80
    :goto_16
    iget v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_1d

    .line 81
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 82
    aget-wide v4, v42, v3

    aput-wide v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 83
    :cond_1d
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v3, v18

    .line 84
    iput-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 85
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-object/from16 v6, v43

    invoke-direct {v3, v10, v6}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object v7, v6

    move-wide/from16 v4, v22

    .line 86
    :goto_17
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    move-object v13, v7

    iget-wide v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v18, v22, v6

    if-gtz v18, :cond_1e

    cmpg-double v18, v52, v6

    if-gtz v18, :cond_1e

    cmpg-double v6, v50, v48

    if-lez v6, :cond_1f

    :cond_1e
    iget-wide v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v6, v6, v28

    cmpg-double v18, v0, v6

    if-gtz v18, :cond_20

    .line 87
    :cond_1f
    invoke-virtual {v8, v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->setCost(D)V

    return-object v3

    .line 88
    :cond_20
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    sget-wide v22, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v18, v6, v22

    if-gtz v18, :cond_22

    cmpg-double v6, v52, v22

    if-gtz v6, :cond_22

    cmpg-double v6, v50, v48

    if-lez v6, :cond_21

    goto :goto_18

    .line 89
    :cond_21
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_22
    :goto_18
    const/4 v7, 0x1

    mul-double v36, v22, v28

    cmpg-double v6, v0, v36

    if-lez v6, :cond_24

    cmpg-double v6, v34, v22

    if-lez v6, :cond_23

    move-wide/from16 v22, v4

    move-object v7, v13

    move-object/from16 v18, v17

    move-object/from16 v38, v26

    move-object/from16 v13, v42

    move-wide/from16 v4, v50

    move-object/from16 v17, v14

    move-object/from16 v14, v21

    move-wide/from16 v20, v19

    move-object/from16 v19, v16

    move-wide/from16 v59, v0

    move-object v0, v2

    move-object/from16 v2, v25

    move-wide/from16 v24, v59

    move/from16 v61, v30

    move-object/from16 v30, v9

    move/from16 v9, v61

    goto/16 :goto_b

    .line 90
    :cond_23
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 91
    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_25
    move-object v6, v7

    move-object/from16 v16, v19

    move-wide/from16 v19, v20

    move-wide/from16 v4, v24

    const/4 v7, 0x1

    move-object/from16 v59, v30

    move/from16 v30, v9

    move-object/from16 v9, v59

    move-object/from16 v17, v3

    move-object v1, v6

    move-object/from16 v19, v16

    move-wide/from16 v6, v22

    move-wide/from16 v24, v28

    move/from16 v3, v33

    move-wide/from16 v22, v4

    move-object v4, v9

    move/from16 v9, v30

    move-object/from16 v5, v38

    goto/16 :goto_0
.end method
