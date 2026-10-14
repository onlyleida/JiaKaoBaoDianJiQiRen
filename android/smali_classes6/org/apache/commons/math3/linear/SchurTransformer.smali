.class Lorg/apache/commons/math3/linear/SchurTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0x64


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final epsilon:D

.field private final matrixP:[[D

.field private final matrixT:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    .line 3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/HessenbergTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getH()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 10
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->transform()V

    return-void

    .line 11
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method private computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v4, v1

    aget-wide v6, v5, v1

    iput-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    const-wide/16 v8, 0x0

    .line 2
    iput-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iput-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move/from16 v5, p1

    if-ge v5, v1, :cond_0

    add-int/lit8 v5, v1, -0x1

    .line 3
    aget-object v10, v4, v5

    aget-wide v11, v10, v5

    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 4
    aget-object v10, v4, v1

    aget-wide v11, v10, v5

    aget-object v4, v4, v5

    aget-wide v13, v4, v1

    mul-double v11, v11, v13

    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    :cond_0
    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    .line 5
    iget-wide v10, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v10, v6

    iput-wide v10, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v1, :cond_1

    .line 6
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v6, v6, v4

    aget-wide v10, v6, v4

    iget-wide v12, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v10, v12

    aput-wide v10, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v1

    add-int/lit8 v6, v1, -0x1

    aget-wide v10, v4, v6

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v6

    add-int/lit8 v6, v1, -0x2

    aget-wide v6, v4, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    add-double/2addr v10, v6

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v10

    .line 8
    iput-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 9
    iput-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    const-wide/high16 v6, -0x4024000000000000L    # -0.4375

    mul-double v6, v6, v10

    mul-double v6, v6, v10

    .line 10
    iput-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    :cond_2
    const/16 v4, 0x1e

    if-ne v2, v4, :cond_5

    .line 11
    iget-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-wide v10, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    mul-double v6, v6, v6

    .line 12
    iget-wide v12, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    add-double/2addr v6, v12

    cmpl-double v2, v6, v8

    if-lez v2, :cond_5

    .line 13
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 14
    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-wide v12, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    cmpg-double v2, v8, v12

    if-gez v2, :cond_3

    neg-double v6, v6

    .line 15
    :cond_3
    iget-wide v14, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    sub-double/2addr v8, v12

    div-double/2addr v8, v10

    add-double/2addr v8, v6

    div-double/2addr v14, v8

    sub-double/2addr v12, v14

    :goto_1
    if-gt v5, v1, :cond_4

    .line 16
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v5

    aget-wide v6, v2, v5

    sub-double/2addr v6, v12

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 17
    :cond_4
    iget-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v1, v12

    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    const-wide v1, 0x3feed916872b020cL    # 0.964

    .line 18
    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    :cond_5
    return-void
.end method

.method private findSmallSubDiagonalElement(ID)I
    .locals 6

    :goto_0
    if-lez p1, :cond_2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v0, v0, p1

    aget-wide v4, v0, p1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    move-wide v2, p2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v0, v0, p1

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double v4, v4, v2

    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private getNorm()D
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 2
    invoke-static {v4, v0}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 3
    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    add-int/lit8 v4, p2, -0x2

    :goto_0
    if-lt v4, v1, :cond_2

    .line 1
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v6, v5, v4

    aget-wide v7, v6, v4

    .line 2
    iget-wide v9, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v9, v7

    .line 3
    iget-wide v11, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    sub-double/2addr v11, v7

    mul-double v13, v9, v11

    move/from16 p2, v4

    .line 4
    iget-wide v3, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    sub-double/2addr v13, v3

    add-int/lit8 v4, p2, 0x1

    aget-object v3, v5, v4

    aget-wide v15, v3, p2

    div-double/2addr v13, v15

    aget-object v3, v5, p2

    aget-wide v15, v3, v4

    add-double/2addr v13, v15

    const/4 v3, 0x0

    aput-wide v13, p4, v3

    .line 5
    aget-object v13, v5, v4

    aget-wide v14, v13, v4

    sub-double/2addr v14, v7

    sub-double/2addr v14, v9

    sub-double/2addr v14, v11

    const/4 v9, 0x1

    aput-wide v14, p4, v9

    add-int/lit8 v10, p2, 0x2

    .line 6
    aget-object v10, v5, v10

    aget-wide v11, v10, v4

    const/4 v6, 0x2

    aput-wide v11, p4, v6

    move/from16 v10, p2

    if-ne v10, v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    aget-object v5, v5, v10

    add-int/lit8 v11, v10, -0x1

    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    aget-wide v14, p4, v9

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    aget-wide v16, p4, v6

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double v12, v12, v14

    .line 8
    aget-wide v14, p4, v3

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v11

    aget-wide v16, v3, v11

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    add-double v16, v16, v7

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v4

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double v16, v16, v3

    mul-double v14, v14, v16

    .line 9
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double v3, v3, v14

    cmpg-double v5, v12, v3

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v10, -0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_2
    move v10, v4

    :goto_1
    return v10
.end method

.method private performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    const/4 v5, 0x0

    .line 2
    aget-wide v6, p5, v5

    const/4 v8, 0x1

    .line 3
    aget-wide v9, p5, v8

    const/4 v11, 0x2

    .line 4
    aget-wide v12, p5, v11

    move v14, v1

    :goto_0
    add-int/lit8 v15, v2, -0x1

    const-wide/16 v16, 0x0

    if-gt v14, v15, :cond_e

    if-eq v14, v15, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    if-eq v14, v1, :cond_3

    .line 5
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v6, v14

    add-int/lit8 v9, v14, -0x1

    aget-wide v12, v7, v9

    add-int/lit8 v7, v14, 0x1

    .line 6
    aget-object v7, v6, v7

    aget-wide v18, v7, v9

    if-eqz v15, :cond_1

    add-int/lit8 v7, v14, 0x2

    .line 7
    aget-object v6, v6, v7

    aget-wide v9, v6, v9

    goto :goto_2

    :cond_1
    move-wide/from16 v9, v16

    .line 8
    :goto_2
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v6, v6, v20

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v6, v6, v20

    iput-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    const-wide/16 v24, 0x0

    move-wide/from16 v28, v9

    .line 9
    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    move-wide/from16 v22, v6

    move-wide/from16 v26, v8

    invoke-static/range {v22 .. v27}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v6

    if-eqz v6, :cond_2

    move v11, v4

    move-wide v6, v12

    move-wide/from16 v9, v18

    move-wide/from16 v12, v28

    goto/16 :goto_8

    .line 10
    :cond_2
    iget-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v8, v12, v6

    div-double v12, v18, v6

    div-double v6, v28, v6

    move-wide/from16 v30, v8

    move-wide v9, v12

    move-wide v12, v6

    move-wide/from16 v6, v30

    :cond_3
    mul-double v18, v6, v6

    mul-double v21, v9, v9

    add-double v18, v18, v21

    mul-double v21, v12, v12

    add-double v18, v18, v21

    move-wide/from16 v21, v12

    .line 11
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    cmpg-double v13, v6, v16

    if-gez v13, :cond_4

    neg-double v11, v11

    :cond_4
    cmpl-double v13, v11, v16

    if-eqz v13, :cond_d

    if-eq v14, v1, :cond_5

    .line 12
    iget-object v13, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v13, v13, v14

    add-int/lit8 v16, v14, -0x1

    move-wide/from16 v18, v9

    neg-double v8, v11

    move-wide/from16 v23, v6

    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double v8, v8, v5

    aput-wide v8, v13, v16

    move/from16 v5, p1

    goto :goto_3

    :cond_5
    move/from16 v5, p1

    move-wide/from16 v23, v6

    move-wide/from16 v18, v9

    if-eq v5, v1, :cond_6

    .line 13
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v6, v14

    add-int/lit8 v8, v14, -0x1

    aget-object v6, v6, v14

    move-wide/from16 v25, v11

    aget-wide v10, v6, v8

    neg-double v10, v10

    aput-wide v10, v7, v8

    goto :goto_4

    :cond_6
    :goto_3
    move-wide/from16 v25, v11

    :goto_4
    add-double v6, v23, v25

    div-double v10, v6, v25

    .line 14
    iput-wide v10, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v10, v18, v25

    .line 15
    iput-wide v10, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    div-double v12, v21, v25

    div-double v10, v18, v6

    div-double v16, v21, v6

    move v8, v14

    :goto_5
    if-ge v8, v4, :cond_8

    .line 16
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v6, v14

    aget-wide v18, v7, v8

    add-int/lit8 v7, v14, 0x1

    aget-object v21, v6, v7

    aget-wide v22, v21, v8

    mul-double v22, v22, v10

    add-double v18, v18, v22

    if-eqz v15, :cond_7

    add-int/lit8 v21, v14, 0x2

    .line 17
    aget-object v22, v6, v21

    aget-wide v23, v22, v8

    mul-double v23, v23, v16

    add-double v18, v18, v23

    .line 18
    aget-object v21, v6, v21

    aget-wide v22, v21, v8

    mul-double v24, v18, v12

    sub-double v22, v22, v24

    aput-wide v22, v21, v8

    .line 19
    :cond_7
    aget-object v21, v6, v14

    aget-wide v22, v21, v8

    move-wide/from16 v26, v10

    iget-wide v9, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double v9, v9, v18

    sub-double v22, v22, v9

    aput-wide v22, v21, v8

    .line 20
    aget-object v6, v6, v7

    aget-wide v9, v6, v8

    move v11, v4

    iget-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    mul-double v4, v4, v18

    sub-double/2addr v9, v4

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, p1

    move v4, v11

    move-wide/from16 v6, v18

    move-wide/from16 v10, v26

    goto :goto_5

    :cond_8
    move-wide/from16 v26, v10

    move v11, v4

    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v5, v14, 0x3

    .line 21
    invoke-static {v2, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 22
    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v7, v4

    aget-wide v9, v8, v14

    mul-double v5, v5, v9

    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    aget-object v10, v7, v4

    add-int/lit8 v18, v14, 0x1

    aget-wide v21, v10, v18

    mul-double v8, v8, v21

    add-double/2addr v5, v8

    if-eqz v15, :cond_9

    .line 23
    aget-object v8, v7, v4

    add-int/lit8 v9, v14, 0x2

    aget-wide v21, v8, v9

    mul-double v21, v21, v12

    add-double v5, v5, v21

    .line 24
    aget-object v8, v7, v4

    aget-wide v21, v8, v9

    mul-double v23, v5, v16

    sub-double v21, v21, v23

    aput-wide v21, v8, v9

    .line 25
    :cond_9
    aget-object v8, v7, v4

    aget-wide v9, v8, v14

    sub-double/2addr v9, v5

    aput-wide v9, v8, v14

    .line 26
    aget-object v7, v7, v4

    aget-wide v8, v7, v18

    mul-double v21, v5, v26

    sub-double v8, v8, v21

    aput-wide v8, v7, v18

    add-int/lit8 v4, v4, 0x1

    move-wide v6, v5

    goto :goto_6

    .line 27
    :cond_a
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v8, 0x0

    :goto_7
    if-gt v8, v4, :cond_c

    .line 28
    iget-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v10, v9, v8

    aget-wide v18, v10, v14

    mul-double v6, v6, v18

    move-wide/from16 v18, v6

    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    aget-object v7, v9, v8

    add-int/lit8 v10, v14, 0x1

    aget-wide v21, v7, v10

    mul-double v5, v5, v21

    add-double v6, v18, v5

    if-eqz v15, :cond_b

    .line 29
    aget-object v5, v9, v8

    add-int/lit8 v18, v14, 0x2

    aget-wide v21, v5, v18

    mul-double v21, v21, v12

    add-double v6, v6, v21

    .line 30
    aget-object v5, v9, v8

    aget-wide v21, v5, v18

    mul-double v23, v6, v16

    sub-double v21, v21, v23

    aput-wide v21, v5, v18

    .line 31
    :cond_b
    aget-object v5, v9, v8

    aget-wide v18, v5, v14

    sub-double v18, v18, v6

    aput-wide v18, v5, v14

    .line 32
    aget-object v5, v9, v8

    aget-wide v18, v5, v10

    mul-double v21, v6, v26

    sub-double v18, v18, v21

    aput-wide v18, v5, v10

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    move-wide/from16 v12, v16

    move-wide/from16 v9, v26

    goto :goto_8

    :cond_d
    move v11, v4

    move-wide/from16 v23, v6

    move-wide/from16 v18, v9

    move-wide/from16 v12, v21

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move v4, v11

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x2

    add-int/2addr v1, v4

    move v3, v1

    :goto_9
    if-gt v3, v2, :cond_10

    .line 33
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v4, v3

    add-int/lit8 v6, v3, -0x2

    aput-wide v16, v5, v6

    if-le v3, v1, :cond_f

    .line 34
    aget-object v4, v4, v3

    add-int/lit8 v5, v3, -0x3

    aput-wide v16, v4, v5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    return-void
.end method

.method private transform()V
    .locals 23

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v7, v0

    .line 2
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getNorm()D

    move-result-wide v8

    .line 3
    new-instance v10, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;-><init>(Lorg/apache/commons/math3/linear/SchurTransformer$1;)V

    add-int/lit8 v11, v7, -0x1

    const/4 v12, 0x0

    move v13, v11

    const/4 v0, 0x0

    :goto_0
    if-ltz v13, :cond_7

    .line 4
    invoke-direct {v6, v13, v8, v9}, Lorg/apache/commons/math3/linear/SchurTransformer;->findSmallSubDiagonalElement(ID)I

    move-result v1

    if-ne v1, v13, :cond_0

    .line 5
    iget-object v0, v6, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v0, v0, v13

    aget-wide v1, v0, v13

    iget-wide v3, v10, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v1, v3

    aput-wide v1, v0, v13

    add-int/lit8 v13, v13, -0x1

    move-wide/from16 v18, v8

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v2, v13, -0x1

    if-ne v1, v2, :cond_5

    .line 6
    iget-object v0, v6, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v0, v2

    aget-wide v3, v1, v2

    aget-object v1, v0, v13

    aget-wide v14, v1, v13

    sub-double/2addr v3, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v14

    mul-double v14, v3, v3

    .line 7
    aget-object v1, v0, v13

    aget-wide v16, v1, v2

    aget-object v1, v0, v2

    aget-wide v18, v1, v13

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 8
    aget-object v1, v0, v13

    aget-wide v16, v1, v13

    move-wide/from16 v18, v8

    iget-wide v8, v10, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double v16, v16, v8

    aput-wide v16, v1, v13

    .line 9
    aget-object v0, v0, v2

    aget-wide v16, v0, v2

    add-double v16, v16, v8

    aput-wide v16, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v5, v14, v0

    if-ltz v5, :cond_4

    .line 10
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    cmpl-double v5, v3, v0

    if-ltz v5, :cond_1

    add-double/2addr v3, v8

    goto :goto_2

    :cond_1
    sub-double/2addr v3, v8

    .line 11
    :goto_2
    iget-object v0, v6, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v0, v0, v13

    aget-wide v8, v0, v2

    .line 12
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    add-double/2addr v0, v14

    div-double/2addr v8, v0

    div-double/2addr v3, v0

    mul-double v0, v8, v8

    mul-double v14, v3, v3

    add-double/2addr v0, v14

    .line 13
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v8, v0

    div-double/2addr v3, v0

    move v0, v2

    :goto_3
    if-ge v0, v7, :cond_2

    .line 14
    iget-object v1, v6, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v1, v2

    aget-wide v14, v5, v0

    .line 15
    aget-object v5, v1, v2

    mul-double v16, v3, v14

    aget-object v20, v1, v13

    aget-wide v21, v20, v0

    mul-double v21, v21, v8

    add-double v16, v16, v21

    aput-wide v16, v5, v0

    .line 16
    aget-object v5, v1, v13

    aget-object v1, v1, v13

    aget-wide v16, v1, v0

    mul-double v16, v16, v3

    mul-double v14, v14, v8

    sub-double v16, v16, v14

    aput-wide v16, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_4
    if-gt v0, v13, :cond_3

    .line 17
    iget-object v1, v6, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v1, v0

    aget-wide v14, v5, v2

    .line 18
    aget-object v5, v1, v0

    mul-double v16, v3, v14

    aget-object v20, v1, v0

    aget-wide v21, v20, v13

    mul-double v21, v21, v8

    add-double v16, v16, v21

    aput-wide v16, v5, v2

    .line 19
    aget-object v5, v1, v0

    aget-object v1, v1, v0

    aget-wide v16, v1, v13

    mul-double v16, v16, v3

    mul-double v14, v14, v8

    sub-double v16, v16, v14

    aput-wide v16, v5, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_5
    if-gt v0, v11, :cond_4

    .line 20
    iget-object v1, v6, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v5, v1, v0

    aget-wide v14, v5, v2

    .line 21
    aget-object v5, v1, v0

    mul-double v16, v3, v14

    aget-object v20, v1, v0

    aget-wide v21, v20, v13

    mul-double v21, v21, v8

    add-double v16, v16, v21

    aput-wide v16, v5, v2

    .line 22
    aget-object v5, v1, v0

    aget-object v1, v1, v0

    aget-wide v16, v1, v13

    mul-double v16, v16, v3

    mul-double v14, v14, v8

    sub-double v16, v16, v14

    aput-wide v16, v5, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v13, -0x2

    goto/16 :goto_1

    :cond_5
    move-wide/from16 v18, v8

    .line 23
    invoke-direct {v6, v1, v13, v0, v10}, Lorg/apache/commons/math3/linear/SchurTransformer;->computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V

    add-int/lit8 v8, v0, 0x1

    const/16 v0, 0x64

    if-gt v8, v0, :cond_6

    const/4 v0, 0x3

    new-array v5, v0, [D

    .line 24
    invoke-direct {v6, v1, v13, v10, v5}, Lorg/apache/commons/math3/linear/SchurTransformer;->initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I

    move-result v2

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v10

    .line 25
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/SchurTransformer;->performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V

    move v0, v8

    :goto_6
    move-wide/from16 v8, v18

    goto/16 :goto_0

    .line 26
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    return-void
.end method


# virtual methods
.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getPT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
