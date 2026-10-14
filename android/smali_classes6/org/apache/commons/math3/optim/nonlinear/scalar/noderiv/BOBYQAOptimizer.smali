.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer$PathIsExploredException;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_RADIUS:D = 10.0

.field public static final DEFAULT_STOPPING_RADIUS:D = 1.0E-8

.field private static final HALF:D = 0.5

.field public static final MINIMUM_PROBLEM_DIMENSION:I = 0x2

.field private static final MINUS_ONE:D = -1.0

.field private static final ONE:D = 1.0

.field private static final ONE_OVER_A_THOUSAND:D = 0.001

.field private static final ONE_OVER_EIGHT:D = 0.125

.field private static final ONE_OVER_FOUR:D = 0.25

.field private static final ONE_OVER_TEN:D = 0.1

.field private static final SIXTEEN:D = 16.0

.field private static final TEN:D = 10.0

.field private static final TWO:D = 2.0

.field private static final TWO_HUNDRED_FIFTY:D = 250.0

.field private static final ZERO:D


# instance fields
.field private alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private boundDifference:[D

.field private currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private initialTrustRegionRadius:D

.field private interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private isMinimize:Z

.field private lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final numberOfInterpolationPoints:I

.field private originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final stoppingTrustRegionRadius:D

.field private trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private trustRegionCenterInterpolationPointIndex:I

.field private trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->caller(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private altmov(ID)[D
    .locals 51

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 3
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 4
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 5
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 6
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 7
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v9, 0x0

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v9, v3, :cond_0

    .line 8
    invoke-virtual {v5, v9, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    sub-int v9, v3, v2

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_2

    .line 9
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_1

    .line 10
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v8, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v19

    mul-double v19, v19, v14

    add-double v10, v16, v19

    invoke-virtual {v5, v8, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v12, v8, v10

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v2, :cond_3

    .line 12
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v1, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-virtual {v4, v14, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v14, v14, 0x1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v3, :cond_6

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    :goto_5
    if-ge v11, v2, :cond_4

    move-object/from16 v19, v7

    .line 13
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v14, v14, v23

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v19

    goto :goto_5

    :cond_4
    move-object/from16 v19, v7

    .line 14
    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v14, v14, v23

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v2, :cond_5

    .line 15
    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v10, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v25

    mul-double v25, v25, v14

    move-wide/from16 v27, v14

    add-double v14, v23, v25

    invoke-virtual {v4, v7, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v14, v27

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v19

    goto :goto_4

    :cond_6
    move-object/from16 v19, v7

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v27, v10

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    :goto_7
    if-ge v7, v3, :cond_14

    .line 16
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v7, v10, :cond_7

    move/from16 v35, v3

    move-object/from16 v39, v4

    move-object/from16 v20, v5

    move-object/from16 v37, v6

    move-wide/from16 v33, v8

    goto/16 :goto_e

    :cond_7
    const/4 v10, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v31, 0x0

    :goto_8
    if-ge v10, v2, :cond_8

    .line 17
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v7, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v33

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    sub-double v33, v33, v35

    .line 18
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    mul-double v35, v35, v33

    add-double v31, v31, v35

    mul-double v33, v33, v33

    add-double v27, v27, v33

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 19
    :cond_8
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    div-double v10, p2, v10

    move-wide/from16 v33, v8

    neg-double v8, v10

    move-object/from16 v20, v5

    move-object/from16 v37, v6

    move-wide/from16 v35, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 20
    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    move-wide/from16 v8, v35

    const/16 v36, 0x0

    const/16 v38, 0x0

    move/from16 v35, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_d

    move-object/from16 v39, v4

    .line 21
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v7, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v40, v40, v42

    const-wide/16 v21, 0x0

    cmpl-double v4, v40, v21

    if-lez v4, :cond_a

    mul-double v42, v8, v40

    .line 22
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpg-double v4, v42, v44

    if-gez v4, :cond_9

    .line 23
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v8, v8, v42

    div-double v8, v8, v40

    neg-int v4, v3

    const/16 v18, 0x1

    add-int/lit8 v36, v4, -0x1

    :cond_9
    mul-double v42, v10, v40

    .line 24
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpl-double v4, v42, v44

    if-lez v4, :cond_c

    .line 25
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v10, v10, v42

    div-double v10, v10, v40

    invoke-static {v5, v6, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    add-int/lit8 v4, v3, 0x1

    :goto_a
    move/from16 v38, v4

    goto :goto_b

    :cond_a
    const-wide/16 v21, 0x0

    cmpg-double v4, v40, v21

    if-gez v4, :cond_c

    mul-double v42, v8, v40

    .line 26
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpl-double v4, v42, v44

    if-lez v4, :cond_b

    .line 27
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v8, v8, v42

    div-double v8, v8, v40

    add-int/lit8 v36, v3, 0x1

    :cond_b
    mul-double v42, v10, v40

    .line 28
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpg-double v4, v42, v44

    if-gez v4, :cond_c

    .line 29
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v10, v10, v42

    div-double v10, v10, v40

    invoke-static {v5, v6, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    neg-int v4, v3

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_c
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v39

    goto/16 :goto_9

    :cond_d
    move-object/from16 v39, v4

    if-ne v7, v1, :cond_f

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v31, v3

    mul-double v3, v8, v5

    sub-double v40, v31, v3

    mul-double v40, v40, v8

    mul-double v42, v10, v5

    sub-double v44, v31, v42

    mul-double v44, v44, v10

    .line 30
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v48

    cmpl-double v50, v46, v48

    if-lez v50, :cond_e

    move-wide v8, v10

    move/from16 v36, v38

    move-wide/from16 v40, v44

    :cond_e
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v31, v31, v10

    sub-double v3, v31, v3

    sub-double v10, v31, v42

    mul-double v3, v3, v10

    const-wide/16 v10, 0x0

    cmpg-double v38, v3, v10

    if-gez v38, :cond_12

    mul-double v3, v31, v31

    div-double/2addr v3, v5

    .line 31
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    cmpl-double v38, v10, v42

    if-lez v38, :cond_12

    div-double v8, v31, v5

    move-wide/from16 v40, v3

    const/16 v36, 0x0

    goto :goto_d

    :cond_f
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v8

    mul-double v5, v5, v8

    sub-double v40, v3, v10

    mul-double v40, v40, v10

    .line 32
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    cmpl-double v44, v3, v42

    if-lez v44, :cond_10

    move-wide v8, v10

    move/from16 v36, v38

    move-wide/from16 v5, v40

    :cond_10
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v38, v10, v16

    if-lez v38, :cond_11

    .line 33
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpg-double v38, v10, v3

    if-gez v38, :cond_11

    move-wide v5, v3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/16 v36, 0x0

    goto :goto_c

    :cond_11
    move-wide v10, v8

    :goto_c
    mul-double v40, v5, v31

    move-wide v8, v10

    :cond_12
    :goto_d
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v10, v3, v8

    mul-double v10, v10, v8

    mul-double v10, v10, v27

    mul-double v40, v40, v40

    mul-double v3, v12, v10

    mul-double v3, v3, v10

    add-double v3, v40, v3

    mul-double v40, v40, v3

    cmpl-double v3, v40, v25

    if-lez v3, :cond_13

    move v14, v7

    move-wide/from16 v23, v8

    move-wide/from16 v27, v23

    move/from16 v15, v36

    move-wide/from16 v25, v40

    goto :goto_e

    :cond_13
    move-wide/from16 v27, v8

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v20

    move-wide/from16 v8, v33

    move/from16 v3, v35

    move-object/from16 v6, v37

    move-object/from16 v4, v39

    goto/16 :goto_7

    :cond_14
    move/from16 v35, v3

    move-object/from16 v39, v4

    move-object/from16 v20, v5

    move-object/from16 v37, v6

    move-wide/from16 v33, v8

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_15

    .line 34
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v14, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double v5, v5, v23

    add-double/2addr v3, v5

    .line 35
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-virtual {v5, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_15
    if-gez v15, :cond_16

    .line 36
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-int v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_10

    :cond_16
    const/4 v4, 0x1

    :goto_10
    if-lez v15, :cond_17

    .line 37
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-int/2addr v15, v4

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v1, v15, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_17
    add-double v3, p2, p2

    move-wide/from16 v10, v27

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    :goto_11
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :goto_12
    if-ge v7, v2, :cond_1a

    move-object/from16 v12, v39

    .line 38
    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    move-wide/from16 v23, v10

    move-object/from16 v15, v37

    const-wide/16 v10, 0x0

    .line 39
    invoke-virtual {v15, v7, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 40
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    move-wide/from16 v25, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v10, v5

    invoke-static {v10, v11, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmpl-double v21, v5, v10

    if-gtz v21, :cond_18

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    sub-double/2addr v5, v10

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmpg-double v27, v5, v10

    if-gez v27, :cond_19

    .line 41
    :cond_18
    invoke-virtual {v15, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v13, v13, v13

    add-double/2addr v8, v13

    :cond_19
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v39, v12

    move-object/from16 v37, v15

    move-wide/from16 v10, v23

    move-wide/from16 v5, v25

    goto :goto_12

    :cond_1a
    move-wide/from16 v25, v5

    move-wide/from16 v23, v10

    move-object/from16 v15, v37

    move-object/from16 v12, v39

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    cmpl-double v10, v8, v6

    if-nez v10, :cond_1b

    new-array v1, v5, [D

    const/4 v2, 0x0

    aput-wide v33, v1, v2

    const/4 v2, 0x1

    aput-wide v6, v1, v2

    return-object v1

    :cond_1b
    mul-double v10, p2, p2

    sub-double/2addr v10, v6

    cmpl-double v13, v10, v6

    if-lez v13, :cond_20

    div-double/2addr v10, v8

    .line 42
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v2, :cond_1f

    .line 43
    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    cmpl-double v11, v9, v3

    if-nez v11, :cond_1e

    .line 44
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v12, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v13, v13, v6

    sub-double/2addr v9, v13

    .line 45
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpg-double v11, v9, v13

    if-gtz v11, :cond_1c

    .line 46
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v9, v13

    invoke-virtual {v15, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 47
    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_14

    .line 48
    :cond_1c
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpl-double v11, v9, v13

    if-ltz v11, :cond_1d

    .line 49
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v9, v13

    invoke-virtual {v15, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 50
    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_14

    .line 51
    :cond_1d
    invoke-virtual {v12, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    :cond_1e
    :goto_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1f
    move-wide v10, v6

    goto :goto_15

    :cond_20
    move-wide/from16 v10, v23

    :goto_15
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    :goto_16
    if-ge v6, v2, :cond_24

    .line 52
    invoke-virtual {v12, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    .line 53
    invoke-virtual {v15, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    cmpl-double v9, v23, v3

    if-nez v9, :cond_21

    move-wide/from16 v23, v3

    neg-double v3, v10

    mul-double v3, v3, v13

    .line 54
    invoke-virtual {v15, v6, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 55
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v27

    invoke-virtual {v15, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    move v9, v6

    add-double v5, v27, v31

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    .line 56
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v27, v10

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-virtual {v5, v9, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v21, 0x0

    goto :goto_17

    :cond_21
    move-wide/from16 v23, v3

    move v9, v6

    move-wide/from16 v27, v10

    .line 57
    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    const-wide/16 v21, 0x0

    cmpl-double v5, v3, v21

    if-nez v5, :cond_22

    .line 58
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v9, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_17

    :cond_22
    cmpl-double v3, v13, v21

    if-lez v3, :cond_23

    .line 59
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v9, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_17

    .line 60
    :cond_23
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v9, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 61
    :goto_17
    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v13, v13, v3

    add-double/2addr v7, v13

    add-int/lit8 v6, v9, 0x1

    move-wide/from16 v3, v23

    move-wide/from16 v10, v27

    const/4 v5, 0x2

    goto/16 :goto_16

    :cond_24
    move-wide/from16 v23, v3

    move-wide/from16 v27, v10

    const-wide/16 v21, 0x0

    move-wide/from16 v4, v21

    move/from16 v6, v35

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v6, :cond_26

    move-wide/from16 v10, v21

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v2, :cond_25

    .line 62
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v3, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    mul-double v13, v13, v31

    add-double/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_25
    move-object/from16 v9, v20

    .line 63
    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v13, v13, v10

    mul-double v13, v13, v10

    add-double/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_26
    move-object/from16 v9, v20

    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    neg-double v4, v4

    :cond_27
    neg-double v10, v7

    cmpl-double v3, v4, v10

    if-lez v3, :cond_2a

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 64
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v29

    mul-double v13, v13, v10

    cmpg-double v3, v4, v13

    if-gez v3, :cond_29

    div-double/2addr v10, v4

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_28

    .line 65
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v13, v13, v10

    add-double/2addr v4, v13

    .line 66
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v37, v15

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    move/from16 v35, v6

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v20, v1

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    invoke-static {v14, v15, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-virtual {v13, v3, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v6, v35

    move-object/from16 v15, v37

    goto :goto_1a

    :cond_28
    move/from16 v20, v1

    move/from16 v35, v6

    move-object/from16 v37, v15

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v0

    mul-double v7, v7, v10

    goto :goto_1c

    :cond_29
    move/from16 v20, v1

    move/from16 v35, v6

    move-object/from16 v37, v15

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_1b

    :cond_2a
    move/from16 v20, v1

    move/from16 v35, v6

    move-object/from16 v37, v15

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    :goto_1b
    mul-double v4, v4, v0

    add-double/2addr v7, v4

    :goto_1c
    mul-double v7, v7, v7

    if-nez v20, :cond_2c

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_2b

    .line 67
    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v12, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move-object/from16 v4, p0

    .line 68
    iget-object v5, v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    move-object/from16 v10, v19

    invoke-virtual {v10, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2b
    move-object/from16 v0, p0

    move-wide v5, v7

    move-object/from16 v20, v9

    move-object/from16 v39, v12

    move-wide/from16 v3, v23

    move-wide/from16 v10, v27

    const/4 v1, 0x1

    goto/16 :goto_11

    :cond_2c
    move-object/from16 v4, p0

    move-object/from16 v10, v19

    cmpl-double v0, v25, v7

    if-lez v0, :cond_2e

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v2, :cond_2d

    .line 69
    iget-object v1, v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v1, v0, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2d
    move-wide/from16 v5, v25

    goto :goto_1f

    :cond_2e
    move-wide v5, v7

    :goto_1f
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v33, v0, v1

    const/4 v1, 0x1

    aput-wide v5, v0, v1

    return-object v0
.end method

.method private bobyqa([D[D)D
    .locals 11

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 3
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v3, v2, v1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 5
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 6
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v7, v7

    const-wide/16 v9, 0x0

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_1

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v2, v5, v9

    if-ltz v2, :cond_0

    .line 8
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 9
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 10
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p1, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    add-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 12
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 13
    aget-wide v2, p2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 14
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-virtual {v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    cmpg-double v2, v5, v7

    if-gtz v2, :cond_3

    .line 16
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpg-double v2, v5, v9

    if-gtz v2, :cond_2

    .line 17
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 18
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 19
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p2, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    sub-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 21
    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 22
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v4, v4

    .line 23
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-virtual {v6, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 24
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 25
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqb([D[D)D

    move-result-wide p1

    return-wide p1
.end method

.method private bobyqb([D[D)D
    .locals 106

    move-object/from16 v8, p0

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v9

    .line 3
    iget v10, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/lit8 v0, v9, 0x1

    sub-int v11, v10, v0

    mul-int v0, v0, v9

    .line 4
    div-int/lit8 v12, v0, 0x2

    .line 5
    new-instance v13, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 6
    new-instance v14, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v14, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 7
    new-instance v15, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v15, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v7, 0x0

    .line 8
    iput v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 9
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->prelim([D[D)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    .line 10
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v5, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 11
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v0

    .line 14
    iget-wide v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    const-wide/high16 v23, 0x7ff8000000000000L    # Double.NaN

    const/16 v7, 0x3c

    move-wide/from16 v30, v1

    move-wide/from16 v32, v3

    move-wide v3, v5

    move-wide/from16 v1, v23

    move-wide/from16 v34, v1

    move-wide/from16 v38, v34

    const/16 v24, 0x0

    const-wide/16 v36, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    move/from16 v23, v0

    const/16 v0, 0x14

    :goto_1
    const-wide/high16 v60, 0x4024000000000000L    # 10.0

    const-wide/high16 v62, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v64, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    if-eq v0, v2, :cond_64

    if-eq v0, v7, :cond_63

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_62

    const-wide/high16 v66, 0x3ff8000000000000L    # 1.5

    move-wide/from16 v68, v3

    const-wide v70, 0x3fb999999999999aL    # 0.1

    const/16 v4, 0xd2

    if-eq v0, v4, :cond_7

    const/16 v4, 0xe6

    if-eq v0, v4, :cond_6

    const/16 v4, 0x168

    if-eq v0, v4, :cond_5

    const/16 v4, 0x28a

    if-eq v0, v4, :cond_4

    const/16 v2, 0x2a8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2d0

    if-ne v0, v2, :cond_2

    :cond_1
    const/16 v16, 0x2d0

    goto/16 :goto_46

    .line 15
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "bobyqb"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    move/from16 v100, v11

    move-object/from16 v73, v13

    move-object/from16 v82, v15

    move-wide/from16 v75, v41

    move/from16 v11, v45

    move-wide/from16 v1, v64

    move-wide/from16 v3, v68

    const/16 v15, 0x2a8

    const/16 v18, 0x5a

    const/16 v21, 0xd2

    move-wide/from16 v102, v5

    move-object v5, v14

    move-wide/from16 v13, v102

    move-wide/from16 v6, v52

    goto/16 :goto_42

    :cond_4
    move/from16 v100, v11

    move-object/from16 v73, v13

    move-object/from16 v82, v15

    move-wide/from16 v75, v41

    move/from16 v11, v45

    move-wide/from16 v96, v52

    move-wide/from16 v1, v64

    move-wide/from16 v3, v68

    const/16 v7, 0x28a

    const/16 v18, 0x5a

    const/16 v21, 0xd2

    move-wide/from16 v102, v5

    move-object v5, v14

    move-wide/from16 v13, v102

    goto/16 :goto_3d

    :cond_5
    move-wide/from16 v77, v5

    move/from16 v83, v11

    move/from16 v28, v12

    move-object/from16 v73, v13

    move-object/from16 v79, v14

    move-object/from16 v82, v15

    move/from16 v0, v40

    move-wide/from16 v75, v41

    move/from16 v11, v45

    const/16 v7, 0x168

    const/16 v21, 0xd2

    goto/16 :goto_13

    :cond_6
    move/from16 v0, v40

    move-wide/from16 v75, v41

    const/16 v7, 0xe6

    const/16 v21, 0xd2

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    const/16 v21, 0xd2

    .line 16
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v0, v40

    move-wide/from16 v2, v41

    .line 17
    invoke-direct {v8, v0, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->altmov(ID)[D

    move-result-object v34

    .line 18
    aget-wide v35, v34, v4

    .line 19
    aget-wide v37, v34, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_8

    .line 20
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    move-wide/from16 v75, v2

    sub-double v1, v64, v73

    invoke-virtual {v7, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v75

    const/4 v1, 0x1

    const/16 v7, 0x3c

    goto :goto_2

    :cond_8
    move-wide/from16 v75, v2

    const/16 v7, 0xe6

    move-wide/from16 v102, v35

    move-wide/from16 v34, v37

    move-wide/from16 v38, v102

    .line 21
    :goto_3
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v10, :cond_a

    move/from16 v28, v12

    move-object/from16 v73, v13

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v36, 0x0

    :goto_5
    if-ge v1, v9, :cond_9

    .line 22
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v64

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v64, v64, v77

    add-double v2, v2, v64

    .line 23
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v64

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v64, v64, v77

    add-double v36, v36, v64

    .line 24
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v64

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v64, v64, v77

    add-double v12, v12, v64

    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0xe6

    goto :goto_5

    :cond_9
    mul-double v64, v2, v62

    add-double v64, v64, v36

    move-wide/from16 v77, v5

    mul-double v5, v2, v64

    .line 25
    invoke-virtual {v15, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 26
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 27
    invoke-virtual {v14, v4, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v28

    move-object/from16 v13, v73

    move-wide/from16 v5, v77

    const/16 v7, 0xe6

    goto :goto_4

    :cond_a
    move-wide/from16 v77, v5

    move/from16 v28, v12

    move-object/from16 v73, v13

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v11, :cond_d

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    :goto_7
    if-ge v3, v10, :cond_b

    .line 28
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v12, v12, v36

    add-double/2addr v5, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    mul-double v12, v5, v5

    sub-double/2addr v1, v12

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v10, :cond_c

    .line 29
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    move-wide/from16 v36, v1

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    mul-double v1, v1, v5

    add-double/2addr v12, v1

    invoke-virtual {v7, v3, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v36

    goto :goto_8

    :cond_c
    move-wide/from16 v36, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v12, 0x0

    :goto_9
    if-ge v5, v9, :cond_10

    move-object/from16 v79, v14

    .line 30
    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v36, v36, v36

    add-double v3, v3, v36

    const/4 v14, 0x0

    const-wide/16 v36, 0x0

    :goto_a
    if-ge v14, v10, :cond_e

    .line 31
    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    move-wide/from16 v80, v3

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v14, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v3

    mul-double v64, v64, v3

    add-double v36, v36, v64

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v3, v80

    goto :goto_a

    :cond_e
    move-wide/from16 v80, v3

    .line 32
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v36

    add-double/2addr v12, v3

    add-int v3, v10, v5

    move-object/from16 v82, v15

    move-wide/from16 v14, v36

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v9, :cond_f

    move/from16 v83, v11

    .line 33
    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v36, v36, v64

    add-double v14, v14, v36

    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v83

    goto :goto_b

    :cond_f
    move/from16 v83, v11

    .line 34
    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 35
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v14, v14, v3

    add-double/2addr v12, v14

    .line 36
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double v3, v3, v14

    add-double/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v14, v79

    move-wide/from16 v3, v80

    move-object/from16 v15, v82

    move/from16 v11, v83

    goto :goto_9

    :cond_10
    move/from16 v83, v11

    move-object/from16 v79, v14

    move-object/from16 v82, v15

    mul-double v14, v6, v6

    add-double v36, v30, v6

    add-double v36, v36, v6

    mul-double v5, v3, v62

    add-double v36, v36, v5

    mul-double v36, v36, v3

    add-double v14, v14, v36

    add-double/2addr v14, v1

    sub-double v36, v14, v12

    .line 37
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v11

    invoke-virtual {v1, v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v11, v45

    if-nez v11, :cond_13

    .line 38
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double v1, v1, v1

    mul-double v5, v38, v36

    add-double v54, v1, v5

    cmpg-double v1, v54, v34

    if-gez v1, :cond_12

    const-wide/16 v1, 0x0

    cmpl-double v5, v34, v1

    if-lez v5, :cond_12

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v9, :cond_11

    .line 39
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 40
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    sub-double/2addr v5, v12

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    move/from16 v40, v0

    move-wide v1, v3

    move/from16 v45, v11

    move/from16 v12, v28

    move-wide/from16 v3, v68

    move-object/from16 v13, v73

    move-wide/from16 v41, v75

    move-wide/from16 v5, v77

    move-object/from16 v14, v79

    move-object/from16 v15, v82

    move/from16 v11, v83

    const/16 v0, 0xe6

    const/16 v7, 0x3c

    const-wide/16 v34, 0x0

    goto/16 :goto_1

    :cond_12
    move-wide/from16 v64, v3

    goto/16 :goto_12

    :cond_13
    mul-double v0, v68, v68

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    :goto_d
    if-ge v2, v10, :cond_18

    .line 41
    iget v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v2, v14, :cond_14

    move-wide/from16 v80, v0

    move-wide/from16 v64, v3

    goto/16 :goto_11

    :cond_14
    move-wide/from16 v64, v3

    move/from16 v4, v83

    const/4 v3, 0x0

    const-wide/16 v14, 0x0

    :goto_e
    if-ge v3, v4, :cond_15

    move/from16 v43, v7

    .line 42
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v44

    mul-double v44, v44, v44

    add-double v14, v14, v44

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v43

    goto :goto_e

    :cond_15
    move/from16 v43, v7

    .line 43
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    mul-double v14, v14, v36

    mul-double v44, v44, v44

    add-double v14, v14, v44

    const/4 v3, 0x0

    const-wide/16 v44, 0x0

    :goto_f
    if-ge v3, v9, :cond_16

    .line 44
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v58

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    sub-double v58, v58, v80

    mul-double v58, v58, v58

    add-double v44, v44, v58

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_16
    div-double v58, v44, v0

    move-wide/from16 v80, v0

    mul-double v0, v58, v58

    move/from16 v83, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 45
    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    mul-double v3, v0, v14

    cmpl-double v7, v3, v5

    if-lez v7, :cond_17

    move v7, v2

    move-wide v5, v3

    move-wide/from16 v54, v14

    goto :goto_10

    :cond_17
    move/from16 v7, v43

    .line 46
    :goto_10
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v3

    mul-double v0, v0, v3

    .line 47
    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    move-wide v12, v0

    move-wide/from16 v58, v44

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v3, v64

    move-wide/from16 v0, v80

    goto/16 :goto_d

    :cond_18
    move-wide/from16 v64, v3

    move/from16 v43, v7

    move/from16 v0, v43

    :goto_12
    const/16 v7, 0x168

    .line 48
    :goto_13
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v9, :cond_1b

    .line 49
    aget-wide v1, p1, v4

    .line 50
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    add-double/2addr v5, v12

    .line 51
    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 52
    aget-wide v5, p2, v4

    .line 53
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 54
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v3, v1, v5

    if-nez v3, :cond_19

    .line 55
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p1, v4

    invoke-virtual {v1, v4, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 56
    :cond_19
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v3, v1, v5

    if-nez v3, :cond_1a

    .line 57
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p2, v4

    invoke-virtual {v1, v4, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 58
    :cond_1b
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 59
    iget-boolean v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-nez v3, :cond_1c

    neg-double v1, v1

    :cond_1c
    move-wide v12, v1

    const/4 v1, -0x1

    if-ne v11, v1, :cond_1d

    move/from16 v40, v0

    move/from16 v45, v11

    move-wide/from16 v32, v12

    move-wide/from16 v43, v32

    move/from16 v12, v28

    move-wide/from16 v1, v64

    move-wide/from16 v3, v68

    move-object/from16 v13, v73

    move-wide/from16 v41, v75

    move-wide/from16 v5, v77

    move-object/from16 v14, v79

    move-object/from16 v15, v82

    move/from16 v11, v83

    const/16 v0, 0x2d0

    const/16 v7, 0x3c

    goto/16 :goto_1

    .line 60
    :cond_1d
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v9, :cond_20

    .line 61
    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    mul-double v5, v5, v43

    add-double/2addr v1, v5

    const/4 v5, 0x0

    :goto_16
    if-gt v5, v4, :cond_1f

    .line 62
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    move/from16 v43, v0

    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    mul-double v6, v6, v44

    if-ne v5, v4, :cond_1e

    mul-double v6, v6, v62

    .line 63
    :cond_1e
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    mul-double v44, v44, v6

    add-double v1, v1, v44

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v43

    goto :goto_16

    :cond_1f
    move/from16 v43, v0

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x168

    goto :goto_15

    :cond_20
    move/from16 v43, v0

    move-wide v6, v1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v10, :cond_21

    move-object/from16 v5, v79

    .line 64
    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    mul-double v0, v0, v0

    .line 65
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, v62

    mul-double v2, v2, v0

    add-double/2addr v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_21
    move-object/from16 v5, v79

    sub-double v0, v12, v14

    sub-double v44, v0, v6

    .line 66
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    move-wide/from16 v3, v52

    cmpl-double v2, v3, v77

    if-lez v2, :cond_22

    .line 67
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v2

    move/from16 v23, v2

    :cond_22
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    if-lez v11, :cond_2d

    const-wide/16 v16, 0x0

    cmpl-double v2, v6, v16

    if-gez v2, :cond_2c

    div-double/2addr v0, v6

    move-object/from16 v79, v5

    move-wide/from16 v80, v6

    mul-double v5, v68, v62

    cmpg-double v2, v0, v70

    if-gtz v2, :cond_23

    .line 68
    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    :goto_18
    move-wide/from16 v56, v0

    goto :goto_19

    :cond_23
    const-wide v56, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v0, v56

    if-gtz v2, :cond_24

    .line 69
    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    goto :goto_18

    :cond_24
    move-wide/from16 v56, v0

    mul-double v0, v3, v52

    .line 70
    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    :goto_19
    mul-double v0, v77, v66

    cmpg-double v2, v5, v0

    if-gtz v2, :cond_25

    move-wide/from16 v5, v77

    :cond_25
    cmpg-double v0, v12, v14

    if-gez v0, :cond_2b

    mul-double v0, v5, v5

    move-wide/from16 v84, v3

    move-wide/from16 v2, v16

    move-wide/from16 v86, v54

    move-wide/from16 v68, v58

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide/from16 v58, v2

    :goto_1a
    if-ge v4, v10, :cond_29

    move-wide/from16 v88, v5

    move-wide/from16 v68, v16

    move/from16 v6, v83

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v6, :cond_26

    move/from16 v83, v6

    .line 71
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v90

    mul-double v90, v90, v90

    add-double v68, v68, v90

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v83

    goto :goto_1b

    :cond_26
    move/from16 v83, v6

    .line 72
    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v68, v68, v36

    mul-double v5, v5, v5

    add-double v68, v68, v5

    move-wide/from16 v90, v16

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v9, :cond_27

    .line 73
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v92

    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    sub-double v92, v92, v94

    mul-double v92, v92, v92

    add-double v90, v90, v92

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_27
    div-double v5, v90, v0

    mul-double v5, v5, v5

    move-wide/from16 v92, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 74
    invoke-static {v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double v40, v5, v68

    cmpl-double v72, v40, v58

    if-lez v72, :cond_28

    move v7, v4

    move-wide/from16 v58, v40

    move-wide/from16 v86, v68

    .line 75
    :cond_28
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    mul-double v0, v0, v0

    mul-double v5, v5, v0

    .line 76
    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v5, v88

    move-wide/from16 v68, v90

    move-wide/from16 v0, v92

    goto :goto_1a

    :cond_29
    move-wide/from16 v88, v5

    mul-double v2, v2, v62

    cmpg-double v0, v58, v2

    if-gtz v0, :cond_2a

    move/from16 v6, v43

    move-wide/from16 v58, v68

    goto :goto_1d

    :cond_2a
    move v6, v7

    move-wide/from16 v58, v68

    move-wide/from16 v54, v86

    goto :goto_1d

    :cond_2b
    move-wide/from16 v84, v3

    move-wide/from16 v88, v5

    move/from16 v6, v43

    :goto_1d
    const/4 v7, 0x0

    goto :goto_1e

    :cond_2c
    move-wide/from16 v80, v6

    .line 77
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TRUST_REGION_STEP_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {v80 .. v81}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_2d
    move-wide/from16 v84, v3

    move-object/from16 v79, v5

    move-wide/from16 v80, v6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    move/from16 v6, v43

    move-wide/from16 v88, v68

    :goto_1e
    move-object/from16 v0, p0

    const/16 v18, 0x5a

    move-wide/from16 v1, v36

    move/from16 v5, v83

    move-wide/from16 v96, v84

    move-wide/from16 v3, v54

    move/from16 v100, v5

    move-wide/from16 v98, v77

    move-object/from16 v101, v79

    move-wide/from16 v102, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v102

    move v5, v6

    .line 78
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->update(DDI)V

    .line 79
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    .line 80
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v6, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v9, :cond_2f

    .line 81
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v6, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    mul-double v40, v40, v0

    const/4 v3, 0x0

    :goto_20
    if-gt v3, v4, :cond_2e

    .line 82
    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    mul-double v77, v77, v40

    add-double v14, v68, v77

    invoke-virtual {v5, v2, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    const-wide/16 v14, 0x0

    goto :goto_20

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    const-wide/16 v14, 0x0

    goto :goto_1f

    :cond_2f
    move/from16 v14, v100

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v14, :cond_31

    .line 83
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v6, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v0

    mul-double v0, v0, v44

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v10, :cond_30

    .line 84
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v2, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    mul-double v68, v68, v0

    move-wide/from16 v77, v0

    add-double v0, v40, v68

    invoke-virtual {v3, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, v77

    goto :goto_22

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 85
    :cond_31
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v6, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v9, :cond_32

    .line 86
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    invoke-virtual {v0, v6, v4, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 87
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v6, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v0

    move-object/from16 v15, v73

    invoke-virtual {v15, v4, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_32
    move-object/from16 v15, v73

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v10, :cond_36

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_25
    if-ge v0, v14, :cond_33

    .line 88
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v6, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    mul-double v40, v40, v68

    add-double v1, v1, v40

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_33
    const/4 v0, 0x0

    const-wide/16 v40, 0x0

    :goto_26
    if-ge v0, v9, :cond_34

    .line 89
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v72

    mul-double v68, v68, v72

    add-double v40, v40, v68

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_34
    mul-double v1, v1, v40

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v9, :cond_35

    .line 90
    invoke-virtual {v15, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    mul-double v68, v68, v1

    move-wide/from16 v72, v1

    add-double v1, v40, v68

    invoke-virtual {v15, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v1, v72

    goto :goto_27

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_36
    const/4 v4, 0x0

    :goto_28
    if-ge v4, v9, :cond_37

    .line 91
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    invoke-virtual {v15, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v44

    add-double v1, v1, v40

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_37
    cmpg-double v0, v12, v16

    if-gez v0, :cond_3e

    .line 92
    iput v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v9, :cond_3a

    .line 93
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move v7, v6

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 94
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v5, v5, v5

    add-double/2addr v1, v5

    const/4 v3, 0x0

    :goto_2a
    if-gt v3, v4, :cond_39

    if-ge v3, v4, :cond_38

    .line 95
    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v30

    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    mul-double v40, v40, v43

    move-wide/from16 v43, v1

    add-double v1, v30, v40

    invoke-virtual {v5, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2b

    :cond_38
    move-wide/from16 v43, v1

    .line 96
    :goto_2b
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v30

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v30, v30, v40

    add-double v5, v5, v30

    invoke-virtual {v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v43

    goto :goto_2a

    :cond_39
    move-wide/from16 v43, v1

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_29

    :cond_3a
    move v7, v6

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v10, :cond_3d

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    :goto_2d
    if-ge v0, v9, :cond_3b

    .line 97
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v30

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v30, v30, v40

    add-double v5, v5, v30

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 98
    :cond_3b
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v30

    mul-double v5, v5, v30

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v9, :cond_3c

    .line 99
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v30

    move-wide/from16 v40, v1

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    mul-double v1, v1, v5

    add-double v1, v30, v1

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v1, v40

    goto :goto_2e

    :cond_3c
    move-wide/from16 v40, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3d
    move-wide/from16 v40, v1

    move-wide/from16 v30, v40

    goto :goto_2f

    :cond_3e
    move v7, v6

    :goto_2f
    if-lez v11, :cond_4f

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v10, :cond_3f

    .line 100
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v1, v5

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move-object/from16 v6, v82

    const-wide/16 v0, 0x0

    .line 101
    invoke-virtual {v6, v4, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_3f
    move-object/from16 v6, v82

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v14, :cond_42

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_32
    if-ge v0, v10, :cond_40

    .line 102
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    mul-double v40, v40, v43

    add-double v1, v1, v40

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_40
    const/4 v0, 0x0

    :goto_33
    if-ge v0, v10, :cond_41

    .line 103
    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v43

    mul-double v43, v43, v1

    move-wide/from16 v68, v1

    add-double v1, v40, v43

    invoke-virtual {v6, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v1, v68

    goto :goto_33

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_42
    const/4 v4, 0x0

    :goto_34
    if-ge v4, v10, :cond_44

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_35
    if-ge v0, v9, :cond_43

    .line 104
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v4, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    mul-double v40, v40, v43

    add-double v1, v1, v40

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_43
    move/from16 v100, v14

    move-object/from16 v73, v15

    .line 105
    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    move-object/from16 v5, v101

    invoke-virtual {v5, v4, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 106
    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double v1, v1, v14

    invoke-virtual {v6, v4, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, v73

    move/from16 v14, v100

    goto :goto_34

    :cond_44
    move/from16 v100, v14

    move-object/from16 v73, v15

    move-object/from16 v5, v101

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_36
    if-ge v4, v9, :cond_48

    move-wide/from16 v40, v12

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    :goto_37
    if-ge v14, v10, :cond_45

    .line 107
    iget-object v15, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v14, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v43

    iget-object v15, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    mul-double v43, v43, v68

    iget-object v15, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v14, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v68

    invoke-virtual {v6, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v68, v68, v77

    add-double v43, v43, v68

    add-double v12, v12, v43

    add-int/lit8 v14, v14, 0x1

    goto :goto_37

    .line 108
    :cond_45
    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    move-object/from16 v82, v6

    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    cmpl-double v6, v14, v43

    if-nez v6, :cond_46

    .line 109
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    move/from16 v43, v7

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v14

    mul-double v14, v14, v14

    add-double/2addr v0, v14

    .line 110
    invoke-static {v6, v7, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v14

    mul-double v14, v14, v14

    add-double/2addr v2, v14

    goto :goto_39

    :cond_46
    move/from16 v43, v7

    .line 111
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    cmpl-double v44, v6, v14

    if-nez v44, :cond_47

    .line 112
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double v6, v6, v6

    add-double/2addr v0, v6

    .line 113
    invoke-static {v14, v15, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double v6, v6, v6

    goto :goto_38

    .line 114
    :cond_47
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    mul-double v6, v6, v6

    add-double/2addr v0, v6

    mul-double v6, v12, v12

    :goto_38
    add-double/2addr v2, v6

    .line 115
    :goto_39
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v7, v10, v4

    invoke-virtual {v6, v7, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v40

    move/from16 v7, v43

    move-object/from16 v6, v82

    goto/16 :goto_36

    :cond_48
    move-object/from16 v82, v6

    move/from16 v43, v7

    move-wide/from16 v40, v12

    add-int/lit8 v4, v24, 0x1

    mul-double v2, v2, v60

    cmpg-double v6, v0, v2

    if-gez v6, :cond_49

    const/4 v4, 0x0

    :cond_49
    const/4 v0, 0x3

    move/from16 v12, v28

    if-lt v4, v0, :cond_4e

    .line 116
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    move v1, v4

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v0, :cond_4d

    if-ge v4, v9, :cond_4a

    .line 117
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v3, v10, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4a
    if-ge v4, v10, :cond_4b

    .line 118
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4b
    if-ge v4, v12, :cond_4c

    .line 119
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto :goto_3a

    :cond_4d
    move/from16 v24, v1

    goto :goto_3b

    :cond_4e
    move/from16 v24, v4

    goto :goto_3b

    :cond_4f
    move/from16 v43, v7

    move-wide/from16 v40, v12

    move/from16 v100, v14

    move-object/from16 v73, v15

    move/from16 v12, v28

    move-object/from16 v5, v101

    :goto_3b
    if-nez v11, :cond_50

    :goto_3c
    move-object v14, v5

    move/from16 v45, v11

    move-wide/from16 v1, v64

    move-object/from16 v13, v73

    move-object/from16 v15, v82

    move-wide/from16 v3, v88

    move-wide/from16 v52, v96

    move-wide/from16 v5, v98

    move/from16 v11, v100

    const/16 v0, 0x3c

    const/16 v7, 0x3c

    move-wide/from16 v102, v40

    move/from16 v40, v43

    move-wide/from16 v43, v102

    move-wide/from16 v41, v75

    move-wide/from16 v104, v46

    move-wide/from16 v46, v50

    move-wide/from16 v50, v48

    move-wide/from16 v48, v104

    goto/16 :goto_1

    :cond_50
    mul-double v6, v80, v70

    add-double v14, v16, v6

    cmpg-double v0, v40, v14

    if-gtz v0, :cond_51

    goto :goto_3c

    :cond_51
    mul-double v52, v52, v88

    move-wide/from16 v13, v98

    mul-double v0, v13, v60

    mul-double v2, v52, v52

    mul-double v0, v0, v0

    .line 120
    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v58

    move-wide/from16 v43, v40

    move-wide/from16 v1, v64

    move-wide/from16 v3, v88

    const/16 v7, 0x28a

    move-wide/from16 v102, v46

    move-wide/from16 v46, v50

    move-wide/from16 v50, v48

    move-wide/from16 v48, v102

    .line 121
    :goto_3d
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v0, 0x0

    const/16 v40, -0x1

    :goto_3e
    if-ge v0, v10, :cond_54

    const/4 v6, 0x0

    const-wide/16 v15, 0x0

    :goto_3f
    if-ge v6, v9, :cond_52

    .line 122
    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v0, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v52

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    sub-double v52, v52, v60

    mul-double v52, v52, v52

    add-double v15, v15, v52

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x28a

    goto :goto_3f

    :cond_52
    cmpl-double v6, v15, v58

    if-lez v6, :cond_53

    move/from16 v40, v0

    move-wide/from16 v58, v15

    :cond_53
    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x28a

    goto :goto_3e

    :cond_54
    if-ltz v40, :cond_57

    .line 123
    invoke-static/range {v58 .. v59}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const/4 v2, -0x1

    if-ne v11, v2, :cond_56

    mul-double v3, v3, v70

    mul-double v6, v0, v62

    .line 124
    invoke-static {v3, v4, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    mul-double v6, v13, v66

    cmpg-double v4, v2, v6

    if-gtz v4, :cond_55

    move-wide v3, v13

    goto :goto_40

    :cond_55
    move-wide v3, v2

    :cond_56
    :goto_40
    mul-double v0, v0, v70

    .line 125
    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 126
    invoke-static {v0, v1, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    mul-double v6, v0, v0

    move-wide/from16 v41, v0

    move-wide v1, v6

    move-object/from16 v15, v82

    move-wide/from16 v52, v96

    move/from16 v11, v100

    const/16 v0, 0x5a

    const/16 v7, 0x3c

    const/16 v45, 0x0

    goto/16 :goto_45

    :cond_57
    const/4 v0, -0x1

    if-ne v11, v0, :cond_58

    move/from16 v45, v11

    move-wide/from16 v41, v75

    move-object/from16 v15, v82

    move-wide/from16 v52, v96

    move/from16 v11, v100

    const/16 v0, 0x2a8

    goto/16 :goto_44

    :cond_58
    const-wide/16 v6, 0x0

    cmpl-double v0, v56, v6

    if-lez v0, :cond_59

    move/from16 v45, v11

    move-wide/from16 v41, v75

    move-object/from16 v15, v82

    move-wide/from16 v52, v96

    :goto_41
    move/from16 v11, v100

    const/16 v0, 0x3c

    goto/16 :goto_44

    :cond_59
    move-wide/from16 v6, v96

    .line 127
    invoke-static {v3, v4, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v15

    cmpl-double v0, v15, v13

    if-lez v0, :cond_5a

    move-wide/from16 v52, v6

    move/from16 v45, v11

    move-wide/from16 v41, v75

    move-object/from16 v15, v82

    goto :goto_41

    :cond_5a
    const/16 v15, 0x2a8

    .line 128
    :goto_42
    invoke-static {v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v16, v1

    .line 129
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    cmpl-double v2, v13, v0

    if-lez v2, :cond_5d

    mul-double v2, v13, v62

    div-double v56, v13, v0

    const-wide/high16 v52, 0x4030000000000000L    # 16.0

    cmpg-double v4, v56, v52

    if-gtz v4, :cond_5b

    goto :goto_43

    :cond_5b
    const-wide v0, 0x406f400000000000L    # 250.0

    cmpg-double v4, v56, v0

    if-gtz v4, :cond_5c

    .line 130
    invoke-static/range {v56 .. v57}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iget-wide v13, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    mul-double v0, v0, v13

    goto :goto_43

    :cond_5c
    mul-double v0, v13, v70

    .line 131
    :goto_43
    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v23

    move-object v14, v5

    move-wide/from16 v52, v6

    move-object/from16 v13, v73

    move-wide/from16 v41, v75

    move-object/from16 v15, v82

    move/from16 v11, v100

    const/16 v7, 0x3c

    const/16 v45, 0x0

    move-wide v5, v0

    move-wide/from16 v1, v16

    const/16 v0, 0x3c

    goto/16 :goto_1

    :cond_5d
    const/4 v1, -0x1

    if-ne v11, v1, :cond_1

    move-wide/from16 v52, v6

    move/from16 v45, v11

    move-wide/from16 v1, v16

    move-wide/from16 v41, v75

    move-object/from16 v15, v82

    move/from16 v11, v100

    const/16 v0, 0x168

    :goto_44
    const/16 v7, 0x3c

    :goto_45
    move-wide/from16 v102, v13

    move-object v14, v5

    move-wide/from16 v5, v102

    move-object/from16 v13, v73

    goto/16 :goto_1

    .line 133
    :goto_46
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 134
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    cmpg-double v2, v0, v32

    if-gtz v2, :cond_61

    const/4 v7, 0x0

    :goto_47
    if-ge v7, v9, :cond_60

    .line 135
    aget-wide v0, p1, v7

    .line 136
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 137
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 138
    aget-wide v2, p2, v7

    .line 139
    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    invoke-virtual {v4, v7, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 140
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_5e

    .line 141
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p1, v7

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 142
    :cond_5e
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_5f

    .line 143
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p2, v7

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    .line 144
    :cond_60
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v43

    :cond_61
    return-wide v43

    :cond_62
    move/from16 v100, v11

    move-object/from16 v73, v13

    move-wide/from16 v75, v41

    move/from16 v11, v45

    const/16 v21, 0xd2

    move-wide/from16 v102, v5

    move-object v5, v14

    move-wide/from16 v13, v102

    move-wide/from16 v6, v52

    move-wide/from16 v68, v3

    move v4, v9

    move v0, v11

    move/from16 v28, v12

    move-object/from16 v42, v15

    move-wide/from16 v60, v46

    move-wide/from16 v11, v48

    move-wide/from16 v1, v64

    move-object/from16 v9, v73

    const/16 v16, 0x2a8

    const/16 v17, 0x28a

    const/16 v18, 0xe6

    const/16 v20, 0x0

    const/16 v21, 0x2d0

    const/16 v22, 0x168

    const/16 v25, 0x5a

    const/16 v27, 0x14

    const/16 v41, 0x3c

    const/16 v45, -0x1

    move-object v15, v5

    goto/16 :goto_52

    :cond_63
    move-wide/from16 v68, v3

    move/from16 v100, v11

    move-object/from16 v73, v13

    move-object/from16 v82, v15

    move/from16 v0, v40

    move-wide/from16 v75, v41

    const/16 v15, 0x2a8

    const/16 v16, 0x2d0

    const/16 v18, 0x5a

    const/16 v21, 0xd2

    move-wide/from16 v102, v5

    move-object v5, v14

    move-wide/from16 v13, v102

    move/from16 v28, v12

    move/from16 v19, v45

    goto/16 :goto_4d

    :cond_64
    move-wide/from16 v68, v3

    move/from16 v100, v11

    move-object/from16 v73, v13

    move-object/from16 v82, v15

    move/from16 v0, v40

    move-wide/from16 v75, v41

    move/from16 v11, v45

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v7, 0x14

    const/16 v15, 0x2a8

    const/16 v16, 0x2d0

    const/16 v18, 0x5a

    const/16 v21, 0xd2

    move-wide/from16 v102, v5

    move-object v5, v14

    move-wide/from16 v13, v102

    .line 145
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 146
    iget v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-eqz v3, :cond_6a

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_48
    if-ge v4, v9, :cond_67

    const/4 v6, 0x0

    :goto_49
    if-gt v6, v4, :cond_66

    if-ge v6, v4, :cond_65

    .line 147
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    mul-double v40, v40, v52

    add-double v7, v25, v40

    invoke-virtual {v1, v4, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_65
    move-object/from16 v8, p0

    .line 148
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    mul-double v40, v40, v52

    move/from16 v19, v11

    move/from16 v28, v12

    add-double v11, v25, v40

    invoke-virtual {v1, v6, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v19

    move/from16 v12, v28

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v7, 0x14

    goto :goto_49

    :cond_66
    move/from16 v19, v11

    move/from16 v28, v12

    add-int/lit8 v4, v4, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v7, 0x14

    goto :goto_48

    :cond_67
    move/from16 v19, v11

    move/from16 v28, v12

    .line 149
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v1

    if-le v1, v10, :cond_6b

    const/4 v4, 0x0

    :goto_4a
    if-ge v4, v10, :cond_6b

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_4b
    if-ge v1, v9, :cond_68

    .line 150
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v6, v6, v11

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 151
    :cond_68
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    mul-double v2, v2, v6

    const/4 v1, 0x0

    :goto_4c
    if-ge v1, v9, :cond_69

    .line 152
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v25

    mul-double v25, v25, v2

    add-double v11, v11, v25

    invoke-virtual {v6, v1, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    :cond_6a
    move/from16 v19, v11

    move/from16 v28, v12

    :cond_6b
    const/16 v7, 0x3c

    .line 153
    :goto_4d
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 154
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 155
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 156
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 157
    new-instance v11, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v11, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 158
    new-instance v12, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v12, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move/from16 v40, v0

    move-object/from16 v0, p0

    const/16 v25, -0x1

    const/16 v26, 0x1

    move-wide/from16 v1, v68

    move/from16 v29, v9

    move-wide/from16 v8, v68

    move-object v15, v5

    move-object v5, v6

    move-object/from16 v42, v82

    move-object v6, v11

    const/16 v11, 0xd2

    const/16 v16, 0x2a8

    const/16 v17, 0x28a

    const/16 v18, 0xe6

    const/16 v20, 0x0

    const/16 v21, 0x2d0

    const/16 v22, 0x168

    const/16 v25, 0x5a

    const/16 v27, 0x14

    const/16 v41, 0x3c

    const/16 v45, -0x1

    move-object v7, v12

    .line 159
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D

    move-result-object v0

    .line 160
    aget-wide v1, v0, v20

    .line 161
    aget-wide v3, v0, v26

    .line 162
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    .line 163
    invoke-static {v8, v9, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v52

    mul-double v5, v13, v62

    cmpg-double v0, v52, v5

    if-gez v0, :cond_73

    mul-double v5, v13, v60

    mul-double v58, v5, v5

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v0

    add-int/lit8 v5, v23, 0x2

    if-gt v0, v5, :cond_6c

    move-wide v3, v8

    move-wide v5, v13

    move-object v14, v15

    move/from16 v12, v28

    move/from16 v9, v29

    move-object/from16 v15, v42

    move-object/from16 v13, v73

    move-wide/from16 v41, v75

    move/from16 v11, v100

    const/16 v0, 0x28a

    const/16 v7, 0x3c

    move-object/from16 v8, p0

    goto/16 :goto_1

    :cond_6c
    move-wide/from16 v5, v46

    move-wide/from16 v11, v48

    move-wide/from16 v46, v1

    .line 165
    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    move-wide/from16 v48, v3

    move-wide/from16 v2, v50

    .line 166
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    const-wide/high16 v50, 0x3fc0000000000000L    # 0.125

    mul-double v50, v50, v13

    mul-double v50, v50, v13

    const-wide/16 v60, 0x0

    cmpl-double v7, v48, v60

    if-lez v7, :cond_6d

    mul-double v50, v50, v48

    cmpl-double v7, v0, v50

    if-lez v7, :cond_6d

    move-wide/from16 v50, v2

    move-wide v3, v8

    move-wide/from16 v48, v11

    move/from16 v12, v28

    move/from16 v9, v29

    move-wide/from16 v1, v46

    move/from16 v11, v100

    const/16 v0, 0x28a

    const/16 v7, 0x3c

    move-object/from16 v8, p0

    move-wide/from16 v46, v5

    move-wide v5, v13

    move-object v14, v15

    move-object/from16 v15, v42

    move-object/from16 v13, v73

    move-wide/from16 v41, v75

    goto/16 :goto_1

    :cond_6d
    div-double/2addr v0, v13

    move/from16 v4, v29

    const/4 v7, 0x0

    :goto_4e
    if-ge v7, v4, :cond_72

    move-wide/from16 v68, v8

    move-object/from16 v8, p0

    .line 167
    iget-object v9, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    iget-object v9, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    cmpl-double v9, v48, v50

    if-nez v9, :cond_6e

    move-object/from16 v9, v73

    .line 168
    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    goto :goto_4f

    :cond_6e
    move-object/from16 v9, v73

    move-wide/from16 v48, v0

    :goto_4f
    move-wide/from16 v50, v2

    .line 169
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    move-wide/from16 v60, v5

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    cmpl-double v19, v2, v5

    if-nez v19, :cond_6f

    .line 170
    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    neg-double v2, v2

    move-wide/from16 v48, v2

    :cond_6f
    cmpg-double v2, v48, v0

    if-gez v2, :cond_71

    .line 171
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v3, v7, v7

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    const/4 v5, 0x0

    :goto_50
    if-ge v5, v10, :cond_70

    .line 172
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v5, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v64

    .line 173
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v66

    mul-double v64, v64, v64

    mul-double v66, v66, v64

    add-double v2, v2, v66

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_70
    mul-double v2, v2, v62

    mul-double v2, v2, v13

    add-double v48, v48, v2

    cmpg-double v2, v48, v0

    if-gez v2, :cond_71

    goto :goto_51

    :cond_71
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v73, v9

    move-wide/from16 v2, v50

    move-wide/from16 v5, v60

    move-wide/from16 v8, v68

    goto :goto_4e

    :cond_72
    move-wide/from16 v50, v2

    move-wide/from16 v60, v5

    move-wide/from16 v68, v8

    move-object/from16 v9, v73

    move-object/from16 v8, p0

    :goto_51
    move-wide/from16 v48, v11

    move-wide v5, v13

    move-object v14, v15

    move/from16 v12, v28

    move-object/from16 v15, v42

    move-wide/from16 v1, v46

    move-wide/from16 v46, v60

    move-wide/from16 v41, v75

    move/from16 v11, v100

    const/16 v0, 0x2a8

    const/16 v7, 0x3c

    move-object v13, v9

    goto/16 :goto_64

    :cond_73
    move-wide/from16 v68, v8

    move/from16 v4, v29

    move-wide/from16 v60, v46

    move-wide/from16 v11, v48

    move-object/from16 v9, v73

    move-object/from16 v8, p0

    move-wide/from16 v46, v1

    add-int/lit8 v0, v19, 0x1

    .line 174
    :goto_52
    invoke-static/range {v25 .. v25}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v5, v5, v30

    cmpg-double v3, v1, v5

    if-gtz v3, :cond_83

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double v5, v5, v30

    const/4 v7, 0x0

    const-wide/16 v46, 0x0

    :goto_53
    const-wide/high16 v48, -0x4020000000000000L    # -0.5

    if-ge v7, v10, :cond_77

    .line 175
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    add-double v46, v46, v64

    mul-double v48, v48, v30

    move-wide/from16 v64, v1

    move-wide/from16 v1, v48

    const/4 v3, 0x0

    :goto_54
    if-ge v3, v4, :cond_74

    move-wide/from16 v66, v11

    .line 176
    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v7, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    move-wide/from16 v98, v13

    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v1, v11

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, v66

    move-wide/from16 v13, v98

    goto :goto_54

    :cond_74
    move-wide/from16 v66, v11

    move-wide/from16 v98, v13

    .line 177
    invoke-virtual {v15, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v11, v1, v62

    sub-double v11, v5, v11

    const/4 v3, 0x0

    :goto_55
    if-ge v3, v4, :cond_76

    .line 178
    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v7, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-virtual {v9, v3, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 179
    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v7, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    mul-double v48, v48, v1

    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v70

    mul-double v70, v70, v11

    move-wide/from16 v72, v1

    add-double v1, v48, v70

    invoke-virtual {v13, v3, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int v1, v10, v3

    const/4 v2, 0x0

    :goto_56
    if-gt v2, v3, :cond_75

    .line 180
    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v70

    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v70, v70, v77

    add-double v48, v48, v70

    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v70

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v77

    mul-double v70, v70, v77

    move-wide/from16 v77, v11

    add-double v11, v48, v70

    invoke-virtual {v13, v1, v2, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, v77

    goto :goto_56

    :cond_75
    move-wide/from16 v77, v11

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v72

    goto :goto_55

    :cond_76
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, v64

    move-wide/from16 v11, v66

    move-wide/from16 v13, v98

    goto/16 :goto_53

    :cond_77
    move-wide/from16 v64, v1

    move-wide/from16 v66, v11

    move-wide/from16 v98, v13

    move/from16 v1, v100

    const/4 v7, 0x0

    :goto_57
    if-ge v7, v1, :cond_7e

    const-wide/16 v2, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_58
    if-ge v13, v10, :cond_78

    .line 181
    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v13, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v29

    add-double v2, v2, v29

    .line 182
    iget-object v14, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    move/from16 v100, v1

    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v13, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v70

    move-wide/from16 v72, v2

    mul-double v1, v29, v70

    invoke-virtual {v14, v13, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 183
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    add-double/2addr v11, v1

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v72

    move/from16 v1, v100

    goto :goto_58

    :cond_78
    move/from16 v100, v1

    const/4 v1, 0x0

    :goto_59
    if-ge v1, v4, :cond_7b

    mul-double v13, v5, v2

    mul-double v29, v11, v62

    sub-double v13, v13, v29

    move-wide/from16 v29, v2

    .line 184
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v13, v13, v2

    const/4 v2, 0x0

    :goto_5a
    if-ge v2, v10, :cond_79

    .line 185
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v70

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v72

    mul-double v70, v70, v72

    add-double v13, v13, v70

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 186
    :cond_79
    invoke-virtual {v9, v1, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v2, 0x0

    :goto_5b
    if-ge v2, v10, :cond_7a

    .line 187
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v70

    move-wide/from16 v72, v5

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v2, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    mul-double v5, v5, v13

    add-double v5, v70, v5

    invoke-virtual {v3, v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v5, v72

    goto :goto_5b

    :cond_7a
    move-wide/from16 v72, v5

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v29

    goto :goto_59

    :cond_7b
    move-wide/from16 v72, v5

    const/4 v1, 0x0

    :goto_5c
    if-ge v1, v4, :cond_7d

    add-int v2, v1, v10

    .line 188
    invoke-virtual {v9, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    const/4 v3, 0x0

    :goto_5d
    if-gt v3, v1, :cond_7c

    .line 189
    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    mul-double v29, v29, v5

    add-double v12, v12, v29

    invoke-virtual {v11, v2, v3, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_7d
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v5, v72

    move/from16 v1, v100

    goto/16 :goto_57

    :cond_7e
    move/from16 v100, v1

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_5e
    if-ge v7, v4, :cond_81

    mul-double v2, v46, v48

    .line 190
    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v2, v2, v5

    invoke-virtual {v9, v7, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v2, 0x0

    :goto_5f
    if-ge v2, v10, :cond_7f

    .line 191
    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v5, v11

    invoke-virtual {v9, v7, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 192
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double/2addr v5, v11

    invoke-virtual {v3, v2, v7, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_7f
    const/4 v2, 0x0

    :goto_60
    if-gt v2, v7, :cond_80

    .line 193
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v5, v11

    iget-object v11, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v5, v11

    invoke-virtual {v3, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 194
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v5, v10, v2

    add-int v6, v10, v7

    invoke-virtual {v3, v6, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    invoke-virtual {v3, v5, v7, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_80
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_81
    const/4 v7, 0x0

    :goto_61
    if-ge v7, v4, :cond_82

    .line 195
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    add-double/2addr v2, v5

    invoke-virtual {v1, v7, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 196
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v2, v5

    invoke-virtual {v1, v7, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 197
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v2, v5

    invoke-virtual {v1, v7, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 198
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v2, v5

    invoke-virtual {v1, v7, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 199
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v7, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :cond_82
    const-wide/16 v2, 0x0

    move-wide/from16 v30, v2

    goto :goto_62

    :cond_83
    move-wide/from16 v64, v1

    move-wide/from16 v66, v11

    move-wide/from16 v98, v13

    const-wide/16 v2, 0x0

    :goto_62
    if-nez v0, :cond_84

    move/from16 v45, v0

    move-object v13, v9

    move-object v14, v15

    move/from16 v12, v28

    move-object/from16 v15, v42

    move-wide/from16 v46, v60

    move-wide/from16 v1, v64

    move-wide/from16 v48, v66

    move-wide/from16 v41, v75

    move-wide/from16 v5, v98

    move/from16 v11, v100

    const/16 v0, 0xd2

    goto :goto_63

    :cond_84
    move/from16 v45, v0

    move-object v13, v9

    move-object v14, v15

    move/from16 v12, v28

    move-object/from16 v15, v42

    move-wide/from16 v46, v60

    move-wide/from16 v1, v64

    move-wide/from16 v48, v66

    move-wide/from16 v41, v75

    move-wide/from16 v5, v98

    move/from16 v11, v100

    const/16 v0, 0xe6

    :goto_63
    const/16 v7, 0x3c

    :goto_64
    move v9, v4

    move-wide/from16 v3, v68

    goto/16 :goto_1
.end method

.method private static caller(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 3
    aget-object p0, v0, p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prelim([D[D)V
    .locals 43

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    .line 3
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 4
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    .line 5
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v4, v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v4

    add-int/lit8 v10, v1, 0x1

    const/4 v12, 0x0

    :goto_0
    const-wide/16 v13, 0x0

    if-ge v12, v1, :cond_2

    .line 6
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v15, v12, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    .line 7
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    .line 8
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    mul-int v3, v1, v10

    const/4 v6, 0x2

    .line 9
    div-int/2addr v3, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_3

    .line 10
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v7, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 11
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    sub-int v7, v2, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v7, :cond_4

    .line 12
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v3, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v12

    sub-int v15, v12, v1

    add-int/lit8 v6, v12, -0x1

    add-int/lit8 v11, v15, -0x1

    mul-int/lit8 v13, v1, 0x2

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    const/4 v14, 0x1

    if-gt v12, v13, :cond_b

    if-lt v12, v14, :cond_7

    if-gt v12, v1, :cond_7

    move/from16 v26, v15

    .line 14
    iget-wide v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move/from16 v28, v3

    .line 15
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    const-wide/16 v22, 0x0

    cmpl-double v3, v29, v22

    if-nez v3, :cond_6

    neg-double v14, v14

    .line 16
    :cond_6
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v6, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move-wide/from16 v31, v8

    move/from16 v3, v28

    goto/16 :goto_8

    :cond_7
    move/from16 v28, v3

    move/from16 v26, v15

    if-le v12, v1, :cond_a

    .line 17
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v14, v26

    invoke-virtual {v3, v14, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v29

    move v3, v7

    move-wide/from16 v31, v8

    .line 18
    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v7, v7

    .line 19
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    const-wide/16 v22, 0x0

    cmpl-double v9, v33, v22

    if-nez v9, :cond_8

    .line 20
    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v7, v7, v24

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v26, v14

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    goto :goto_7

    :cond_8
    move/from16 v26, v14

    .line 21
    :goto_7
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    cmpl-double v9, v14, v22

    if-nez v9, :cond_9

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    .line 22
    iget-wide v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v14, v14, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v14, v15, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    .line 23
    :cond_9
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v12, v11, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move-wide/from16 v14, v29

    move-wide/from16 v41, v7

    move v7, v3

    move/from16 v3, v28

    move-wide/from16 v28, v4

    move-wide/from16 v4, v41

    goto :goto_9

    :cond_a
    move v3, v7

    move-wide/from16 v31, v8

    move/from16 v3, v28

    const-wide/16 v14, 0x0

    :goto_8
    move-wide/from16 v28, v4

    const-wide/16 v4, 0x0

    goto :goto_9

    :cond_b
    move-wide/from16 v31, v8

    move/from16 v26, v15

    sub-int v3, v12, v10

    .line 24
    div-int/2addr v3, v1

    mul-int v7, v3, v1

    sub-int v7, v12, v7

    sub-int/2addr v7, v1

    add-int/2addr v3, v7

    if-le v3, v1, :cond_c

    sub-int/2addr v3, v1

    move/from16 v41, v7

    move v7, v3

    move/from16 v3, v41

    :cond_c
    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v7, -0x1

    .line 25
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v28, v4

    invoke-virtual {v14, v3, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v14, v12, v8, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 26
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v7, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-virtual {v4, v12, v9, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    const-wide/16 v4, 0x0

    const-wide/16 v14, 0x0

    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-ge v8, v1, :cond_f

    .line 27
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v30, v3

    move-wide/from16 v33, v4

    aget-wide v3, p1, v8

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v37

    move v5, v1

    move/from16 v39, v2

    add-double v1, v35, v37

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aget-wide v3, p2, v8

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    invoke-virtual {v9, v8, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 28
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v9, v1, v3

    if-nez v9, :cond_d

    .line 29
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p1, v8

    invoke-virtual {v1, v8, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 30
    :cond_d
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v9, v1, v3

    if-nez v9, :cond_e

    .line 31
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p2, v8

    invoke-virtual {v1, v8, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_e
    add-int/lit8 v8, v8, 0x1

    move v1, v5

    move/from16 v3, v30

    move-wide/from16 v4, v33

    move/from16 v2, v39

    goto :goto_a

    :cond_f
    move/from16 v39, v2

    move/from16 v30, v3

    move-wide/from16 v33, v4

    move v5, v1

    .line 32
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 33
    iget-boolean v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    neg-double v1, v1

    .line 34
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v3

    .line 35
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v12, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    const/4 v4, 0x0

    .line 36
    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move-wide/from16 v18, v1

    goto :goto_c

    .line 37
    :cond_11
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpg-double v4, v1, v8

    if-gez v4, :cond_12

    .line 38
    iput v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    :cond_12
    :goto_c
    add-int/lit8 v13, v13, 0x1

    if-gt v3, v13, :cond_19

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    const/4 v4, 0x2

    if-lt v3, v4, :cond_14

    if-gt v3, v10, :cond_14

    .line 39
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-double v1, v1, v18

    div-double/2addr v1, v14

    invoke-virtual {v4, v6, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v3, v5

    move/from16 v4, v39

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ge v4, v3, :cond_13

    div-double v1, v16, v14

    .line 40
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v13, v1

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v6, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 41
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v6, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 42
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v2, v4, v6

    mul-double v8, v8, v28

    invoke-virtual {v1, v2, v6, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    :cond_13
    move/from16 v39, v4

    move v13, v5

    move/from16 v14, v30

    move-wide/from16 v5, v31

    const/4 v4, 0x0

    const/4 v9, 0x2

    const-wide/16 v22, 0x0

    goto/16 :goto_10

    :cond_14
    move/from16 v4, v39

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v6, v5, 0x2

    if-lt v3, v6, :cond_18

    add-int/lit8 v3, v26, 0x1

    mul-int v3, v3, v26

    const/4 v6, 0x2

    .line 43
    div-int/2addr v3, v6

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    sub-double v35, v1, v18

    div-double v35, v35, v33

    sub-double v37, v33, v14

    .line 44
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v39

    sub-double v39, v35, v39

    mul-double v39, v39, v24

    div-double v8, v39, v37

    invoke-virtual {v6, v3, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 45
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v8, v8, v33

    mul-double v35, v35, v14

    sub-double v8, v8, v35

    div-double v8, v8, v37

    invoke-virtual {v3, v11, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v8, v14, v33

    const-wide/16 v22, 0x0

    cmpg-double v3, v8, v22

    if-gez v3, :cond_17

    .line 46
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v6, v26

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    cmpg-double v3, v1, v26

    if-gez v3, :cond_16

    .line 47
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v39, v4

    move v13, v5

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v12, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 48
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v6, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 49
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v1, v12, :cond_15

    .line 50
    iput v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 51
    :cond_15
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v2, v33

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 52
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v11, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_e

    :cond_16
    move/from16 v39, v4

    move v13, v5

    goto :goto_d

    :cond_17
    move/from16 v39, v4

    move v13, v5

    move/from16 v6, v26

    :goto_d
    move-wide/from16 v2, v33

    .line 53
    :goto_e
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-double/2addr v14, v2

    neg-double v2, v14

    div-double/2addr v2, v8

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 54
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v6, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    const-wide/high16 v14, -0x4020000000000000L    # -0.5

    div-double v2, v14, v2

    invoke-virtual {v1, v12, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 55
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    sub-double/2addr v2, v14

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 56
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v8

    invoke-virtual {v1, v4, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 57
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v2, v2, v28

    invoke-virtual {v1, v12, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 58
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    sub-double/2addr v2, v8

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_f

    :cond_18
    move/from16 v39, v4

    move v13, v5

    const/4 v4, 0x0

    const-wide/16 v22, 0x0

    :goto_f
    move/from16 v14, v30

    move-wide/from16 v5, v31

    const/4 v9, 0x2

    goto :goto_10

    :cond_19
    move v13, v5

    const/4 v4, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/16 v22, 0x0

    .line 59
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v5, v31

    invoke-virtual {v3, v4, v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 60
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 61
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v8, v5

    move/from16 v14, v30

    invoke-virtual {v3, v14, v11, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 62
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v7, v11, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v14, -0x1

    mul-int v8, v14, v3

    const/4 v9, 0x2

    .line 63
    div-int/2addr v8, v9

    add-int/2addr v8, v7

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    .line 64
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v12, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v3, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double v20, v20, v11

    .line 65
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double v11, v18, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    sub-double v11, v11, v24

    add-double/2addr v11, v1

    div-double v11, v11, v20

    invoke-virtual {v3, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 66
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v1

    move/from16 v2, v39

    if-lt v1, v2, :cond_1a

    return-void

    :cond_1a
    move-wide v8, v5

    move v1, v13

    move v3, v14

    move-wide/from16 v13, v22

    move-wide/from16 v4, v28

    const/4 v6, 0x2

    goto/16 :goto_6
.end method

.method private static printMethod()V
    .locals 0

    return-void
.end method

.method private static printState(I)V
    .locals 0

    return-void
.end method

.method private setup([D[D)V
    .locals 15

    move-object v0, p0

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v1

    .line 3
    array-length v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    new-array v4, v2, [I

    add-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    aput v5, v4, v6

    add-int/lit8 v7, v1, 0x1

    mul-int v5, v5, v7

    .line 4
    div-int/2addr v5, v2

    aput v5, v4, v3

    .line 5
    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    aget v8, v4, v6

    if-lt v5, v8, :cond_2

    aget v8, v4, v3

    if-gt v5, v8, :cond_2

    .line 6
    new-array v4, v1, [D

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 7
    iget-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v8, v8, v4

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    if-ge v6, v1, :cond_0

    .line 8
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v11, p2, v6

    aget-wide v13, p1, v6

    sub-double/2addr v11, v13

    aput-wide v11, v10, v6

    .line 9
    aget-wide v11, v10, v6

    invoke-static {v4, v5, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    cmpg-double v6, v4, v8

    if-gez v6, :cond_1

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v8

    .line 10
    iput-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 11
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v5, v1

    invoke-direct {v4, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 12
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v6, v5, v1

    sub-int/2addr v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 13
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 14
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 15
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 16
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 17
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 18
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 19
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 20
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 21
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 22
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 23
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 24
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v4, v1

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 25
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v1, v1, v7

    div-int/2addr v1, v2

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void

    .line 26
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_INTERPOLATION_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v5, v6, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 27
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4
.end method

.method private trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D
    .locals 81

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v6

    .line 3
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/16 v13, 0x0

    if-ge v9, v6, :cond_3

    .line 4
    invoke-virtual {v2, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 5
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    cmpg-double v8, v15, v19

    if-gtz v8, :cond_0

    .line 6
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    cmpl-double v8, v15, v13

    if-ltz v8, :cond_1

    .line 7
    invoke-virtual {v2, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    cmpl-double v8, v11, v15

    if-ltz v8, :cond_1

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpg-double v8, v11, v13

    if-gtz v8, :cond_1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 9
    invoke-virtual {v2, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v8, v11, v13

    if-eqz v8, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 11
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 12
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v1, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    mul-double v8, p1, p1

    const/16 v12, 0x5a

    const/16 v13, 0x32

    const/16 v14, 0x1e

    const/16 v15, 0x14

    const/16 v11, 0x14

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const-wide/high16 v41, -0x4010000000000000L    # -1.0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, -0x1

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    :goto_2
    const-wide v57, 0x3f1a36e2eb1c432dL    # 1.0E-4

    if-eq v11, v15, :cond_42

    if-eq v11, v14, :cond_41

    const-wide v59, 0x3f847ae147ae147bL    # 0.01

    const-wide/high16 v61, 0x3fe0000000000000L    # 0.5

    if-eq v11, v13, :cond_2a

    if-eq v11, v12, :cond_29

    const/16 v14, 0x64

    if-eq v11, v14, :cond_28

    const/16 v14, 0x78

    if-eq v11, v14, :cond_1e

    const/4 v14, 0x1

    const/16 v15, 0x96

    if-eq v11, v15, :cond_f

    const/16 v15, 0xbe

    if-eq v11, v15, :cond_d

    const/16 v15, 0xd2

    if-ne v11, v15, :cond_c

    .line 13
    invoke-static {v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v11, v6, :cond_6

    const-wide/16 v12, 0x0

    .line 14
    invoke-virtual {v4, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v12, 0x0

    :goto_4
    if-gt v12, v11, :cond_5

    if-ge v12, v11, :cond_4

    .line 15
    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v59

    invoke-virtual {v3, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v61

    mul-double v59, v59, v61

    move-wide/from16 v63, v8

    add-double v8, v57, v59

    invoke-virtual {v4, v11, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_5

    :cond_4
    move-wide/from16 v63, v8

    .line 16
    :goto_5
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v59

    mul-double v57, v57, v59

    add-double v8, v8, v57

    invoke-virtual {v4, v12, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v8, v63

    goto :goto_4

    :cond_5
    move-wide/from16 v63, v8

    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0x5a

    const/16 v13, 0x32

    goto :goto_3

    :cond_6
    move-wide/from16 v63, v8

    .line 17
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_8

    .line 18
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v57, v11, v13

    if-eqz v57, :cond_7

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_7

    .line 19
    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v57

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v9, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v59

    mul-double v57, v57, v59

    add-double v12, v12, v57

    invoke-virtual {v4, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    move-wide/from16 v11, v41

    const-wide/16 v13, 0x0

    cmpl-double v8, v11, v13

    if-eqz v8, :cond_9

    move-wide/from16 v41, v11

    move-wide/from16 v8, v63

    const/16 v11, 0x32

    goto/16 :goto_d

    :cond_9
    move/from16 v8, v29

    move/from16 v9, v40

    if-le v8, v9, :cond_a

    move/from16 v29, v8

    move/from16 v40, v9

    move-wide/from16 v41, v11

    move-wide/from16 v8, v63

    const/16 v11, 0x96

    goto/16 :goto_d

    :cond_a
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v6, :cond_b

    .line 20
    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-virtual {v5, v13, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v13, v13, 0x1

    const/16 v15, 0xd2

    goto :goto_8

    :cond_b
    move/from16 v29, v8

    move/from16 v40, v9

    move-wide/from16 v41, v11

    move-wide/from16 v8, v63

    const/16 v11, 0x78

    goto/16 :goto_d

    .line 21
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "trsbox"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_d
    move-object v3, v2

    move-wide/from16 v73, v41

    :cond_e
    const/16 v7, 0xbe

    goto/16 :goto_10

    :cond_f
    move-wide/from16 v63, v8

    move/from16 v8, v29

    move/from16 v9, v40

    move-wide/from16 v11, v41

    const/16 v13, 0x96

    .line 22
    invoke-static {v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v15, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v65, 0x0

    :goto_9
    if-ge v15, v6, :cond_11

    .line 23
    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    const-wide/16 v21, 0x0

    cmpl-double v42, v67, v21

    if-nez v42, :cond_10

    .line 24
    invoke-virtual {v3, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v40, v40, v67

    .line 25
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v57, v57, v67

    .line 26
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v65, v65, v67

    :cond_10
    add-int/lit8 v15, v15, 0x1

    const/16 v13, 0x96

    goto :goto_9

    :cond_11
    const-wide/high16 v67, 0x4031000000000000L    # 17.0

    mul-double v67, v67, v38

    const-wide v69, 0x4008cccccccccccdL    # 3.1

    add-double v14, v67, v69

    double-to-int v14, v14

    move-wide/from16 v67, v45

    move-wide/from16 v69, v47

    const/4 v13, -0x1

    const/4 v15, 0x0

    move-wide/from16 v46, v43

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    :goto_a
    if-ge v15, v14, :cond_14

    move/from16 v71, v7

    move/from16 v72, v8

    int-to-double v7, v15

    mul-double v7, v7, v38

    move-wide/from16 v73, v11

    int-to-double v11, v14

    div-double v46, v7, v11

    add-double v7, v46, v46

    mul-double v11, v46, v46

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v17

    div-double/2addr v7, v11

    mul-double v11, v46, v65

    sub-double v11, v11, v57

    sub-double v11, v11, v57

    mul-double v11, v11, v46

    add-double v11, v40, v11

    mul-double v75, v46, v34

    sub-double v75, v75, v49

    mul-double v77, v7, v61

    mul-double v77, v77, v11

    sub-double v75, v75, v77

    mul-double v7, v7, v75

    cmpl-double v11, v7, v42

    if-lez v11, :cond_12

    move-wide/from16 v42, v7

    move v13, v15

    move-wide/from16 v67, v44

    goto :goto_b

    :cond_12
    add-int/lit8 v11, v13, 0x1

    if-ne v15, v11, :cond_13

    move-wide/from16 v69, v7

    :cond_13
    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v44, v7

    move/from16 v7, v71

    move/from16 v8, v72

    move-wide/from16 v11, v73

    goto :goto_a

    :cond_14
    move/from16 v71, v7

    move/from16 v72, v8

    move-wide/from16 v73, v11

    if-gez v13, :cond_15

    move/from16 v40, v9

    move-wide/from16 v43, v46

    :goto_c
    move-wide/from16 v8, v63

    move-wide/from16 v45, v67

    move-wide/from16 v47, v69

    move/from16 v7, v71

    move/from16 v29, v72

    move-wide/from16 v41, v73

    const/16 v11, 0xbe

    :goto_d
    const/16 v12, 0x5a

    const/16 v13, 0x32

    const/16 v14, 0x1e

    const/16 v15, 0x14

    goto/16 :goto_2

    :cond_15
    if-ge v13, v14, :cond_16

    sub-double v7, v69, v67

    add-double v42, v42, v42

    sub-double v42, v42, v67

    sub-double v42, v42, v69

    div-double v7, v7, v42

    int-to-double v11, v13

    mul-double v7, v7, v61

    add-double/2addr v11, v7

    mul-double v11, v11, v38

    int-to-double v7, v14

    div-double/2addr v11, v7

    move-wide/from16 v43, v11

    goto :goto_e

    :cond_16
    move-wide/from16 v43, v46

    :goto_e
    mul-double v7, v43, v43

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v17, v11, v7

    add-double/2addr v7, v11

    div-double v17, v17, v7

    add-double v45, v43, v43

    div-double v45, v45, v7

    mul-double v65, v65, v43

    sub-double v65, v65, v57

    sub-double v65, v65, v57

    mul-double v65, v65, v43

    add-double v40, v40, v65

    mul-double v7, v43, v34

    sub-double v7, v7, v49

    mul-double v61, v61, v45

    mul-double v61, v61, v40

    sub-double v7, v7, v61

    mul-double v7, v7, v45

    const-wide/16 v21, 0x0

    cmpg-double v15, v7, v21

    if-gtz v15, :cond_17

    move/from16 v40, v9

    goto :goto_c

    :cond_17
    const/4 v15, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v34, 0x0

    :goto_f
    if-ge v15, v6, :cond_19

    .line 27
    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v47, v17, v11

    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    mul-double v47, v47, v57

    add-double v40, v40, v47

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    mul-double v47, v47, v45

    add-double v11, v40, v47

    invoke-virtual {v1, v15, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 28
    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/16 v21, 0x0

    cmpl-double v40, v11, v21

    if-nez v40, :cond_18

    .line 29
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v17

    invoke-virtual {v3, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    mul-double v47, v47, v45

    add-double v2, v40, v47

    invoke-virtual {v11, v15, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 30
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v2, v2, v11

    add-double v34, v34, v2

    .line 31
    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, v2

    add-double v30, v30, v2

    .line 32
    :cond_18
    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, v17

    invoke-virtual {v4, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v45

    add-double/2addr v2, v11

    invoke-virtual {v5, v15, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto :goto_f

    :cond_19
    add-double v36, v36, v7

    move/from16 v2, v51

    if-ltz v2, :cond_1a

    if-ne v13, v14, :cond_1a

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p4

    move-wide/from16 v11, v52

    .line 33
    invoke-virtual {v3, v2, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v51, v2

    move-object v2, v3

    move/from16 v40, v9

    move-wide/from16 v8, v63

    move-wide/from16 v45, v67

    move-wide/from16 v47, v69

    move/from16 v7, v71

    move/from16 v29, v72

    move-wide/from16 v41, v73

    const/16 v11, 0x64

    goto/16 :goto_12

    :cond_1a
    move-object/from16 v3, p4

    move-wide/from16 v11, v52

    mul-double v59, v59, v36

    cmpl-double v13, v7, v59

    if-lez v13, :cond_e

    move/from16 v51, v2

    move-object v2, v3

    move/from16 v40, v9

    move-wide/from16 v52, v11

    move-wide/from16 v8, v63

    move-wide/from16 v45, v67

    move-wide/from16 v47, v69

    move/from16 v7, v71

    move/from16 v29, v72

    move-wide/from16 v41, v73

    const/16 v11, 0x78

    goto/16 :goto_12

    .line 34
    :goto_10
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    :goto_11
    if-ge v5, v6, :cond_1d

    .line 35
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    add-double/2addr v1, v7

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 36
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-virtual {v4, v5, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 37
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v4, v1, v7

    if-nez v4, :cond_1b

    .line 38
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v1, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 39
    :cond_1b
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v1, v7

    if-nez v4, :cond_1c

    .line 40
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v1, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 41
    :cond_1c
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v1, v5, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 42
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double v1, v1, v1

    add-double/2addr v13, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1d
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v8, 0x0

    aput-wide v13, v1, v8

    const/4 v2, 0x1

    aput-wide v73, v1, v2

    return-object v1

    :cond_1e
    move-object v3, v2

    move/from16 v71, v7

    move-wide/from16 v63, v8

    move/from16 v72, v29

    move/from16 v9, v40

    move-wide/from16 v73, v41

    move/from16 v2, v51

    move-wide/from16 v11, v52

    const/16 v7, 0xbe

    const/4 v8, 0x0

    const/16 v13, 0x78

    .line 43
    invoke-static {v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    add-int/lit8 v14, v72, 0x1

    mul-double v40, v30, v32

    mul-double v51, v34, v34

    sub-double v40, v40, v51

    mul-double v57, v57, v36

    mul-double v57, v57, v36

    cmpg-double v15, v40, v57

    if-gtz v15, :cond_1f

    move/from16 v51, v2

    move-object v2, v3

    move/from16 v40, v9

    move-wide/from16 v52, v11

    move/from16 v29, v14

    move-wide/from16 v8, v63

    move/from16 v7, v71

    move-wide/from16 v41, v73

    const/16 v11, 0xbe

    :goto_12
    const/16 v12, 0x5a

    const/16 v13, 0x32

    const/16 v14, 0x1e

    const/16 v15, 0x14

    move-object/from16 v3, p5

    goto/16 :goto_2

    .line 44
    :cond_1f
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v6, :cond_21

    .line 45
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    move v15, v14

    const-wide/16 v13, 0x0

    cmpl-double v21, v38, v13

    if-nez v21, :cond_20

    .line 46
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v13, v13, v34

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    mul-double v38, v38, v32

    sub-double v13, v13, v38

    div-double/2addr v13, v7

    move-object/from16 v5, p5

    invoke-virtual {v5, v2, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v13, 0x0

    goto :goto_14

    :cond_20
    move-object/from16 v5, p5

    .line 47
    invoke-virtual {v5, v2, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_14
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, p7

    move v14, v15

    const/16 v13, 0x78

    goto :goto_13

    :cond_21
    move-object/from16 v5, p5

    move v15, v14

    const-wide/16 v13, 0x0

    neg-double v7, v7

    move-wide/from16 v52, v11

    const/4 v2, 0x0

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    const/16 v51, -0x1

    :goto_15
    if-ge v2, v6, :cond_27

    .line 48
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v40, v11, v13

    if-nez v40, :cond_25

    .line 49
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    add-double/2addr v11, v13

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v11, v13

    .line 50
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    move-wide/from16 v40, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v13, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v13, v7

    const-wide/16 v7, 0x0

    cmpg-double v21, v11, v7

    if-gtz v21, :cond_22

    add-int/lit8 v10, v10, 0x1

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 51
    invoke-virtual {v3, v2, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_17

    :cond_22
    cmpg-double v42, v13, v7

    if-gtz v42, :cond_23

    add-int/lit8 v10, v10, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 52
    invoke-virtual {v3, v2, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_17

    .line 53
    :cond_23
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    .line 54
    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v49

    mul-double v7, v7, v7

    mul-double v49, v49, v49

    add-double v7, v7, v49

    move/from16 v42, v9

    .line 55
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v49

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v49, v49, v57

    mul-double v49, v49, v49

    sub-double v49, v7, v49

    const-wide/16 v21, 0x0

    cmpl-double v9, v49, v21

    if-lez v9, :cond_24

    .line 56
    invoke-static/range {v49 .. v50}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v49

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v49, v49, v57

    mul-double v57, v38, v49

    cmpl-double v9, v57, v11

    if-lez v9, :cond_24

    div-double v38, v11, v49

    move/from16 v51, v2

    const-wide/high16 v52, -0x4010000000000000L    # -1.0

    .line 57
    :cond_24
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v49

    sub-double v11, v11, v49

    mul-double v11, v11, v11

    sub-double/2addr v7, v11

    const-wide/16 v11, 0x0

    cmpl-double v9, v7, v11

    if-lez v9, :cond_26

    .line 58
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    add-double/2addr v7, v11

    mul-double v11, v38, v7

    cmpl-double v9, v11, v13

    if-lez v9, :cond_26

    div-double/2addr v13, v7

    move/from16 v51, v2

    move-wide/from16 v38, v13

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    goto :goto_16

    :cond_25
    move-wide/from16 v40, v7

    move/from16 v42, v9

    :cond_26
    :goto_16
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v7, v40

    move/from16 v9, v42

    const-wide/16 v13, 0x0

    goto/16 :goto_15

    :cond_27
    move-wide/from16 v40, v7

    :goto_17
    move/from16 v42, v9

    move-object v2, v3

    move-object v3, v5

    move/from16 v29, v15

    move-wide/from16 v49, v40

    move/from16 v40, v42

    move-wide/from16 v8, v63

    move/from16 v7, v71

    move-wide/from16 v41, v73

    const/16 v11, 0xd2

    goto/16 :goto_19

    :cond_28
    move-object v5, v3

    move/from16 v71, v7

    move-wide/from16 v63, v8

    move/from16 v72, v29

    move-wide/from16 v73, v41

    move-object v3, v2

    move/from16 v42, v40

    move/from16 v2, v51

    move v9, v2

    move-wide/from16 v51, v52

    move/from16 v7, v54

    move/from16 v40, v72

    const/16 v8, 0x5a

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v15, -0x1

    const/16 v16, 0x64

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_24

    :cond_29
    move-object v5, v3

    move/from16 v71, v7

    move-wide/from16 v63, v8

    move/from16 v72, v29

    move/from16 v42, v40

    move-object v3, v2

    move/from16 v2, v51

    move v9, v2

    move-wide/from16 v51, v52

    move/from16 v7, v54

    const/16 v8, 0x5a

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v15, -0x1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_23

    :cond_2a
    move-object v5, v3

    move/from16 v71, v7

    move-wide/from16 v63, v8

    move/from16 v72, v29

    move-wide/from16 v73, v41

    move-wide/from16 v11, v52

    const/16 v7, 0x32

    move-object v3, v2

    move/from16 v42, v40

    move/from16 v2, v51

    .line 59
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v51, v63

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v40, 0x0

    :goto_18
    if-ge v8, v6, :cond_2c

    .line 60
    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    const-wide/16 v21, 0x0

    cmpl-double v9, v57, v21

    if-nez v9, :cond_2b

    .line 61
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    mul-double v57, v57, v57

    sub-double v51, v51, v57

    .line 62
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v57, v57, v65

    add-double v13, v13, v57

    .line 63
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v57, v57, v65

    add-double v40, v40, v57

    :cond_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_2c
    const-wide/16 v8, 0x0

    cmpg-double v15, v51, v8

    if-gtz v15, :cond_2d

    move/from16 v51, v2

    move-object v2, v3

    move-object v3, v5

    move-wide/from16 v52, v11

    move/from16 v40, v42

    move-wide/from16 v8, v63

    move/from16 v7, v71

    move/from16 v29, v72

    move-wide/from16 v41, v73

    const/16 v11, 0x5a

    :goto_19
    const/16 v12, 0x5a

    const/16 v13, 0x32

    const/16 v14, 0x1e

    const/16 v15, 0x14

    goto/16 :goto_2e

    :cond_2d
    mul-double v21, v25, v51

    mul-double v57, v13, v13

    add-double v21, v21, v57

    .line 64
    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v21

    cmpg-double v2, v13, v8

    if-gez v2, :cond_2e

    sub-double v21, v21, v13

    div-double v21, v21, v25

    goto :goto_1a

    :cond_2e
    add-double v21, v21, v13

    div-double v21, v51, v21

    :goto_1a
    move-wide/from16 v13, v21

    cmpl-double v2, v40, v8

    if-lez v2, :cond_2f

    div-double v7, v30, v40

    .line 65
    invoke-static {v13, v14, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    goto :goto_1b

    :cond_2f
    move-wide v7, v13

    :goto_1b
    const/4 v2, 0x0

    const/4 v9, -0x1

    :goto_1c
    if-ge v2, v6, :cond_32

    .line 66
    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    const-wide/16 v21, 0x0

    cmpl-double v15, v51, v21

    if-eqz v15, :cond_31

    .line 67
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    add-double v51, v51, v57

    .line 68
    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    cmpl-double v15, v57, v21

    if-lez v15, :cond_30

    .line 69
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v57, v57, v51

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    goto :goto_1d

    .line 70
    :cond_30
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v57, v57, v51

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    :goto_1d
    div-double v57, v57, v51

    cmpg-double v15, v57, v7

    if-gez v15, :cond_31

    move v9, v2

    move-wide/from16 v7, v57

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_32
    const-wide/16 v21, 0x0

    cmpl-double v2, v7, v21

    if-lez v2, :cond_37

    add-int/lit8 v2, v72, 0x1

    move-wide/from16 v51, v11

    div-double v11, v40, v25

    const/4 v15, -0x1

    if-ne v9, v15, :cond_33

    cmpl-double v24, v11, v21

    if-lez v24, :cond_33

    move-wide/from16 v57, v13

    move-wide/from16 v13, v73

    .line 71
    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpl-double v24, v13, v19

    if-nez v24, :cond_34

    move-wide v13, v11

    goto :goto_1e

    :cond_33
    move-wide/from16 v57, v13

    move-wide/from16 v13, v73

    :cond_34
    :goto_1e
    const/4 v11, 0x0

    const-wide/16 v55, 0x0

    :goto_1f
    if-ge v11, v6, :cond_36

    .line 72
    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v67, v67, v7

    move-wide/from16 v69, v13

    add-double v12, v65, v67

    invoke-virtual {v1, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 73
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    const-wide/16 v21, 0x0

    cmpl-double v14, v12, v21

    if-nez v14, :cond_35

    .line 74
    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    mul-double v12, v12, v12

    add-double v55, v55, v12

    .line 75
    :cond_35
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v65, v65, v7

    add-double v13, v13, v65

    invoke-virtual {v12, v11, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v13, v69

    goto :goto_1f

    :cond_36
    move-wide/from16 v69, v13

    mul-double v61, v61, v7

    mul-double v61, v61, v40

    sub-double v11, v30, v61

    mul-double v11, v11, v7

    const-wide/16 v13, 0x0

    .line 76
    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v21

    add-double v36, v36, v21

    move-wide v11, v13

    move-wide/from16 v13, v21

    move-wide/from16 v79, v30

    move-wide/from16 v30, v55

    move-wide/from16 v55, v79

    goto :goto_20

    :cond_37
    move-wide/from16 v51, v11

    move-wide/from16 v57, v13

    move-wide/from16 v11, v21

    move-wide/from16 v13, v73

    const/4 v15, -0x1

    move-wide/from16 v69, v13

    move/from16 v2, v72

    move-wide v13, v11

    :goto_20
    if-ltz v9, :cond_3a

    add-int/lit8 v10, v10, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 77
    invoke-virtual {v3, v9, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 78
    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpg-double v17, v13, v11

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    if-gez v17, :cond_38

    .line 79
    invoke-virtual {v3, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 80
    :cond_38
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v7

    sub-double v7, v63, v7

    cmpg-double v19, v7, v11

    if-gtz v19, :cond_39

    move/from16 v29, v2

    move-object v2, v3

    move-object v3, v5

    move/from16 v40, v42

    move-wide/from16 v52, v51

    move-wide/from16 v41, v69

    const/16 v11, 0xbe

    goto :goto_21

    :cond_39
    move/from16 v29, v2

    move-object v2, v3

    move-object v3, v5

    move/from16 v40, v42

    move-wide/from16 v52, v51

    move-wide/from16 v41, v69

    const/16 v11, 0x14

    :goto_21
    const/16 v12, 0x5a

    const/16 v13, 0x32

    const/16 v14, 0x1e

    const/16 v15, 0x14

    move-object/from16 v5, p7

    move/from16 v51, v9

    move-wide v8, v7

    move/from16 v7, v71

    goto/16 :goto_2

    :cond_3a
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v7, v57

    move/from16 v7, v54

    if-gez v19, :cond_3d

    if-ne v2, v7, :cond_3b

    :goto_22
    move/from16 v29, v2

    move-object v2, v3

    move-object v3, v5

    move/from16 v54, v7

    move/from16 v40, v42

    move-wide/from16 v52, v51

    move-wide/from16 v41, v69

    move/from16 v7, v71

    goto :goto_25

    :cond_3b
    mul-double v59, v59, v36

    cmpg-double v8, v13, v59

    if-gtz v8, :cond_3c

    goto :goto_22

    :cond_3c
    div-double v27, v30, v55

    move/from16 v29, v2

    move-object v2, v3

    move-object v3, v5

    move/from16 v54, v7

    move/from16 v40, v42

    move-wide/from16 v52, v51

    move-wide/from16 v41, v69

    move/from16 v7, v71

    const/16 v11, 0x1e

    goto :goto_26

    :cond_3d
    move/from16 v72, v2

    const/16 v8, 0x5a

    .line 81
    :goto_23
    invoke-static {v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v40, v72

    const/16 v16, 0x64

    const-wide/16 v73, 0x0

    .line 82
    :goto_24
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    add-int/lit8 v2, v6, -0x1

    if-lt v10, v2, :cond_3e

    move-object v2, v3

    move-object v3, v5

    move/from16 v54, v7

    move/from16 v29, v40

    move/from16 v40, v42

    move-wide/from16 v52, v51

    move/from16 v7, v71

    move-wide/from16 v41, v73

    :goto_25
    const/16 v11, 0xbe

    :goto_26
    const/16 v12, 0x5a

    const/16 v13, 0x32

    const/16 v14, 0x1e

    const/16 v15, 0x14

    move-object/from16 v5, p7

    move/from16 v51, v9

    move-wide/from16 v8, v63

    goto/16 :goto_2

    :cond_3e
    const/4 v2, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    :goto_27
    if-ge v2, v6, :cond_40

    .line 83
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    const-wide/16 v19, 0x0

    cmpl-double v23, v13, v19

    if-nez v23, :cond_3f

    .line 84
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v13, v13, v13

    add-double v32, v32, v13

    .line 85
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v13, v13, v19

    add-double v34, v34, v13

    .line 86
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double v13, v13, v13

    add-double v30, v30, v13

    .line 87
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v5, v2, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_28

    :cond_3f
    const-wide/16 v13, 0x0

    .line 88
    invoke-virtual {v5, v2, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_40
    move-object v2, v3

    move-object v3, v5

    move/from16 v54, v7

    move/from16 v29, v40

    move-wide/from16 v52, v51

    move/from16 v7, v71

    move-wide/from16 v41, v73

    const/16 v11, 0xd2

    goto :goto_26

    :cond_41
    move-object v5, v3

    move/from16 v71, v7

    move-wide/from16 v63, v8

    move/from16 v72, v29

    move-wide/from16 v13, v41

    move/from16 v7, v54

    const/16 v8, 0x5a

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v15, -0x1

    const/16 v16, 0x64

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v3, v2

    move/from16 v42, v40

    move/from16 v2, v51

    move-wide/from16 v51, v52

    const/16 v9, 0x14

    const/16 v19, 0x1e

    goto :goto_29

    :cond_42
    move-object v5, v3

    move/from16 v71, v7

    move-wide/from16 v63, v8

    move/from16 v72, v29

    move-wide/from16 v13, v41

    move/from16 v7, v54

    const/16 v8, 0x5a

    const/16 v9, 0x14

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v15, -0x1

    const/16 v16, 0x64

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v3, v2

    move/from16 v42, v40

    move/from16 v2, v51

    move-wide/from16 v51, v52

    .line 89
    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/16 v19, 0x1e

    const-wide/16 v27, 0x0

    .line 90
    :goto_29
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v8, 0x0

    const-wide/16 v25, 0x0

    :goto_2a
    if-ge v8, v6, :cond_45

    .line 91
    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    const-wide/16 v11, 0x0

    cmpl-double v20, v40, v11

    if-eqz v20, :cond_43

    .line 92
    invoke-virtual {v5, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2b

    :cond_43
    cmpl-double v20, v27, v11

    if-nez v20, :cond_44

    .line 93
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v5, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2b

    .line 94
    :cond_44
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v27

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    sub-double v11, v11, v40

    invoke-virtual {v5, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 95
    :goto_2b
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    mul-double v11, v11, v11

    add-double v25, v25, v11

    add-int/lit8 v8, v8, 0x1

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    goto :goto_2a

    :cond_45
    const-wide/16 v11, 0x0

    cmpl-double v8, v25, v11

    if-nez v8, :cond_46

    :goto_2c
    move/from16 v54, v7

    move/from16 v40, v42

    move-wide/from16 v52, v51

    move-wide/from16 v8, v63

    move/from16 v7, v71

    move/from16 v29, v72

    const/16 v11, 0xbe

    :goto_2d
    const/16 v12, 0x5a

    const/16 v15, 0x14

    move/from16 v51, v2

    move-object v2, v3

    move-object v3, v5

    move-wide/from16 v41, v13

    const/16 v13, 0x32

    const/16 v14, 0x1e

    :goto_2e
    move-object/from16 v5, p7

    goto/16 :goto_2

    :cond_46
    cmpl-double v8, v27, v11

    if-nez v8, :cond_47

    add-int v7, v72, v6

    sub-int/2addr v7, v10

    move-wide/from16 v30, v25

    :cond_47
    mul-double v20, v30, v63

    mul-double v57, v57, v36

    mul-double v57, v57, v36

    cmpg-double v8, v20, v57

    if-gtz v8, :cond_48

    goto :goto_2c

    :cond_48
    move/from16 v54, v7

    move/from16 v40, v42

    move-wide/from16 v52, v51

    move-wide/from16 v8, v63

    move/from16 v7, v71

    move/from16 v29, v72

    const/16 v11, 0xd2

    goto :goto_2d
.end method

.method private update(DDI)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 3
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v4, v3, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 4
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v7, v3, v2

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v10, v3, :cond_1

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_0

    .line 5
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v10, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-wide v13, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v11, v11, v13

    :goto_2
    if-ge v5, v4, :cond_3

    .line 6
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    .line 7
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpl-double v10, v13, v11

    if-lez v10, :cond_2

    .line 8
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    .line 9
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    mul-double v13, v13, v13

    mul-double v15, v15, v15

    add-double/2addr v13, v15

    .line 10
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 11
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    div-double/2addr v15, v13

    .line 12
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v17

    div-double v17, v17, v13

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_2

    .line 13
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    mul-double v13, v13, v15

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double v7, v7, v17

    add-double/2addr v13, v7

    .line 14
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    mul-double v21, v21, v15

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    mul-double v23, v23, v17

    move-wide/from16 v25, v11

    sub-double v11, v21, v23

    invoke-virtual {v7, v10, v5, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 15
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v9, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v11, v25

    goto :goto_3

    :cond_2
    move-wide/from16 v25, v11

    .line 16
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v1, v5, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v11, v25

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_4

    .line 17
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double v7, v7, v10

    invoke-virtual {v6, v4, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 19
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    .line 20
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v13

    invoke-virtual {v10, v1, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 21
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    div-double v12, v7, v10

    .line 22
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    div-double/2addr v14, v10

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v3, :cond_5

    .line 23
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v16

    mul-double v16, v16, v12

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v19, v19, v14

    move-wide/from16 v21, v12

    sub-double v12, v16, v19

    const/4 v9, 0x0

    invoke-virtual {v11, v10, v9, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v12, v21

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v2, :cond_8

    add-int v11, v3, v10

    .line 24
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 25
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    mul-double v12, v12, v4

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double v14, v14, v7

    sub-double/2addr v12, v14

    div-double v12, v12, p3

    move-wide/from16 v14, p1

    move/from16 v16, v10

    neg-double v9, v14

    .line 26
    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v9, v9, v19

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v19, v19, v7

    sub-double v9, v9, v19

    div-double v9, v9, p3

    const/4 v1, 0x0

    :goto_7
    if-gt v1, v11, :cond_7

    move/from16 v17, v2

    .line 27
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v19, v4

    move/from16 v4, v16

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v12

    add-double v21, v21, v23

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v9

    move-object/from16 v16, v6

    add-double v5, v21, v23

    invoke-virtual {v2, v1, v4, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    if-lt v1, v3, :cond_6

    .line 28
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v5, v1, v3

    move-wide/from16 v21, v7

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-virtual {v2, v11, v5, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_8

    :cond_6
    move-wide/from16 v21, v7

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v16

    move/from16 v2, v17

    move-wide/from16 v7, v21

    move/from16 v16, v4

    move-wide/from16 v4, v19

    goto :goto_7

    :cond_7
    move/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    move/from16 v4, v16

    move-object/from16 v16, v6

    add-int/lit8 v10, v4, 0x1

    move/from16 v1, p5

    move-wide/from16 v4, v19

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_8
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 4
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->setup([D[D)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    .line 6
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 7
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqa([D[D)D

    move-result-wide v0

    .line 8
    new-instance v2, Lorg/apache/commons/math3/optim/PointValuePair;

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    neg-double v0, v0

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    return-object v2
.end method
