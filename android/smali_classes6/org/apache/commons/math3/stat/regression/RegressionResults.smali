.class public Lorg/apache/commons/math3/stat/regression/RegressionResults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADJRSQ_IDX:I = 0x4

.field private static final MSE_IDX:I = 0x3

.field private static final RSQ_IDX:I = 0x2

.field private static final SSE_IDX:I = 0x0

.field private static final SST_IDX:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final containsConstant:Z

.field private final globalFitInfo:[D

.field private final isSymmetricVCD:Z

.field private final nobs:J

.field private final parameters:[D

.field private final rank:I

.field private final varCovData:[[D


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    .line 7
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 8
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    return-void
.end method

.method public constructor <init>([D[[DZJIDDDZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move/from16 v4, p6

    move/from16 v5, p13

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    if-eqz p14, :cond_0

    .line 10
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 11
    array-length v7, v1

    new-array v7, v7, [[D

    iput-object v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    const/4 v7, 0x0

    .line 12
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_1

    .line 13
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v9, v1, v7

    invoke-static {v9}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    .line 14
    iput-object v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 15
    iput-object v1, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    :cond_1
    move/from16 v1, p3

    .line 16
    iput-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 17
    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    .line 18
    iput v4, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    .line 19
    iput-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    const/4 v1, 0x5

    new-array v1, v1, [D

    .line 20
    iput-object v1, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    .line 21
    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    const/4 v7, 0x1

    if-lez v4, :cond_3

    if-eqz v5, :cond_2

    mul-double v8, p7, p7

    long-to-double v10, v2

    div-double/2addr v8, v10

    sub-double v8, p9, v8

    goto :goto_1

    :cond_2
    move-wide/from16 v8, p9

    :goto_1
    aput-wide v8, v1, v7

    :cond_3
    aput-wide p11, v1, v6

    const/4 v8, 0x3

    .line 22
    aget-wide v9, v1, v6

    int-to-long v11, v4

    sub-long v11, v2, v11

    long-to-double v11, v11

    div-double/2addr v9, v11

    aput-wide v9, v1, v8

    .line 23
    aget-wide v8, v1, v6

    aget-wide v13, v1, v7

    div-double/2addr v8, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v8, v13, v8

    const/4 v4, 0x2

    aput-wide v8, v1, v4

    const/4 v6, 0x4

    if-nez v5, :cond_4

    .line 24
    aget-wide v4, v1, v4

    sub-double v4, v13, v4

    long-to-double v2, v2

    div-double/2addr v2, v11

    mul-double v4, v4, v2

    sub-double/2addr v13, v4

    aput-wide v13, v1, v6

    goto :goto_2

    :cond_4
    long-to-double v2, v2

    sub-double/2addr v2, v13

    mul-double v2, v2, p11

    .line 25
    aget-wide v4, v1, v7

    mul-double v4, v4, v11

    div-double/2addr v2, v4

    sub-double/2addr v13, v2

    aput-wide v13, v1, v6

    :goto_2
    return-void
.end method

.method private getVcvElement(II)D
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    if-ne p1, p2, :cond_0

    .line 3
    aget-object p2, v0, p1

    aget-wide p1, p2, p1

    return-wide p1

    .line 4
    :cond_0
    aget-object v1, v0, p2

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 5
    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0

    .line 6
    :cond_1
    aget-object p2, v0, p2

    aget-wide p1, p2, p1

    return-wide p1

    :cond_2
    const/4 v1, 0x0

    if-le p1, p2, :cond_3

    .line 7
    aget-object v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    aget-wide p1, v0, v1

    return-wide p1

    .line 8
    :cond_3
    aget-object v0, v0, v1

    add-int/lit8 v1, p2, 0x1

    mul-int v1, v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    aget-wide p1, v0, v1

    return-wide p1

    .line 9
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0
.end method


# virtual methods
.method public getAdjustedRSquared()D
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getCovarianceOfParameters(II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_2

    .line 2
    array-length v2, v0

    if-ge p1, v2, :cond_2

    if-ltz p2, :cond_1

    .line 3
    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 6
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public getErrorSumSquares()D
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getMeanSquareError()D
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x3

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getN()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    return-wide v0
.end method

.method public getNumberOfParameters()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getParameterEstimate(I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    if-ltz p1, :cond_1

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 3
    aget-wide v1, v0, p1

    return-wide v1

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getParameterEstimates()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    return-object v0
.end method

.method public getRSquared()D
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getRegressionSumSquares()D
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    sub-double/2addr v1, v3

    return-wide v1
.end method

.method public getStdErrorOfEstimate(I)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 3
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v3

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v5, 0x1

    cmpl-double p1, v3, v5

    if-lez p1, :cond_1

    .line 5
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1

    .line 6
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getStdErrorOfEstimates()[D
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-direct {p0, v1, v1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v2

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x1

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 6
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 7
    aput-wide v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTotalSumSquares()D
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public hasIntercept()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    return v0
.end method
