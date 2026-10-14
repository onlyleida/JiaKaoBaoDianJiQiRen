.class public Ljama/LUDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private LU:[[D

.field private m:I

.field private n:I

.field private piv:[I

.field private pivsign:I


# direct methods
.method public constructor <init>(Ljama/Matrix;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getArrayCopy()[[D

    move-result-object v1

    iput-object v1, v0, Ljama/LUDecomposition;->LU:[[D

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getRowDimension()I

    move-result v1

    iput v1, v0, Ljama/LUDecomposition;->m:I

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getColumnDimension()I

    move-result v1

    iput v1, v0, Ljama/LUDecomposition;->n:I

    .line 5
    iget v1, v0, Ljama/LUDecomposition;->m:I

    new-array v1, v1, [I

    iput-object v1, v0, Ljama/LUDecomposition;->piv:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v3, v0, Ljama/LUDecomposition;->m:I

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v3, v0, Ljama/LUDecomposition;->piv:[I

    aput v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 8
    iput v2, v0, Ljama/LUDecomposition;->pivsign:I

    .line 9
    new-array v3, v3, [D

    const/4 v4, 0x0

    .line 10
    :goto_1
    iget v5, v0, Ljama/LUDecomposition;->n:I

    if-ge v4, v5, :cond_b

    const/4 v5, 0x0

    .line 11
    :goto_2
    iget v6, v0, Ljama/LUDecomposition;->m:I

    if-ge v5, v6, :cond_1

    .line 12
    iget-object v6, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v6, v6, v5

    aget-wide v7, v6, v4

    aput-wide v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 13
    :goto_3
    iget v6, v0, Ljama/LUDecomposition;->m:I

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_3

    .line 14
    iget-object v6, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v6, v6, v5

    .line 15
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_2

    .line 16
    aget-wide v11, v6, v10

    aget-wide v13, v3, v10

    mul-double v11, v11, v13

    add-double/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 17
    :cond_2
    aget-wide v9, v3, v5

    sub-double/2addr v9, v7

    aput-wide v9, v3, v5

    aput-wide v9, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v4, 0x1

    move v9, v4

    move v6, v5

    .line 18
    :goto_5
    iget v10, v0, Ljama/LUDecomposition;->m:I

    if-ge v6, v10, :cond_5

    .line 19
    aget-wide v10, v3, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    aget-wide v12, v3, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v14, v10, v12

    if-lez v14, :cond_4

    move v9, v6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    if-eq v9, v4, :cond_7

    const/4 v6, 0x0

    .line 20
    :goto_6
    iget v10, v0, Ljama/LUDecomposition;->n:I

    if-ge v6, v10, :cond_6

    .line 21
    iget-object v10, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v11, v10, v9

    aget-wide v12, v11, v6

    aget-object v11, v10, v9

    aget-object v14, v10, v4

    aget-wide v15, v14, v6

    aput-wide v15, v11, v6

    aget-object v10, v10, v4

    aput-wide v12, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 22
    :cond_6
    iget-object v6, v0, Ljama/LUDecomposition;->piv:[I

    aget v10, v6, v9

    aget v11, v6, v4

    aput v11, v6, v9

    aput v10, v6, v4

    .line 23
    iget v6, v0, Ljama/LUDecomposition;->pivsign:I

    neg-int v6, v6

    iput v6, v0, Ljama/LUDecomposition;->pivsign:I

    .line 24
    :cond_7
    iget v6, v0, Ljama/LUDecomposition;->m:I

    if-ge v4, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_7
    iget-object v9, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v9, v9, v4

    aget-wide v10, v9, v4

    cmpl-double v9, v10, v7

    if-eqz v9, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    move v6, v5

    .line 25
    :goto_9
    iget v7, v0, Ljama/LUDecomposition;->m:I

    if-ge v6, v7, :cond_a

    .line 26
    iget-object v7, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v8, v7, v6

    aget-wide v9, v8, v4

    aget-object v7, v7, v4

    aget-wide v11, v7, v4

    div-double/2addr v9, v11

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    move v4, v5

    goto/16 :goto_1

    :cond_b
    return-void
.end method


# virtual methods
.method public det()D
    .locals 6

    .line 1
    iget v0, p0, Ljama/LUDecomposition;->m:I

    iget v1, p0, Ljama/LUDecomposition;->n:I

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Ljama/LUDecomposition;->pivsign:I

    int-to-double v0, v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget v3, p0, Ljama/LUDecomposition;->n:I

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Ljama/LUDecomposition;->LU:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    mul-double v0, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoublePivot()[D
    .locals 4

    .line 1
    iget v0, p0, Ljama/LUDecomposition;->m:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljama/LUDecomposition;->m:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Ljama/LUDecomposition;->piv:[I

    aget v2, v2, v1

    int-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getL()Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/LUDecomposition;->m:I

    iget v2, p0, Ljama/LUDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/LUDecomposition;->m:I

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/LUDecomposition;->n:I

    if-ge v4, v5, :cond_2

    if-le v3, v4, :cond_0

    .line 5
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/LUDecomposition;->LU:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aput-wide v7, v5, v4

    goto :goto_2

    :cond_0
    if-ne v3, v4, :cond_1

    .line 6
    aget-object v5, v1, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v5, v4

    goto :goto_2

    .line 7
    :cond_1
    aget-object v5, v1, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPivot()[I
    .locals 3

    .line 1
    iget v0, p0, Ljama/LUDecomposition;->m:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljama/LUDecomposition;->m:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Ljama/LUDecomposition;->piv:[I

    aget v2, v2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getU()Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/LUDecomposition;->n:I

    invoke-direct {v0, v1, v1}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/LUDecomposition;->n:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/LUDecomposition;->n:I

    if-ge v4, v5, :cond_1

    if-gt v3, v4, :cond_0

    .line 5
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/LUDecomposition;->LU:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aput-wide v7, v5, v4

    goto :goto_2

    .line 6
    :cond_0
    aget-object v5, v1, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isNonsingular()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Ljama/LUDecomposition;->n:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Ljama/LUDecomposition;->LU:[[D

    aget-object v2, v2, v1

    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmpl-double v2, v3, v5

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Ljama/Matrix;)Ljama/Matrix;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getRowDimension()I

    move-result v1

    iget v2, v0, Ljama/LUDecomposition;->m:I

    if-ne v1, v2, :cond_8

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljama/LUDecomposition;->isNonsingular()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getColumnDimension()I

    move-result v1

    .line 4
    iget-object v2, v0, Ljama/LUDecomposition;->piv:[I

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v3}, Ljama/Matrix;->getMatrix([III)Ljama/Matrix;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljama/Matrix;->getArray()[[D

    move-result-object v3

    const/4 v5, 0x0

    .line 6
    :goto_0
    iget v6, v0, Ljama/LUDecomposition;->n:I

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    move v7, v6

    .line 7
    :goto_1
    iget v8, v0, Ljama/LUDecomposition;->n:I

    if-ge v7, v8, :cond_1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_0

    .line 8
    aget-object v9, v3, v7

    aget-wide v10, v9, v8

    aget-object v12, v3, v5

    aget-wide v13, v12, v8

    iget-object v12, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v12, v12, v7

    aget-wide v15, v12, v5

    mul-double v13, v13, v15

    sub-double/2addr v10, v13

    aput-wide v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, -0x1

    :goto_3
    if-ltz v6, :cond_6

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_3

    .line 9
    aget-object v7, v3, v6

    aget-wide v8, v7, v5

    iget-object v10, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v10, v10, v6

    aget-wide v11, v10, v6

    div-double/2addr v8, v11

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_4

    .line 10
    aget-object v8, v3, v5

    aget-wide v9, v8, v7

    aget-object v11, v3, v6

    aget-wide v12, v11, v7

    iget-object v11, v0, Ljama/LUDecomposition;->LU:[[D

    aget-object v11, v11, v5

    aget-wide v14, v11, v6

    mul-double v12, v12, v14

    sub-double/2addr v9, v12

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_6
    return-object v2

    .line 11
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Matrix is singular."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Matrix row dimensions must agree."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
