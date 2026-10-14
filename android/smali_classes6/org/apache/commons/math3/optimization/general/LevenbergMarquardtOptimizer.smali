.class public Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
.method public constructor <init>()V
    .locals 11

    .line 1
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

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

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 11
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 12
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 13
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 14
    iput-wide p7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 15
    iput-wide p9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 6
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 7
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 8
    iput-wide p10, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
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

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V

    return-void
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 3
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v6, v7, :cond_0

    .line 4
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

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
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_7

    .line 8
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v9, :cond_6

    .line 13
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v4

    .line 14
    aget-wide v10, v1, v4

    cmpl-double v12, v10, v5

    if-eqz v12, :cond_4

    .line 15
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_5

    .line 26
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v2, v17

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v4, v17

    aget-wide v5, v3, v5

    aput-wide v5, v1, v17

    .line 31
    aget-object v2, v2, v17

    aget v3, v4, v17

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v5, v4, v17

    aput-wide v5, v2, v3

    add-int/lit8 v3, v17, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 32
    :goto_6
    iget v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

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
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    add-int/lit8 v5, v2, 0x1

    move-wide v9, v7

    :goto_8
    if-ge v5, v4, :cond_b

    .line 36
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v1

    if-ge v2, v3, :cond_d

    .line 39
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    const/4 v9, 0x0

    .line 2
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    if-ge v9, v10, :cond_0

    .line 3
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    .line 6
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v7

    .line 7
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_2

    .line 8
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

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
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_4

    .line 11
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 12
    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

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
    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    return-void

    .line 16
    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    .line 17
    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v11, v12, :cond_6

    .line 18
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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
    iget v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v13, :cond_8

    .line 21
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v15

    const/4 v14, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v14, v15, :cond_7

    .line 22
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v14

    aget-wide v25, v5, v13

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

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
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v5, v15, :cond_b

    .line 26
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v5

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const-wide/16 v23, 0x0

    :goto_a
    if-gt v9, v5, :cond_a

    .line 27
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    const-wide v5, 0x10000c51bd5669L    # 2.2251E-308

    const-wide/16 v19, 0x0

    cmpl-double v15, v13, v19

    if-nez v15, :cond_c

    const-wide v13, 0x3fb999999999999aL    # 0.1

    .line 30
    invoke-static {v2, v3, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    div-double v13, v5, v13

    goto :goto_b

    :cond_c
    move-wide/from16 v23, v13

    .line 31
    :goto_b
    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v15, v5, v19

    if-nez v15, :cond_d

    div-double/2addr v9, v7

    .line 32
    iput-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    :cond_d
    const/16 v5, 0xa

    move-wide/from16 v9, v25

    :goto_c
    if-ltz v5, :cond_18

    .line 33
    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v8, v6, v19

    if-nez v8, :cond_e

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v6, v6, v13

    move-wide/from16 v23, v13

    const-wide v13, 0x10000c51bd5669L    # 2.2251E-308

    .line 34
    invoke-static {v13, v14, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_d

    :cond_e
    move-wide/from16 v23, v13

    const-wide v13, 0x10000c51bd5669L    # 2.2251E-308

    .line 35
    :goto_d
    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const/4 v8, 0x0

    .line 36
    :goto_e
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v8, v15, :cond_f

    .line 37
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v8

    .line 38
    aget-wide v17, p4, v15

    mul-double v17, v17, v6

    aput-wide v17, v4, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_f
    move-object/from16 v8, p6

    move-wide v14, v13

    move-object/from16 v13, p7

    .line 39
    invoke-direct {v0, v1, v4, v8, v13}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    .line 40
    :goto_f
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v14, v15, :cond_10

    .line 41
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v14

    .line 42
    aget-wide v25, p4, v15

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v27, v1, v15

    mul-double v25, v25, v27

    .line 43
    aput-wide v25, v13, v15

    mul-double v25, v25, v25

    add-double v6, v6, v25

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_f

    .line 44
    :cond_10
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v14, v6, v2

    .line 45
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    cmpg-double v1, v25, v21

    if-lez v1, :cond_18

    const-wide/16 v19, 0x0

    cmpl-double v1, v11, v19

    if-nez v1, :cond_11

    cmpg-double v1, v14, v9

    if-gtz v1, :cond_11

    cmpg-double v1, v9, v19

    if-gez v1, :cond_11

    goto/16 :goto_16

    :cond_11
    const/4 v1, 0x0

    .line 46
    :goto_10
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v9, :cond_12

    .line 47
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v1

    .line 48
    aget-wide v25, v13, v9

    aget-wide v27, p4, v9

    mul-double v25, v25, v27

    div-double v25, v25, v6

    aput-wide v25, v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    .line 49
    :goto_11
    iget v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v6, :cond_14

    .line 50
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v1

    .line 51
    aget-wide v9, v4, v6

    aget-wide v25, v8, v1

    div-double v9, v9, v25

    aput-wide v9, v4, v6

    .line 52
    aget-wide v9, v4, v6

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    move/from16 v25, v7

    .line 53
    :goto_12
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v1, :cond_13

    .line 54
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v7

    aget-wide v26, v4, v1

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v28, v8, v6

    mul-double v28, v28, v9

    sub-double v26, v26, v28

    aput-wide v26, v4, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, p6

    goto :goto_12

    :cond_13
    move-object/from16 v8, p6

    move/from16 v1, v25

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 55
    :goto_13
    iget v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v8, :cond_15

    .line 56
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v1

    aget-wide v8, v4, v8

    mul-double v8, v8, v8

    add-double/2addr v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_15
    mul-double v6, v6, v2

    div-double v6, v14, v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v14, v8

    if-lez v1, :cond_16

    .line 57
    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v11, v12, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    move-wide v11, v8

    goto :goto_14

    :cond_16
    cmpg-double v1, v14, v8

    if-gez v1, :cond_17

    .line 58
    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v1, v23

    invoke-static {v1, v2, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    goto :goto_15

    :cond_17
    :goto_14
    move-wide/from16 v1, v23

    .line 59
    :goto_15
    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    add-double/2addr v8, v6

    invoke-static {v11, v12, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    add-int/lit8 v5, v5, -0x1

    move-wide v9, v14

    const-wide/16 v19, 0x0

    move-wide v13, v1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    goto/16 :goto_c

    :cond_18
    :goto_16
    return-void
.end method

.method private qTy([D)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 2
    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 4
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v3

    aget-wide v10, p1, v6

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v7, v6, v3

    mul-double v4, v4, v7

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    .line 6
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v7, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_0

    .line 5
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v9, v8, v4

    mul-double v9, v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

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
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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
    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v12, v7, v10

    if-gtz v12, :cond_6

    .line 11
    iput v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    return-void

    .line 12
    :cond_6
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v10, v9

    .line 13
    aget v12, v10, v4

    aput v12, v10, v9

    .line 14
    aput v11, v10, v4

    .line 15
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v14, v7, v11

    .line 18
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v9, v7, v11

    .line 19
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v13, v12, v8

    aget-wide v16, v13, v11

    aget-object v12, v12, v8

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v13, v12, v8

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 62

    move-object/from16 v8, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getTarget()[D

    move-result-object v0

    array-length v9, v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getStartPoint()[D

    move-result-object v10

    .line 3
    array-length v11, v10

    .line 4
    invoke-static {v9, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iput v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 5
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    .line 6
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 7
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    .line 8
    new-array v0, v11, [I

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    .line 9
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 10
    new-array v12, v11, [D

    .line 11
    new-array v13, v11, [D

    .line 12
    new-array v0, v9, [D

    .line 13
    new-array v1, v9, [D

    .line 14
    new-array v14, v9, [D

    .line 15
    new-array v15, v11, [D

    .line 16
    new-array v7, v11, [D

    .line 17
    new-array v6, v11, [D

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 19
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v1

    .line 20
    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 21
    new-instance v3, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v3, v10, v1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 22
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v16

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    .line 23
    iput-wide v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 24
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    const/16 v20, 0x0

    const/4 v6, 0x1

    move-object v7, v3

    move-object/from16 v28, v15

    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object v3, v0

    move-wide/from16 v60, v16

    move-object/from16 v16, v1

    move-wide/from16 v0, v60

    const/16 v17, 0x0

    :goto_0
    add-int/lit8 v15, v17, 0x1

    .line 25
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 26
    invoke-interface {v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v6

    iput-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_0

    move-object/from16 v29, v2

    .line 27
    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v30, v2, v6

    aput-wide v30, v14, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v29

    goto :goto_1

    :cond_0
    move-object/from16 v29, v2

    .line 28
    invoke-direct {v8, v14}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qTy([D)V

    const/4 v2, 0x0

    .line 29
    :goto_2
    iget v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v6, :cond_1

    .line 30
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v2

    move-object/from16 v30, v3

    .line 31
    iget-object v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v3, v2

    move-object/from16 v31, v4

    iget-object v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v32, v4, v6

    aput-wide v32, v3, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    goto :goto_2

    :cond_1
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    if-eqz v23, :cond_5

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_3
    if-ge v2, v11, :cond_3

    .line 32
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v24, v6, v2

    const-wide/16 v21, 0x0

    cmpl-double v6, v24, v21

    if-nez v6, :cond_2

    move-wide/from16 v24, v32

    .line 33
    :cond_2
    aget-wide v26, v10, v2

    mul-double v26, v26, v24

    mul-double v26, v26, v26

    add-double v3, v3, v26

    .line 34
    aput-wide v24, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 35
    :cond_3
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    const-wide/16 v21, 0x0

    cmpl-double v2, v26, v21

    if-nez v2, :cond_4

    .line 36
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v2, v2, v26

    :goto_4
    move-wide/from16 v24, v2

    goto :goto_5

    :cond_5
    const-wide/16 v21, 0x0

    :goto_5
    cmpl-double v2, v0, v21

    if-eqz v2, :cond_9

    move-wide/from16 v2, v21

    const/4 v4, 0x0

    .line 37
    :goto_6
    iget v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v6, :cond_8

    .line 38
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v4

    move-object/from16 v34, v5

    .line 39
    iget-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v35, v5, v6

    cmpl-double v5, v35, v21

    if-eqz v5, :cond_7

    move-wide/from16 v37, v21

    const/4 v5, 0x0

    :goto_7
    if-gt v5, v4, :cond_6

    move/from16 v39, v9

    .line 40
    iget-object v9, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v5

    aget-wide v40, v9, v6

    aget-wide v42, v14, v5

    mul-double v40, v40, v42

    add-double v37, v37, v40

    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v39

    goto :goto_7

    :cond_6
    move/from16 v39, v9

    .line 41
    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v35, v35, v0

    div-double v5, v5, v35

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    goto :goto_8

    :cond_7
    move/from16 v39, v9

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v34

    move/from16 v9, v39

    goto :goto_6

    :cond_8
    move-object/from16 v34, v5

    move/from16 v39, v9

    move-wide/from16 v35, v2

    goto :goto_9

    :cond_9
    move-object/from16 v34, v5

    move/from16 v39, v9

    move-wide/from16 v35, v21

    .line 42
    :goto_9
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v4, v35, v2

    if-gtz v4, :cond_a

    .line 43
    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->setCost(D)V

    .line 44
    invoke-virtual {v7}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    return-object v7

    :cond_a
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v11, :cond_b

    .line 45
    aget-wide v3, v12, v2

    iget-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    move-wide/from16 v37, v0

    aget-wide v0, v5, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    aput-wide v0, v12, v2

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, v37

    goto :goto_a

    :cond_b
    move-wide/from16 v37, v0

    move-object v3, v7

    move-object/from16 v9, v16

    move-wide/from16 v4, v21

    move-object/from16 v2, v29

    move-object/from16 v0, v30

    :goto_b
    const-wide v29, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v4, v29

    if-gez v1, :cond_26

    const/4 v1, 0x0

    .line 46
    :goto_c
    iget v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_c

    .line 47
    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 48
    aget-wide v3, v10, v2

    aput-wide v3, v13, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 49
    :cond_c
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 50
    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, v24

    move-object/from16 v5, v31

    move-object v4, v12

    move-object/from16 v31, v14

    move-object/from16 v16, v34

    move-object v14, v5

    move-object/from16 v5, v28

    move-object/from16 v17, v19

    move-object/from16 v19, v9

    move-object v9, v6

    move-object/from16 v6, v18

    move-object/from16 v34, v9

    move-object v9, v7

    move-object/from16 v7, v17

    .line 51
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    move-wide/from16 v6, v21

    const/4 v0, 0x0

    .line 52
    :goto_d
    iget v1, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v0, v1, :cond_d

    .line 53
    iget-object v1, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v0

    .line 54
    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v3, v2, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    .line 55
    aget-wide v3, v13, v1

    aget-wide v40, v2, v1

    add-double v3, v3, v40

    aput-wide v3, v10, v1

    .line 56
    aget-wide v3, v12, v1

    aget-wide v1, v2, v1

    mul-double v3, v3, v1

    mul-double v3, v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 57
    :cond_d
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    move-wide/from16 v4, v24

    if-eqz v23, :cond_e

    .line 58
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 59
    :cond_e
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    .line 60
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v3

    .line 61
    new-instance v6, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v6, v10, v2}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v24, v6

    .line 62
    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v6

    const-wide/high16 v40, -0x4010000000000000L    # -1.0

    const-wide v42, 0x3fb999999999999aL    # 0.1

    mul-double v44, v6, v42

    cmpg-double v25, v44, v37

    if-gez v25, :cond_f

    div-double v40, v6, v37

    mul-double v40, v40, v40

    sub-double v40, v32, v40

    :cond_f
    move-object/from16 v25, v2

    move-object/from16 v46, v3

    const/4 v2, 0x0

    .line 63
    :goto_e
    iget v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_11

    .line 64
    iget-object v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    move-object/from16 v47, v13

    .line 65
    iget-object v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v48, v13, v3

    .line 66
    aput-wide v21, v28, v2

    const/4 v13, 0x0

    :goto_f
    if-gt v13, v2, :cond_10

    .line 67
    aget-wide v50, v28, v13

    move-wide/from16 v52, v6

    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v6, v6, v13

    aget-wide v54, v6, v3

    mul-double v54, v54, v48

    add-double v50, v50, v54

    aput-wide v50, v28, v13

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v6, v52

    goto :goto_f

    :cond_10
    move-wide/from16 v52, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, v47

    goto :goto_e

    :cond_11
    move-wide/from16 v52, v6

    move-object/from16 v47, v13

    move-wide/from16 v6, v21

    const/4 v2, 0x0

    .line 68
    :goto_10
    iget v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_12

    .line 69
    aget-wide v48, v28, v2

    aget-wide v50, v28, v2

    mul-double v48, v48, v50

    add-double v6, v6, v48

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_12
    mul-double v2, v37, v37

    div-double/2addr v6, v2

    move-object/from16 v48, v14

    .line 70
    iget-wide v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v49, v13, v0

    mul-double v49, v49, v0

    div-double v49, v49, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v54, v49, v2

    add-double v54, v6, v54

    add-double v6, v6, v49

    neg-double v6, v6

    cmpl-double v49, v54, v21

    if-nez v49, :cond_13

    move-wide/from16 v49, v21

    goto :goto_11

    :cond_13
    div-double v49, v40, v54

    :goto_11
    const-wide/high16 v56, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v58, 0x3fe0000000000000L    # 0.5

    cmpg-double v51, v49, v56

    if-gtz v51, :cond_17

    cmpg-double v13, v40, v21

    if-gez v13, :cond_14

    mul-double v13, v6, v58

    mul-double v58, v58, v40

    add-double v6, v6, v58

    div-double v58, v13, v6

    :cond_14
    cmpl-double v6, v44, v37

    if-gez v6, :cond_16

    cmpg-double v6, v58, v42

    if-gez v6, :cond_15

    goto :goto_12

    :cond_15
    move-wide/from16 v42, v58

    :cond_16
    :goto_12
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v6

    .line 71
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    mul-double v0, v0, v42

    .line 72
    iget-wide v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v4, v4, v42

    iput-wide v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_14

    :cond_17
    cmpl-double v6, v13, v21

    if-eqz v6, :cond_19

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v42, v49, v6

    if-ltz v42, :cond_18

    goto :goto_13

    :cond_18
    move-wide v0, v4

    goto :goto_14

    :cond_19
    :goto_13
    mul-double v0, v0, v2

    mul-double v13, v13, v58

    .line 73
    iput-wide v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    :goto_14
    cmpl-double v4, v49, v29

    if-ltz v4, :cond_1d

    move-wide/from16 v6, v21

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v11, :cond_1a

    .line 74
    aget-wide v13, v12, v4

    aget-wide v26, v10, v4

    mul-double v13, v13, v26

    mul-double v13, v13, v13

    add-double/2addr v6, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 75
    :cond_1a
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    move-object/from16 v4, v24

    move-object/from16 v6, v48

    if-eqz v48, :cond_1b

    .line 76
    invoke-interface {v6, v15, v9, v4}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move-wide/from16 v13, v52

    if-eqz v5, :cond_1c

    .line 77
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->setCost(D)V

    .line 78
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    return-object v4

    :cond_1b
    move-wide/from16 v13, v52

    :cond_1c
    move-object/from16 v7, v25

    const/16 v23, 0x0

    goto :goto_17

    :cond_1d
    move-object/from16 v6, v48

    const/4 v4, 0x0

    .line 79
    :goto_16
    iget v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v5, :cond_1e

    .line 80
    iget-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v4

    .line 81
    aget-wide v13, v47, v5

    aput-wide v13, v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 82
    :cond_1e
    iget-object v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v5, v34

    .line 83
    iput-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 84
    new-instance v5, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-object/from16 v7, v19

    invoke-direct {v5, v10, v7}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v34, v4

    move-object v4, v5

    move-wide/from16 v13, v37

    .line 85
    :goto_17
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v5, v24, v2

    if-gtz v5, :cond_1f

    cmpg-double v5, v54, v2

    if-gtz v5, :cond_1f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v5, v49, v2

    if-lez v5, :cond_20

    :cond_1f
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v2, v2, v26

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_21

    .line 86
    :cond_20
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->setCost(D)V

    .line 87
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    return-object v4

    .line 88
    :cond_21
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v24, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v5, v2, v24

    if-gtz v5, :cond_23

    cmpg-double v2, v54, v24

    if-gtz v2, :cond_23

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v5, v49, v2

    if-lez v5, :cond_22

    goto :goto_18

    .line 89
    :cond_22
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    :goto_18
    const/4 v2, 0x1

    mul-double v29, v26, v24

    cmpg-double v3, v0, v29

    if-lez v3, :cond_25

    cmpg-double v3, v35, v24

    if-lez v3, :cond_24

    move-wide/from16 v24, v0

    move-object v3, v4

    move-wide/from16 v37, v13

    move-object/from16 v19, v17

    move-object/from16 v14, v31

    move-object/from16 v0, v34

    move-object/from16 v2, v46

    move-object/from16 v13, v47

    move-wide/from16 v4, v49

    move-object/from16 v31, v6

    move-object/from16 v34, v16

    move-object/from16 v60, v9

    move-object v9, v7

    move-object/from16 v7, v60

    goto/16 :goto_b

    .line 90
    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 91
    :cond_25
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_26
    move-object v7, v9

    move-wide/from16 v4, v24

    move-object/from16 v6, v31

    const/4 v1, 0x1

    move-object v4, v6

    move-object/from16 v16, v7

    move/from16 v17, v15

    move-object/from16 v5, v34

    move/from16 v9, v39

    const/4 v6, 0x1

    move-object v7, v3

    move-object v3, v0

    move-wide/from16 v0, v37

    goto/16 :goto_0
.end method
