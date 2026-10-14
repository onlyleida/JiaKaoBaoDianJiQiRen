.class public Ljama/QRDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private QR:[[D

.field private Rdiag:[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Ljama/Matrix;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljama/Matrix;->getArrayCopy()[[D

    move-result-object v0

    iput-object v0, p0, Ljama/QRDecomposition;->QR:[[D

    .line 3
    invoke-virtual {p1}, Ljama/Matrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Ljama/QRDecomposition;->m:I

    .line 4
    invoke-virtual {p1}, Ljama/Matrix;->getColumnDimension()I

    move-result p1

    iput p1, p0, Ljama/QRDecomposition;->n:I

    .line 5
    new-array p1, p1, [D

    iput-object p1, p0, Ljama/QRDecomposition;->Rdiag:[D

    const/4 p1, 0x0

    .line 6
    :goto_0
    iget v0, p0, Ljama/QRDecomposition;->n:I

    if-ge p1, v0, :cond_6

    const-wide/16 v0, 0x0

    move v2, p1

    move-wide v3, v0

    .line 7
    :goto_1
    iget v5, p0, Ljama/QRDecomposition;->m:I

    if-ge v2, v5, :cond_0

    .line 8
    iget-object v5, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, p1

    invoke-static {v3, v4, v6, v7}, Ljama/a/a;->a(DD)D

    move-result-wide v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v2, v3, v0

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v2, v2, p1

    aget-wide v5, v2, p1

    cmpg-double v2, v5, v0

    if-gez v2, :cond_1

    neg-double v3, v3

    :cond_1
    move v2, p1

    .line 10
    :goto_2
    iget v5, p0, Ljama/QRDecomposition;->m:I

    if-ge v2, v5, :cond_2

    .line 11
    iget-object v5, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, p1

    div-double/2addr v6, v3

    aput-wide v6, v5, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12
    :cond_2
    iget-object v2, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v2, v2, p1

    aget-wide v5, v2, p1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    aput-wide v5, v2, p1

    add-int/lit8 v2, p1, 0x1

    .line 13
    :goto_3
    iget v5, p0, Ljama/QRDecomposition;->n:I

    if-ge v2, v5, :cond_5

    move v5, p1

    move-wide v6, v0

    .line 14
    :goto_4
    iget v8, p0, Ljama/QRDecomposition;->m:I

    if-ge v5, v8, :cond_3

    .line 15
    iget-object v8, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v9, v8, v5

    aget-wide v10, v9, p1

    aget-object v8, v8, v5

    aget-wide v12, v8, v2

    mul-double v10, v10, v12

    add-double/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    neg-double v5, v6

    .line 16
    iget-object v7, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v7, v7, p1

    aget-wide v8, v7, p1

    div-double/2addr v5, v8

    move v7, p1

    .line 17
    :goto_5
    iget v8, p0, Ljama/QRDecomposition;->m:I

    if-ge v7, v8, :cond_4

    .line 18
    iget-object v8, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v9, v8, v7

    aget-wide v10, v9, v2

    aget-object v8, v8, v7

    aget-wide v12, v8, p1

    mul-double v12, v12, v5

    add-double/2addr v10, v12

    aput-wide v10, v9, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Ljama/QRDecomposition;->Rdiag:[D

    neg-double v1, v3

    aput-wide v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getH()Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/QRDecomposition;->m:I

    iget v2, p0, Ljama/QRDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/QRDecomposition;->m:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/QRDecomposition;->n:I

    if-ge v4, v5, :cond_1

    if-lt v3, v4, :cond_0

    .line 5
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/QRDecomposition;->QR:[[D

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

.method public getQ()Ljama/Matrix;
    .locals 15

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/QRDecomposition;->m:I

    iget v2, p0, Ljama/QRDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    .line 3
    iget v2, p0, Ljama/QRDecomposition;->n:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    const/4 v3, 0x0

    .line 4
    :goto_1
    iget v4, p0, Ljama/QRDecomposition;->m:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 5
    aget-object v4, v1, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_0
    aget-object v3, v1, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v3, v2

    move v3, v2

    .line 7
    :goto_2
    iget v4, p0, Ljama/QRDecomposition;->n:I

    if-ge v3, v4, :cond_3

    .line 8
    iget-object v4, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v4, v4, v2

    aget-wide v7, v4, v2

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    move v4, v2

    move-wide v7, v5

    .line 9
    :goto_3
    iget v9, p0, Ljama/QRDecomposition;->m:I

    if-ge v4, v9, :cond_1

    .line 10
    iget-object v9, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v9, v9, v4

    aget-wide v10, v9, v2

    aget-object v9, v1, v4

    aget-wide v12, v9, v3

    mul-double v10, v10, v12

    add-double/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    neg-double v7, v7

    .line 11
    iget-object v4, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v4, v4, v2

    aget-wide v9, v4, v2

    div-double/2addr v7, v9

    move v4, v2

    .line 12
    :goto_4
    iget v9, p0, Ljama/QRDecomposition;->m:I

    if-ge v4, v9, :cond_2

    .line 13
    aget-object v9, v1, v4

    aget-wide v10, v9, v3

    iget-object v12, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v12, v12, v4

    aget-wide v13, v12, v2

    mul-double v13, v13, v7

    add-double/2addr v10, v13

    aput-wide v10, v9, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getR()Ljama/Matrix;
    .locals 9

    .line 1
    new-instance v0, Ljama/Matrix;

    iget v1, p0, Ljama/QRDecomposition;->n:I

    invoke-direct {v0, v1, v1}, Ljama/Matrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ljama/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Ljama/QRDecomposition;->n:I

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Ljama/QRDecomposition;->n:I

    if-ge v4, v5, :cond_2

    if-ge v3, v4, :cond_0

    .line 5
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aput-wide v7, v5, v4

    goto :goto_2

    :cond_0
    if-ne v3, v4, :cond_1

    .line 6
    aget-object v5, v1, v3

    iget-object v6, p0, Ljama/QRDecomposition;->Rdiag:[D

    aget-wide v7, v6, v3

    aput-wide v7, v5, v4

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

.method public isFullRank()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Ljama/QRDecomposition;->n:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Ljama/QRDecomposition;->Rdiag:[D

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
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljama/Matrix;->getRowDimension()I

    move-result v0

    iget v1, p0, Ljama/QRDecomposition;->m:I

    if-ne v0, v1, :cond_9

    .line 2
    invoke-virtual {p0}, Ljama/QRDecomposition;->isFullRank()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p1}, Ljama/Matrix;->getColumnDimension()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Ljama/Matrix;->getArrayCopy()[[D

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Ljama/QRDecomposition;->n:I

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    const-wide/16 v4, 0x0

    move v6, v2

    .line 6
    :goto_2
    iget v7, p0, Ljama/QRDecomposition;->m:I

    if-ge v6, v7, :cond_0

    .line 7
    iget-object v7, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v2

    aget-object v7, p1, v6

    aget-wide v10, v7, v3

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    neg-double v4, v4

    .line 8
    iget-object v6, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v2

    div-double/2addr v4, v7

    move v6, v2

    .line 9
    :goto_3
    iget v7, p0, Ljama/QRDecomposition;->m:I

    if-ge v6, v7, :cond_1

    .line 10
    aget-object v7, p1, v6

    aget-wide v8, v7, v3

    iget-object v10, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v10, v10, v6

    aget-wide v11, v10, v2

    mul-double v11, v11, v4

    add-double/2addr v8, v11

    aput-wide v8, v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_7

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_4

    .line 11
    aget-object v4, p1, v3

    aget-wide v5, v4, v2

    iget-object v7, p0, Ljama/QRDecomposition;->Rdiag:[D

    aget-wide v8, v7, v3

    div-double/2addr v5, v8

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_6

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v0, :cond_5

    .line 12
    aget-object v5, p1, v2

    aget-wide v6, v5, v4

    aget-object v8, p1, v3

    aget-wide v9, v8, v4

    iget-object v8, p0, Ljama/QRDecomposition;->QR:[[D

    aget-object v8, v8, v2

    aget-wide v11, v8, v3

    mul-double v9, v9, v11

    sub-double/2addr v6, v9

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 13
    :cond_7
    new-instance v2, Ljama/Matrix;

    iget v3, p0, Ljama/QRDecomposition;->n:I

    invoke-direct {v2, p1, v3, v0}, Ljama/Matrix;-><init>([[DII)V

    iget p1, p0, Ljama/QRDecomposition;->n:I

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, p1, v1, v0}, Ljama/Matrix;->getMatrix(IIII)Ljama/Matrix;

    move-result-object p1

    return-object p1

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Matrix is rank deficient."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix row dimensions must agree."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
