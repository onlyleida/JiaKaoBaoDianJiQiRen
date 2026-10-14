.class public Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ITERATIONS:I = 0x3e8

.field private static final DEFAULT_THRESHOLD:D = 1.0E-5


# instance fields
.field private final data:[[D

.field private fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

.field private logLikelihood:D


# direct methods
.method public constructor <init>([[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 4
    array-length v0, p1

    const/4 v2, 0x0

    aget-object v3, p1, v2

    array-length v3, v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v1

    aput v0, v5, v2

    const-class v0, D

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 6
    aget-object v3, p1, v0

    array-length v3, v3

    aget-object v5, p1, v2

    array-length v5, v5

    if-ne v3, v5, :cond_1

    .line 7
    aget-object v3, p1, v0

    array-length v3, v3

    if-lt v3, v4, :cond_0

    .line 8
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v5, p1, v0

    aget-object v6, p1, v0

    array-length v6, v6

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object p1, p1, v0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, p1, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 10
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v0, p1, v0

    array-length v0, v0

    aget-object p1, p1, v2

    array-length p1, p1

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public static estimate([[DI)Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_6

    const/4 v2, 0x1

    if-lt v1, v3, :cond_5

    .line 2
    array-length v4, v0

    if-gt v1, v4, :cond_4

    .line 3
    array-length v4, v0

    const/4 v5, 0x0

    .line 4
    aget-object v6, v0, v5

    array-length v6, v6

    .line 5
    new-array v7, v4, [Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    .line 6
    new-instance v9, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    aget-object v10, v0, v8

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;-><init>([D)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    int-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v8, v10, v8

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v1, :cond_3

    mul-int v13, v12, v4

    .line 9
    div-int/2addr v13, v1

    add-int/lit8 v12, v12, 0x1

    mul-int v14, v12, v4

    .line 10
    div-int/2addr v14, v1

    sub-int v15, v14, v13

    new-array v10, v3, [I

    aput v6, v10, v2

    aput v15, v10, v5

    .line 11
    const-class v11, D

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 12
    new-array v11, v6, [D

    const/16 v17, 0x0

    :goto_2
    if-ge v13, v14, :cond_2

    :goto_3
    if-ge v5, v6, :cond_1

    .line 13
    aget-object v18, v7, v13

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->getRow()[D

    move-result-object v18

    aget-wide v19, v18, v5

    .line 14
    aget-wide v21, v11, v5

    add-double v21, v21, v19

    aput-wide v21, v11, v5

    .line 15
    aget-object v18, v10, v17

    aput-wide v19, v18, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v17, v17, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    int-to-double v13, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double v13, v15, v13

    .line 16
    invoke-static {v13, v14, v11}, Lorg/apache/commons/math3/util/MathArrays;->scaleInPlace(D[D)V

    .line 17
    new-instance v5, Lorg/apache/commons/math3/stat/correlation/Covariance;

    invoke-direct {v5, v10}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>([[D)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v5

    .line 18
    new-instance v10, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-direct {v10, v11, v5}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>([D[[D)V

    .line 19
    new-instance v5, Lorg/apache/commons/math3/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {v5, v11, v10}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v10, v15

    const/4 v5, 0x0

    goto :goto_1

    .line 20
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v1

    .line 21
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 22
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 23
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/16 v0, 0x3e8

    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 42
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V

    return-void
.end method

.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    const-class v2, D

    const/4 v3, 0x1

    if-lt v1, v3, :cond_e

    const-wide/16 v4, 0x1

    cmpg-double v6, p3, v4

    if-ltz v6, :cond_d

    .line 2
    iget-object v4, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    array-length v5, v4

    const/4 v6, 0x0

    .line 3
    aget-object v4, v4, v6

    array-length v4, v4

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->getComponents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->getComponents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v8}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-virtual {v8}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v8

    array-length v8, v8

    if-ne v8, v4, :cond_c

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 6
    iput-wide v8, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 7
    new-instance v8, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->getComponents()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    iput-object v8, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    add-int/lit8 v13, v10, 0x1

    if-gt v10, v1, :cond_a

    .line 8
    iget-wide v14, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    sub-double v14, v11, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpl-double v10, v14, p3

    if-lez v10, :cond_a

    .line 9
    iget-wide v11, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 10
    iget-object v10, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual {v10}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->getComponents()Ljava/util/List;

    move-result-object v10

    .line 11
    new-array v14, v7, [D

    .line 12
    new-array v15, v7, [Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 13
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    aput-wide v16, v14, v8

    .line 14
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    aput-object v9, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v7, v9, v3

    aput v5, v9, v6

    .line 15
    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 16
    new-array v10, v7, [D

    new-array v1, v8, [I

    aput v4, v1, v3

    aput v7, v1, v6

    .line 17
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const-wide/16 v17, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    .line 18
    iget-object v3, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    iget-object v8, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v8, v8, v6

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->density([D)D

    move-result-wide v20

    .line 19
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v22

    add-double v17, v17, v22

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_2

    .line 20
    aget-object v8, v9, v6

    aget-wide v22, v14, v3

    move-wide/from16 v24, v11

    aget-object v11, v15, v3

    iget-object v12, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->density([D)D

    move-result-wide v11

    mul-double v22, v22, v11

    div-double v22, v22, v20

    aput-wide v22, v8, v3

    .line 21
    aget-wide v11, v10, v3

    aget-object v8, v9, v6

    aget-wide v22, v8, v3

    add-double v11, v11, v22

    aput-wide v11, v10, v3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_1

    .line 22
    aget-object v11, v1, v3

    aget-wide v22, v11, v8

    aget-object v12, v9, v6

    aget-wide v26, v12, v3

    iget-object v12, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v12, v12, v6

    aget-wide v28, v12, v8

    mul-double v26, v26, v28

    add-double v22, v22, v26

    aput-wide v22, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, v24

    goto :goto_3

    :cond_2
    move-wide/from16 v24, v11

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    move-wide/from16 v24, v11

    int-to-double v11, v5

    div-double v14, v17, v11

    .line 23
    iput-wide v14, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 24
    new-array v3, v7, [D

    const/4 v6, 0x2

    new-array v8, v6, [I

    const/4 v6, 0x1

    aput v4, v8, v6

    const/4 v6, 0x0

    aput v7, v8, v6

    .line 25
    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_5

    .line 26
    aget-wide v14, v10, v8

    div-double/2addr v14, v11

    aput-wide v14, v3, v8

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v4, :cond_4

    .line 27
    aget-object v15, v6, v8

    aget-object v17, v1, v8

    aget-wide v20, v17, v14

    aget-wide v17, v10, v8

    div-double v20, v20, v17

    aput-wide v20, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 28
    :cond_5
    new-array v1, v7, [Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_6

    .line 29
    new-instance v11, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v11, v4, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    aput-object v11, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v5, :cond_8

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v7, :cond_7

    .line 30
    new-instance v12, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v14, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v14, v14, v8

    aget-object v15, v6, v11

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([D)V

    .line 31
    invoke-interface {v12}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v14

    invoke-interface {v12, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    aget-object v14, v9, v8

    move v15, v13

    aget-wide v13, v14, v11

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 32
    aget-object v13, v1, v11

    invoke-interface {v13, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    aput-object v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    move v13, v15

    goto :goto_9

    :cond_7
    move v15, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    move v15, v13

    const/4 v8, 0x3

    new-array v8, v8, [I

    const/4 v9, 0x2

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    const/4 v13, 0x0

    aput v7, v8, v13

    .line 33
    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[D

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v7, :cond_9

    .line 34
    aget-object v12, v1, v11

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aget-wide v18, v10, v11

    move-object v14, v10

    div-double v9, v16, v18

    invoke-interface {v12, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    aput-object v9, v1, v11

    .line 35
    aget-object v9, v1, v11

    invoke-interface {v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v9

    aput-object v9, v8, v11

    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    const/4 v9, 0x1

    goto :goto_a

    .line 36
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-direct {v1, v3, v6, v8}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>([D[[D[[[D)V

    iput-object v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move/from16 v1, p2

    move v10, v15

    move-wide/from16 v11, v24

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 37
    :cond_a
    iget-wide v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    sub-double/2addr v11, v1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpl-double v3, v1, p3

    if-gtz v3, :cond_b

    return-void

    .line 38
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v1

    .line 39
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v1, v8, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 40
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 41
    :cond_e
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method public getFittedModel()Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getLogLikelihood()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    return-wide v0
.end method
