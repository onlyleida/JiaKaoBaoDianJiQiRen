.class public Lorg/apache/commons/math3/linear/RRQRDecomposition;
.super Lorg/apache/commons/math3/linear/QRDecomposition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private p:[I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RRQRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    return-void
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    array-length v0, v0

    .line 3
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v3, v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getRank(D)I
    .locals 13

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    .line 3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    .line 4
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v3

    const/4 v5, 0x1

    move-wide v6, v3

    .line 5
    :goto_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    if-ge v5, v8, :cond_1

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v9, v2, -0x1

    .line 6
    invoke-interface {v0, v5, v8, v5, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-eqz v12, :cond_1

    div-double v6, v8, v6

    mul-double v6, v6, v3

    cmpg-double v10, v6, p1

    if-gez v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-wide v6, v8

    goto :goto_0

    :cond_1
    :goto_1
    return v5
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;

    invoke-super {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RRQRDecomposition$Solver;-><init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RRQRDecomposition$1;)V

    return-object v0
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    move v4, v0

    move v5, v4

    move-wide v6, v2

    .line 1
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_2

    const/4 v8, 0x0

    move-wide v9, v2

    .line 2
    :goto_1
    aget-object v11, v1, v4

    array-length v11, v11

    if-ge v8, v11, :cond_0

    .line 3
    aget-object v11, v1, v4

    aget-wide v12, v11, v8

    aget-object v11, v1, v4

    aget-wide v14, v11, v8

    mul-double v12, v12, v14

    add-double/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v8, v9, v6

    if-lez v8, :cond_1

    move v5, v4

    move-wide v6, v9

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v0, :cond_3

    .line 4
    aget-object v2, v1, v0

    .line 5
    aget-object v3, v1, v5

    aput-object v3, v1, v0

    .line 6
    aput-object v2, v1, v5

    move-object/from16 v2, p0

    .line 7
    iget-object v3, v2, Lorg/apache/commons/math3/linear/RRQRDecomposition;->p:[I

    aget v4, v3, v0

    .line 8
    aget v6, v3, v5

    aput v6, v3, v0

    .line 9
    aput v4, v3, v5

    goto :goto_2

    :cond_3
    move-object/from16 v2, p0

    .line 10
    :goto_2
    invoke-super/range {p0 .. p2}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    return-void
.end method
