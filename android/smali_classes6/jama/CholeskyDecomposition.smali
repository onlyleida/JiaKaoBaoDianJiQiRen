.class public Ljama/CholeskyDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private L:[[D

.field private isspd:Z

.field private n:I


# direct methods
.method public constructor <init>(Ljama/Matrix;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Ljama/CholeskyDecomposition;->n:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v5, 0x0

    aput v2, v3, v5

    .line 4
    const-class v2, D

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, v0, Ljama/CholeskyDecomposition;->L:[[D

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljama/Matrix;->getColumnDimension()I

    move-result v2

    iget v3, v0, Ljama/CholeskyDecomposition;->n:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Ljama/CholeskyDecomposition;->isspd:Z

    const/4 v2, 0x0

    .line 6
    :goto_1
    iget v3, v0, Ljama/CholeskyDecomposition;->n:I

    if-ge v2, v3, :cond_6

    .line 7
    iget-object v3, v0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v3, v3, v2

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_3

    .line 8
    iget-object v11, v0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v11, v11, v8

    move-wide v13, v6

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_1

    .line 9
    aget-wide v15, v11, v12

    aget-wide v17, v3, v12

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 10
    :cond_1
    aget-object v11, v1, v2

    aget-wide v15, v11, v8

    sub-double/2addr v15, v13

    iget-object v11, v0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v11, v11, v8

    aget-wide v12, v11, v8

    div-double/2addr v15, v12

    aput-wide v15, v3, v8

    mul-double v15, v15, v15

    add-double/2addr v9, v15

    .line 11
    iget-boolean v11, v0, Ljama/CholeskyDecomposition;->isspd:Z

    aget-object v12, v1, v8

    aget-wide v13, v12, v2

    aget-object v12, v1, v2

    aget-wide v15, v12, v8

    cmpl-double v12, v13, v15

    if-nez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_4

    :cond_2
    const/4 v12, 0x0

    :goto_4
    and-int/2addr v11, v12

    iput-boolean v11, v0, Ljama/CholeskyDecomposition;->isspd:Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 12
    :cond_3
    aget-object v3, v1, v2

    aget-wide v11, v3, v2

    sub-double/2addr v11, v9

    .line 13
    iget-boolean v3, v0, Ljama/CholeskyDecomposition;->isspd:Z

    cmpl-double v8, v11, v6

    if-lez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    :goto_5
    and-int/2addr v3, v8

    iput-boolean v3, v0, Ljama/CholeskyDecomposition;->isspd:Z

    .line 14
    iget-object v3, v0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v3, v3, v2

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v3, v2

    add-int/lit8 v3, v2, 0x1

    move v8, v3

    .line 15
    :goto_6
    iget v9, v0, Ljama/CholeskyDecomposition;->n:I

    if-ge v8, v9, :cond_5

    .line 16
    iget-object v9, v0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v9, v9, v2

    aput-wide v6, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public getL()Ljama/Matrix;
    .locals 3

    .line 1
    new-instance v0, Ljama/Matrix;

    iget-object v1, p0, Ljama/CholeskyDecomposition;->L:[[D

    iget v2, p0, Ljama/CholeskyDecomposition;->n:I

    invoke-direct {v0, v1, v2, v2}, Ljama/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public isSPD()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljama/CholeskyDecomposition;->isspd:Z

    return v0
.end method

.method public solve(Ljama/Matrix;)Ljama/Matrix;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljama/Matrix;->getRowDimension()I

    move-result v0

    iget v1, p0, Ljama/CholeskyDecomposition;->n:I

    if-ne v0, v1, :cond_7

    .line 2
    iget-boolean v0, p0, Ljama/CholeskyDecomposition;->isspd:Z

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p1}, Ljama/Matrix;->getArrayCopy()[[D

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljama/Matrix;->getColumnDimension()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Ljama/CholeskyDecomposition;->n:I

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    .line 6
    aget-object v5, v0, v2

    aget-wide v6, v5, v3

    aget-object v8, v0, v4

    aget-wide v9, v8, v3

    iget-object v8, p0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v8, v8, v2

    aget-wide v11, v8, v4

    mul-double v9, v9, v11

    sub-double/2addr v6, v9

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7
    :cond_0
    aget-object v4, v0, v2

    aget-wide v5, v4, v3

    iget-object v7, p0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v7, v7, v2

    aget-wide v8, v7, v2

    div-double/2addr v5, v8

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_5

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 8
    :goto_5
    iget v5, p0, Ljama/CholeskyDecomposition;->n:I

    if-ge v4, v5, :cond_3

    .line 9
    aget-object v5, v0, v3

    aget-wide v6, v5, v2

    aget-object v8, v0, v4

    aget-wide v9, v8, v2

    iget-object v8, p0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v8, v8, v4

    aget-wide v11, v8, v3

    mul-double v9, v9, v11

    sub-double/2addr v6, v9

    aput-wide v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 10
    :cond_3
    aget-object v4, v0, v3

    aget-wide v5, v4, v2

    iget-object v7, p0, Ljama/CholeskyDecomposition;->L:[[D

    aget-object v7, v7, v3

    aget-wide v8, v7, v3

    div-double/2addr v5, v8

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 11
    :cond_5
    new-instance v1, Ljama/Matrix;

    iget v2, p0, Ljama/CholeskyDecomposition;->n:I

    invoke-direct {v1, v0, v2, p1}, Ljama/Matrix;-><init>([[DII)V

    return-object v1

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Matrix is not symmetric positive definite."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix row dimensions must agree."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
