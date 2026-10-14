.class public Lorg/apache/commons/math3/stat/inference/GTest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private entropy([J)D
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v3, 0x0

    .line 9
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    .line 10
    aget-wide v6, p1, v3

    long-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 12
    aget-wide v6, p1, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 13
    aget-wide v6, p1, v0

    long-to-double v6, v6

    div-double/2addr v6, v4

    .line 14
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v1, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    neg-double v0, v1

    return-wide v0
.end method

.method private entropy([[J)D
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    .line 1
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_1

    const/4 v6, 0x0

    .line 2
    :goto_1
    aget-object v7, p1, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 3
    aget-object v7, p1, v3

    aget-wide v8, v7, v6

    long-to-double v7, v8

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_2
    array-length v6, p1

    if-ge v3, v6, :cond_4

    const/4 v6, 0x0

    .line 5
    :goto_3
    aget-object v7, p1, v3

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 6
    aget-object v7, p1, v3

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 7
    aget-object v7, p1, v3

    aget-wide v8, v7, v6

    long-to-double v7, v8

    div-double/2addr v7, v4

    .line 8
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v0, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    neg-double v0, v0

    return-wide v0
.end method


# virtual methods
.method public g([D[J)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 2
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_4

    .line 3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 4
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    move-wide v8, v6

    const/4 v5, 0x0

    .line 5
    :goto_0
    array-length v10, v1

    if-ge v5, v10, :cond_0

    .line 6
    aget-wide v10, v0, v5

    add-double/2addr v6, v10

    .line 7
    aget-wide v10, v1, v5

    long-to-double v10, v10

    add-double/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v12, v6, v8

    .line 8
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v5, v12, v14

    if-lez v5, :cond_1

    div-double v10, v8, v6

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 9
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_3

    if-eqz v5, :cond_2

    .line 10
    aget-wide v6, v1, v2

    long-to-double v6, v6

    aget-wide v8, v0, v2

    mul-double v8, v8, v10

    goto :goto_2

    :cond_2
    aget-wide v6, v1, v2

    long-to-double v6, v6

    aget-wide v8, v0, v2

    :goto_2
    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    .line 11
    aget-wide v8, v1, v2

    long-to-double v8, v8

    mul-double v8, v8, v6

    add-double/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v0

    return-wide v3

    .line 12
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 13
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public gDataSetsComparison([J[J)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 2
    array-length v3, v1

    array-length v5, v2

    if-ne v3, v5, :cond_4

    .line 3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 4
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 5
    array-length v3, v1

    new-array v3, v3, [J

    .line 6
    array-length v5, v1

    new-array v6, v4, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    const/4 v5, 0x0

    aput v4, v6, v5

    const-class v8, J

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    const-wide/16 v8, 0x0

    move-wide v11, v8

    move-wide v13, v11

    const/4 v10, 0x0

    .line 7
    :goto_0
    array-length v15, v1

    if-ge v10, v15, :cond_2

    .line 8
    aget-wide v15, v1, v10

    cmp-long v17, v15, v8

    if-nez v17, :cond_1

    aget-wide v15, v2, v10

    cmp-long v17, v15, v8

    if-eqz v17, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 10
    :cond_1
    :goto_1
    aget-wide v15, v1, v10

    add-long/2addr v11, v15

    .line 11
    aget-wide v15, v2, v10

    add-long/2addr v13, v15

    .line 12
    aget-wide v15, v1, v10

    aget-wide v17, v2, v10

    add-long v15, v15, v17

    aput-wide v15, v3, v10

    .line 13
    aget-object v15, v6, v5

    aget-wide v16, v1, v10

    aput-wide v16, v15, v10

    .line 14
    aget-object v15, v6, v7

    aget-wide v16, v2, v10

    aput-wide v16, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    cmp-long v1, v11, v8

    if-eqz v1, :cond_3

    cmp-long v1, v13, v8

    if-eqz v1, :cond_3

    new-array v1, v4, [J

    aput-wide v11, v1, v5

    aput-wide v13, v1, v7

    long-to-double v4, v11

    long-to-double v7, v13

    add-double/2addr v4, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v7

    .line 15
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v1

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v7

    add-double/2addr v1, v7

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([[J)D

    move-result-wide v6

    sub-double/2addr v1, v6

    mul-double v4, v4, v1

    return-wide v4

    .line 16
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v1

    .line 17
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v2

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 18
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v2, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public gTest([D[J)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    return-wide v3
.end method

.method public gTest([D[JD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpg-double v5, p3, v3

    if-lez v5, :cond_1

    cmpl-double v3, p3, v0

    if-gtz v3, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTest([D[J)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 4
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public gTestDataSetsComparison([J[J)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    return-wide v3
.end method

.method public gTestDataSetsComparison([J[JD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpg-double v5, p3, v3

    if-lez v5, :cond_1

    cmpl-double v3, p3, v0

    if-gtz v3, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestDataSetsComparison([J[J)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 4
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public gTestIntrinsic([D[J)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public rootLogLikelihoodRatio(JJJJ)D
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v3, 0x1

    aput-wide p3, v1, v3

    new-array v0, v0, [J

    aput-wide p5, v0, v2

    aput-wide p7, v0, v3

    .line 1
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, p1

    add-long/2addr p1, p3

    long-to-double p1, p1

    div-double/2addr v2, p1

    long-to-double p1, p5

    add-long/2addr p5, p7

    long-to-double p3, p5

    div-double/2addr p1, p3

    cmpg-double p3, v2, p1

    if-gez p3, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method
