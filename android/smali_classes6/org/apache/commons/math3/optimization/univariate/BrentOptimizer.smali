.class public Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GOLDEN_SECTION:D

.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 2
    sget-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double p5, p1, v0

    if-ltz p5, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p5, p3, v0

    if-lez p5, :cond_0

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 6
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method private best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    if-eqz p3, :cond_3

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double p3, v0, v2

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1

    .line 2
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpl-double p3, v0, v2

    if-ltz p3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 51

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getMin()D

    move-result-wide v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getStartValue()D

    move-result-wide v7

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getMax()D

    move-result-wide v9

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v2

    cmpg-double v11, v5, v9

    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v49, v5

    move-wide v5, v9

    move-wide/from16 v9, v49

    .line 6
    :goto_1
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->computeObjectiveValue(D)D

    move-result-wide v11

    if-nez v1, :cond_2

    neg-double v11, v11

    :cond_2
    const/4 v13, 0x0

    .line 7
    new-instance v14, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v1, :cond_3

    move-wide v3, v11

    goto :goto_2

    :cond_3
    neg-double v3, v11

    :goto_2
    invoke-direct {v14, v7, v8, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    move-wide/from16 v16, v11

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-object v15, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v22

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-wide v11, v7

    move-wide v13, v9

    move-wide v9, v11

    :goto_3
    add-double v29, v5, v13

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    mul-double v29, v29, v31

    .line 8
    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    mul-double v3, v3, v35

    move/from16 v35, v1

    move-object/from16 v36, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    add-double/2addr v3, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v37, v3, v1

    sub-double v39, v7, v29

    .line 9
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    sub-double v41, v13, v5

    mul-double v41, v41, v31

    sub-double v41, v37, v41

    cmpg-double v43, v39, v41

    if-gtz v43, :cond_4

    const/16 v39, 0x1

    goto :goto_4

    :cond_4
    const/16 v39, 0x0

    :goto_4
    if-nez v39, :cond_19

    .line 10
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    cmpl-double v15, v39, v3

    if-lez v15, :cond_b

    sub-double v39, v7, v9

    sub-double v41, v16, v18

    mul-double v41, v41, v39

    sub-double v43, v7, v11

    sub-double v45, v16, v20

    mul-double v45, v45, v43

    mul-double v43, v43, v45

    mul-double v39, v39, v41

    move-wide/from16 v47, v11

    sub-double v11, v43, v39

    sub-double v45, v45, v41

    mul-double v1, v1, v45

    const-wide/16 v33, 0x0

    cmpl-double v15, v1, v33

    if-lez v15, :cond_5

    neg-double v11, v11

    goto :goto_5

    :cond_5
    neg-double v1, v1

    :goto_5
    sub-double v39, v5, v7

    mul-double v41, v1, v39

    cmpl-double v15, v11, v41

    if-lez v15, :cond_9

    sub-double v41, v13, v7

    mul-double v41, v41, v1

    cmpg-double v15, v11, v41

    if-gez v15, :cond_9

    .line 11
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    mul-double v31, v31, v1

    mul-double v31, v31, v24

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    cmpg-double v15, v41, v24

    if-gez v15, :cond_9

    div-double/2addr v11, v1

    add-double v1, v7, v11

    sub-double v24, v1, v5

    cmpg-double v15, v24, v37

    if-ltz v15, :cond_7

    sub-double v1, v13, v1

    cmpg-double v15, v1, v37

    if-gez v15, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v24, v26

    goto :goto_8

    :cond_7
    :goto_6
    cmpg-double v1, v7, v29

    if-gtz v1, :cond_8

    move-wide/from16 v24, v26

    move-wide/from16 v26, v3

    goto :goto_9

    :cond_8
    neg-double v1, v3

    move-wide/from16 v24, v26

    move-wide/from16 v26, v1

    goto :goto_9

    :cond_9
    cmpg-double v1, v7, v29

    if-gez v1, :cond_a

    sub-double v39, v13, v7

    .line 12
    :cond_a
    sget-wide v1, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v1, v1, v39

    move-wide/from16 v26, v1

    move-wide/from16 v24, v39

    goto :goto_9

    :cond_b
    move-wide/from16 v47, v11

    cmpg-double v1, v7, v29

    if-gez v1, :cond_c

    sub-double v1, v13, v7

    goto :goto_7

    :cond_c
    sub-double v1, v5, v7

    .line 13
    :goto_7
    sget-wide v11, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v11, v11, v1

    move-wide/from16 v24, v1

    :goto_8
    move-wide/from16 v26, v11

    .line 14
    :goto_9
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpg-double v11, v1, v3

    if-gez v11, :cond_e

    const-wide/16 v1, 0x0

    cmpl-double v11, v26, v1

    if-ltz v11, :cond_d

    add-double/2addr v3, v7

    goto :goto_a

    :cond_d
    sub-double v3, v7, v3

    goto :goto_a

    :cond_e
    const-wide/16 v1, 0x0

    add-double v3, v7, v26

    .line 15
    :goto_a
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->computeObjectiveValue(D)D

    move-result-wide v11

    if-nez v35, :cond_f

    neg-double v11, v11

    .line 16
    :cond_f
    new-instance v15, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v35, :cond_10

    move-wide v1, v11

    goto :goto_b

    :cond_10
    neg-double v1, v11

    :goto_b
    invoke-direct {v15, v3, v4, v1, v2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    move-wide/from16 v29, v5

    move-object/from16 v2, v22

    move/from16 v1, v35

    .line 17
    invoke-direct {v0, v2, v15, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v5

    move-object/from16 v6, v23

    invoke-direct {v0, v6, v5, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v23

    move/from16 v5, v28

    move-object/from16 v6, v36

    if-eqz v36, :cond_11

    .line 18
    invoke-interface {v6, v5, v2, v15}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    return-object v23

    :cond_11
    cmpg-double v22, v11, v16

    if-gtz v22, :cond_13

    cmpg-double v18, v3, v7

    if-gez v18, :cond_12

    move-wide v13, v7

    goto :goto_c

    :cond_12
    move-wide/from16 v29, v7

    :goto_c
    move-wide/from16 v18, v20

    move-wide/from16 v20, v16

    move-wide/from16 v16, v11

    move-wide v11, v9

    move-wide v9, v7

    move-wide v7, v3

    goto :goto_10

    :cond_13
    cmpg-double v22, v3, v7

    if-gez v22, :cond_14

    move-wide/from16 v29, v3

    goto :goto_d

    :cond_14
    move-wide v13, v3

    :goto_d
    cmpg-double v22, v11, v20

    if-lez v22, :cond_18

    .line 19
    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v22

    if-eqz v22, :cond_15

    goto :goto_f

    :cond_15
    cmpg-double v22, v11, v18

    move-wide/from16 v31, v3

    if-lez v22, :cond_17

    move-wide/from16 v3, v47

    .line 20
    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v22

    if-nez v22, :cond_17

    invoke-static {v3, v4, v9, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v22

    if-eqz v22, :cond_16

    goto :goto_e

    :cond_16
    move-wide v11, v3

    goto :goto_10

    :cond_17
    :goto_e
    move-wide/from16 v18, v11

    move-wide/from16 v11, v31

    goto :goto_10

    :cond_18
    :goto_f
    move-wide/from16 v31, v3

    move-wide/from16 v18, v20

    move-wide/from16 v20, v11

    move-wide v11, v9

    move-wide/from16 v9, v31

    :goto_10
    add-int/lit8 v28, v5, 0x1

    move-object/from16 v22, v15

    move-object v15, v2

    move-object v2, v6

    move-wide/from16 v5, v29

    goto/16 :goto_3

    :cond_19
    move-object/from16 v2, v22

    move-object/from16 v6, v23

    move/from16 v1, v35

    .line 21
    invoke-direct {v0, v15, v2, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v2

    invoke-direct {v0, v6, v2, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v1

    return-object v1
.end method
