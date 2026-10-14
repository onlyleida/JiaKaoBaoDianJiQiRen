.class Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/QRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final qrt:[[D

.field private final rDiag:[D

.field private final threshold:D


# direct methods
.method private constructor <init>([[D[DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    .line 5
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    return-void
.end method

.method synthetic constructor <init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    .line 2
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 26

    move-object/from16 v0, p0

    .line 21
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 22
    aget-object v1, v1, v3

    array-length v1, v1

    .line 23
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 24
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 25
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    add-int/lit8 v5, v4, 0x34

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/16 v7, 0x34

    .line 26
    div-int/2addr v5, v7

    .line 27
    invoke-static {v2, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v8

    .line 28
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v7, v10, v6

    aput v9, v10, v3

    const-class v9, D

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    new-array v7, v7, [D

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v5, :cond_a

    mul-int/lit8 v13, v15, 0x34

    add-int/lit8 v10, v13, 0x34

    .line 29
    invoke-static {v10, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    sub-int v14, v10, v13

    const/4 v11, 0x0

    add-int/lit8 v12, v1, -0x1

    add-int/lit8 v16, v10, -0x1

    move-object/from16 v10, p1

    move v6, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move-object v15, v9

    .line 30
    invoke-interface/range {v10 .. v15}, Lorg/apache/commons/math3/linear/RealMatrix;->copySubMatrix(IIII[[D)V

    const/4 v10, 0x0

    .line 31
    :goto_1
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-ge v10, v11, :cond_5

    .line 32
    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v11, v11, v10

    .line 33
    iget-object v14, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v18, v14, v10

    aget-wide v14, v11, v10

    mul-double v18, v18, v14

    div-double v12, v12, v18

    const-wide/16 v14, 0x0

    .line 34
    invoke-static {v7, v3, v6, v14, v15}, Ljava/util/Arrays;->fill([DIID)V

    move v14, v10

    :goto_2
    if-ge v14, v1, :cond_1

    .line 35
    aget-wide v18, v11, v14

    .line 36
    aget-object v15, v9, v14

    :goto_3
    if-ge v3, v6, :cond_0

    .line 37
    aget-wide v20, v7, v3

    aget-wide v22, v15, v3

    mul-double v22, v22, v18

    add-double v20, v20, v22

    aput-wide v20, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_2

    .line 38
    aget-wide v14, v7, v3

    mul-double v14, v14, v12

    aput-wide v14, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    move v3, v10

    :goto_5
    if-ge v3, v1, :cond_4

    .line 39
    aget-wide v12, v11, v3

    .line 40
    aget-object v14, v9, v3

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v6, :cond_3

    .line 41
    aget-wide v18, v14, v15

    aget-wide v20, v7, v15

    mul-double v20, v20, v12

    add-double v18, v18, v20

    aput-wide v18, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 42
    :cond_5
    iget-object v3, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v3, v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    :goto_7
    if-ltz v3, :cond_9

    .line 43
    div-int/lit8 v11, v3, 0x34

    mul-int/lit8 v14, v11, 0x34

    .line 44
    iget-object v15, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v17, v15, v3

    div-double v17, v12, v17

    .line 45
    aget-object v15, v9, v3

    mul-int v11, v11, v5

    add-int v11, v11, v16

    .line 46
    aget-object v11, v8, v11

    sub-int v14, v3, v14

    mul-int v14, v14, v6

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_6

    .line 47
    aget-wide v20, v15, v10

    mul-double v20, v20, v17

    aput-wide v20, v15, v10

    add-int/lit8 v20, v14, 0x1

    .line 48
    aget-wide v21, v15, v10

    aput-wide v21, v11, v14

    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v20

    goto :goto_8

    .line 49
    :cond_6
    iget-object v10, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v10, v10, v3

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v3, :cond_8

    .line 50
    aget-wide v17, v10, v11

    .line 51
    aget-object v14, v9, v11

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v6, :cond_7

    .line 52
    aget-wide v22, v14, v12

    aget-wide v24, v15, v12

    mul-double v24, v24, v17

    sub-double v22, v22, v24

    aput-wide v22, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_7
    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v3, -0x1

    const/4 v10, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_9
    add-int/lit8 v15, v16, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 53
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v8, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-object v1

    .line 54
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1

    .line 55
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 2
    aget-object v0, v0, v2

    array-length v0, v0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5
    new-array v3, v1, [D

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 8
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v5, v5, v4

    const-wide/16 v6, 0x0

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_0

    .line 9
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v9, v8, v4

    aget-wide v11, v5, v4

    mul-double v9, v9, v11

    div-double/2addr v6, v9

    move v8, v4

    :goto_2
    if-ge v8, v0, :cond_1

    .line 11
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double v11, v11, v6

    add-double/2addr v9, v11

    aput-wide v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 13
    aget-wide v4, p1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v6, v1, v0

    div-double/2addr v4, v6

    aput-wide v4, p1, v0

    .line 14
    aget-wide v4, p1, v0

    .line 15
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v1, v1, v0

    .line 16
    aput-wide v4, v3, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v0, :cond_3

    .line 17
    aget-wide v7, p1, v6

    aget-wide v9, v1, v6

    mul-double v9, v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 18
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 19
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p1

    .line 20
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
