.class public Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x392765e4037ab55eL


# instance fields
.field private final isBiasCorrected:Z

.field private n:J

.field private final productsSums:[D

.field private final sums:[D


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    add-int/lit8 v0, p1, 0x1

    mul-int p1, p1, v0

    .line 3
    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    .line 5
    iput-boolean p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    .line 3
    iget-boolean v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    iget-boolean v3, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    iget-wide v5, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    iget-object v3, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    iget-object p1, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getN()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    return-wide v0
.end method

.method public getResult()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    array-length v1, v1

    .line 2
    invoke-static {v1, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 3
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 4
    iget-boolean v9, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    if-eqz v9, :cond_0

    sub-long v5, v3, v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    mul-long v3, v3, v5

    long-to-double v3, v3

    div-double/2addr v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    const/4 v6, 0x0

    :goto_2
    if-gt v6, v4, :cond_1

    .line 5
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    long-to-double v9, v9

    iget-object v11, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    add-int/lit8 v12, v5, 0x1

    aget-wide v13, v11, v5

    mul-double v9, v9, v13

    iget-object v5, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    aget-wide v13, v5, v4

    aget-wide v15, v5, v6

    mul-double v13, v13, v15

    sub-double/2addr v9, v13

    mul-double v9, v9, v7

    .line 6
    invoke-interface {v2, v4, v6, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 7
    invoke-interface {v2, v6, v4, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    move v5, v12

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increment([D)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    array-length v1, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    aget-wide v4, v3, v1

    aget-wide v6, p1, v1

    add-double/2addr v4, v6

    aput-wide v4, v3, v1

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v1, :cond_0

    .line 4
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    add-int/lit8 v5, v2, 0x1

    aget-wide v6, v4, v2

    aget-wide v8, p1, v1

    aget-wide v10, p1, v3

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    return-void

    .line 6
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
