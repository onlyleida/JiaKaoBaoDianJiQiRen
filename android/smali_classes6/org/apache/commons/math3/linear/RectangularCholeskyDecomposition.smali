.class public Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private rank:I

.field private final root:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v5, p2

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    .line 4
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v7, 0x0

    aput v1, v3, v7

    .line 5
    const-class v8, D

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 6
    new-array v8, v1, [I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_0

    .line 7
    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_b

    add-int/lit8 v9, v10, 0x1

    move v11, v9

    move v12, v10

    :goto_2
    if-ge v11, v1, :cond_2

    .line 8
    aget v13, v8, v11

    .line 9
    aget v14, v8, v12

    .line 10
    aget-object v15, v2, v13

    aget-wide v16, v15, v13

    aget-object v13, v2, v14

    aget-wide v14, v13, v14

    cmpl-double v13, v16, v14

    if-lez v13, :cond_1

    move v12, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    if-eq v12, v10, :cond_3

    .line 11
    aget v11, v8, v10

    .line 12
    aget v13, v8, v12

    aput v13, v8, v10

    .line 13
    aput v11, v8, v12

    .line 14
    aget-object v11, v3, v10

    .line 15
    aget-object v13, v3, v12

    aput-object v13, v3, v10

    .line 16
    aput-object v11, v3, v12

    .line 17
    :cond_3
    aget v11, v8, v10

    .line 18
    aget-object v12, v2, v11

    aget-wide v13, v12, v11

    cmpg-double v12, v13, v5

    if-gtz v12, :cond_7

    if-eqz v10, :cond_6

    move v9, v10

    :goto_3
    if-ge v9, v1, :cond_5

    .line 19
    aget v11, v8, v9

    aget-object v11, v2, v11

    aget v12, v8, v9

    aget-wide v12, v11, v12

    neg-double v14, v5

    cmpg-double v11, v12, v14

    if-ltz v11, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 20
    :cond_4
    new-instance v7, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget v1, v8, v9

    aget-object v1, v2, v1

    aget v2, v8, v9

    aget-wide v2, v1, v2

    move-object v1, v7

    move v4, v9

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v7

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 21
    :cond_6
    new-instance v7, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-object v1, v2, v11

    aget-wide v2, v1, v11

    move-object v1, v7

    move v4, v11

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v7

    .line 22
    :cond_7
    aget-object v12, v2, v11

    aget-wide v13, v12, v11

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 23
    aget-object v14, v3, v10

    aput-wide v12, v14, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    .line 24
    aget-object v16, v2, v11

    aget-wide v17, v16, v11

    div-double v14, v14, v17

    move v4, v9

    :goto_4
    if-ge v4, v1, :cond_9

    .line 25
    aget v16, v8, v4

    .line 26
    aget-object v17, v2, v16

    aget-wide v18, v17, v11

    mul-double v18, v18, v12

    .line 27
    aget-object v17, v3, v4

    aput-wide v18, v17, v10

    .line 28
    aget-object v17, v2, v16

    aget-wide v20, v17, v16

    aget-object v22, v2, v16

    aget-wide v23, v22, v11

    aget-object v22, v2, v16

    aget-wide v25, v22, v11

    mul-double v23, v23, v25

    mul-double v23, v23, v14

    sub-double v20, v20, v23

    aput-wide v20, v17, v16

    move v7, v9

    :goto_5
    if-ge v7, v4, :cond_8

    .line 29
    aget v20, v8, v7

    .line 30
    aget-object v21, v2, v16

    aget-wide v22, v21, v20

    aget-object v21, v3, v7

    aget-wide v24, v21, v10

    mul-double v24, v24, v18

    sub-double v22, v22, v24

    .line 31
    aget-object v21, v2, v16

    aput-wide v22, v21, v20

    .line 32
    aget-object v20, v2, v20

    aput-wide v22, v20, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    if-ge v9, v1, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    move v10, v9

    move v9, v4

    :goto_7
    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 33
    :cond_b
    iput v10, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    .line 34
    invoke-static {v1, v10}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_d

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v10, :cond_c

    .line 35
    iget-object v5, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    aget v6, v8, v2

    aget-object v7, v3, v2

    aget-wide v11, v7, v4

    invoke-interface {v5, v6, v4, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method


# virtual methods
.method public getRank()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    return v0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
