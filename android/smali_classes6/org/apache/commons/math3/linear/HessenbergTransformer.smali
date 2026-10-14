.class Lorg/apache/commons/math3/linear/HessenbergTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final ort:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    .line 5
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 9
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->transform()V

    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method private transform()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-gt v3, v4, :cond_a

    const-wide/16 v4, 0x0

    move v6, v3

    move-wide v7, v4

    :goto_1
    if-gt v6, v2, :cond_0

    .line 2
    iget-object v9, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v9, v9, v6

    add-int/lit8 v10, v3, -0x1

    aget-wide v10, v9, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v7, v8, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v2

    move-wide v9, v4

    :goto_2
    if-lt v6, v3, :cond_1

    .line 4
    iget-object v11, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    iget-object v12, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v12, v12, v6

    add-int/lit8 v13, v3, -0x1

    aget-wide v13, v12, v13

    div-double/2addr v13, v7

    aput-wide v13, v11, v6

    .line 5
    aget-wide v12, v11, v6

    aget-wide v14, v11, v6

    mul-double v12, v12, v14

    add-double/2addr v9, v12

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 6
    :cond_1
    iget-object v6, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v11, v6, v3

    cmpl-double v6, v11, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    if-lez v6, :cond_2

    neg-double v11, v11

    .line 7
    :cond_2
    iget-object v6, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v13, v6, v3

    mul-double v13, v13, v11

    sub-double/2addr v9, v13

    .line 8
    aget-wide v13, v6, v3

    sub-double/2addr v13, v11

    aput-wide v13, v6, v3

    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_5

    move v13, v2

    move-wide v14, v4

    :goto_4
    if-lt v13, v3, :cond_3

    .line 9
    iget-object v4, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v4, v13

    iget-object v4, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v4, v4, v13

    aget-wide v18, v4, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    add-int/lit8 v13, v13, -0x1

    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_3
    div-double/2addr v14, v9

    move v4, v3

    :goto_5
    if-gt v4, v2, :cond_4

    .line 10
    iget-object v5, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v5, v5, v4

    aget-wide v16, v5, v6

    iget-object v13, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v18, v13, v4

    mul-double v18, v18, v14

    sub-double v16, v16, v18

    aput-wide v16, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_6
    if-gt v4, v2, :cond_8

    move v5, v2

    const-wide/16 v13, 0x0

    :goto_7
    if-lt v5, v3, :cond_6

    .line 11
    iget-object v6, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v6, v5

    iget-object v6, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v6, v6, v4

    aget-wide v18, v6, v5

    mul-double v16, v16, v18

    add-double v13, v13, v16

    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_6
    div-double/2addr v13, v9

    move v5, v3

    :goto_8
    if-gt v5, v2, :cond_7

    .line 12
    iget-object v6, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v6, v6, v4

    aget-wide v16, v6, v5

    iget-object v15, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v18, v15, v5

    mul-double v18, v18, v13

    sub-double v16, v16, v18

    aput-wide v16, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 13
    :cond_8
    iget-object v4, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v5, v4, v3

    mul-double v5, v5, v7

    aput-wide v5, v4, v3

    .line 14
    iget-object v4, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v4, v4, v3

    add-int/lit8 v5, v3, -0x1

    mul-double v7, v7, v11

    aput-wide v7, v4, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 3
    const-class v3, D

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    :goto_0
    if-ge v2, v0, :cond_2

    if-lez v2, :cond_0

    .line 4
    aget-object v3, v1, v2

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v4

    aput-wide v6, v3, v4

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    .line 5
    aget-object v4, v1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 7
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method getHouseholderVectorsRef()[[D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    return-object v0
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_8

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    .line 3
    const-class v6, D

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v6, 0x0

    :goto_0
    const-wide/16 v7, 0x0

    if-ge v6, v1, :cond_2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v1, :cond_1

    .line 4
    aget-object v10, v3, v6

    if-ne v6, v9, :cond_0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    move-wide v11, v7

    :goto_2
    aput-wide v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, -0x1

    :goto_3
    if-lt v1, v4, :cond_7

    .line 5
    iget-object v5, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v1, -0x1

    aget-wide v9, v5, v6

    cmpl-double v5, v9, v7

    if-eqz v5, :cond_6

    add-int/lit8 v5, v1, 0x1

    :goto_4
    if-gt v5, v2, :cond_3

    .line 6
    iget-object v9, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    iget-object v10, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v10, v10, v5

    aget-wide v11, v10, v6

    aput-wide v11, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    move v5, v1

    :goto_5
    if-gt v5, v2, :cond_6

    move v9, v1

    move-wide v10, v7

    :goto_6
    if-gt v9, v2, :cond_4

    .line 7
    iget-object v12, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v13, v12, v9

    aget-object v12, v3, v9

    aget-wide v15, v12, v5

    mul-double v13, v13, v15

    add-double/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 8
    :cond_4
    iget-object v9, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v12, v9, v1

    div-double/2addr v10, v12

    iget-object v9, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->householderVectors:[[D

    aget-object v9, v9, v1

    aget-wide v12, v9, v6

    div-double/2addr v10, v12

    move v9, v1

    :goto_7
    if-gt v9, v2, :cond_5

    .line 9
    aget-object v12, v3, v9

    aget-wide v13, v12, v5

    iget-object v15, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->ort:[D

    aget-wide v16, v15, v9

    mul-double v16, v16, v10

    add-double v13, v13, v16

    aput-wide v13, v12, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 10
    :cond_7
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 11
    :cond_8
    iget-object v1, v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method public getPT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/HessenbergTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
