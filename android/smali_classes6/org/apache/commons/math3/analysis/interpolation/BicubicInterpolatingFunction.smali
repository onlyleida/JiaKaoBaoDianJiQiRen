.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final AINV:[[D

.field private static final NUM_COEFF:I = 0x10


# instance fields
.field private final splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

.field private final xval:[D

.field private final yval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [[D

    new-array v2, v0, [D

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-array v0, v0, [D

    fill-array-data v0, :array_f

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[[D[[D[[D[[D)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p1

    .line 2
    array-length v6, v5

    move-object/from16 v7, p2

    .line 3
    array-length v8, v7

    if-eqz v6, :cond_a

    if-eqz v8, :cond_a

    .line 4
    array-length v9, v1

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    aget-object v10, v1, v9

    array-length v10, v10

    if-eqz v10, :cond_a

    .line 5
    array-length v10, v1

    if-ne v6, v10, :cond_9

    .line 6
    array-length v10, v2

    if-ne v6, v10, :cond_8

    .line 7
    array-length v10, v3

    if-ne v6, v10, :cond_7

    .line 8
    array-length v10, v4

    if-ne v6, v10, :cond_6

    .line 9
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 10
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 11
    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    .line 12
    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    const/4 v5, 0x1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v8, -0x1

    const/4 v10, 0x2

    new-array v11, v10, [I

    aput v7, v11, v5

    aput v6, v11, v9

    .line 13
    const-class v12, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    iput-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v6, :cond_5

    .line 14
    aget-object v12, v1, v11

    array-length v12, v12

    if-ne v12, v8, :cond_4

    .line 15
    aget-object v12, v2, v11

    array-length v12, v12

    if-ne v12, v8, :cond_3

    .line 16
    aget-object v12, v3, v11

    array-length v12, v12

    if-ne v12, v8, :cond_2

    .line 17
    aget-object v12, v4, v11

    array-length v12, v12

    if-ne v12, v8, :cond_1

    add-int/lit8 v12, v11, 0x1

    .line 18
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v14, v13, v12

    aget-wide v16, v13, v11

    sub-double v14, v14, v16

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v7, :cond_0

    add-int/lit8 v16, v13, 0x1

    .line 19
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v17, v10, v16

    aget-wide v19, v10, v13

    sub-double v17, v17, v19

    mul-double v19, v14, v17

    const/16 v10, 0x10

    new-array v10, v10, [D

    .line 20
    aget-object v21, v1, v11

    aget-wide v22, v21, v13

    aput-wide v22, v10, v9

    aget-object v21, v1, v12

    aget-wide v22, v21, v13

    aput-wide v22, v10, v5

    aget-object v21, v1, v11

    aget-wide v22, v21, v16

    const/16 v21, 0x2

    aput-wide v22, v10, v21

    const/16 v22, 0x3

    aget-object v23, v1, v12

    aget-wide v24, v23, v16

    aput-wide v24, v10, v22

    const/16 v22, 0x4

    aget-object v23, v2, v11

    aget-wide v24, v23, v13

    mul-double v24, v24, v14

    aput-wide v24, v10, v22

    const/16 v22, 0x5

    aget-object v23, v2, v12

    aget-wide v24, v23, v13

    mul-double v24, v24, v14

    aput-wide v24, v10, v22

    const/16 v22, 0x6

    aget-object v23, v2, v11

    aget-wide v24, v23, v16

    mul-double v24, v24, v14

    aput-wide v24, v10, v22

    const/16 v22, 0x7

    aget-object v23, v2, v12

    aget-wide v24, v23, v16

    mul-double v24, v24, v14

    aput-wide v24, v10, v22

    const/16 v22, 0x8

    aget-object v23, v3, v11

    aget-wide v24, v23, v13

    mul-double v24, v24, v17

    aput-wide v24, v10, v22

    const/16 v22, 0x9

    aget-object v23, v3, v12

    aget-wide v24, v23, v13

    mul-double v24, v24, v17

    aput-wide v24, v10, v22

    const/16 v22, 0xa

    aget-object v23, v3, v11

    aget-wide v24, v23, v16

    mul-double v24, v24, v17

    aput-wide v24, v10, v22

    const/16 v22, 0xb

    aget-object v23, v3, v12

    aget-wide v24, v23, v16

    mul-double v24, v24, v17

    aput-wide v24, v10, v22

    const/16 v17, 0xc

    aget-object v18, v4, v11

    aget-wide v22, v18, v13

    mul-double v22, v22, v19

    aput-wide v22, v10, v17

    const/16 v17, 0xd

    aget-object v18, v4, v12

    aget-wide v22, v18, v13

    mul-double v22, v22, v19

    aput-wide v22, v10, v17

    const/16 v17, 0xe

    aget-object v18, v4, v11

    aget-wide v22, v18, v16

    mul-double v22, v22, v19

    aput-wide v22, v10, v17

    const/16 v17, 0xf

    aget-object v18, v4, v12

    aget-wide v22, v18, v16

    mul-double v22, v22, v19

    aput-wide v22, v10, v17

    .line 21
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v5, v5, v11

    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    invoke-direct {v0, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;-><init>([D)V

    aput-object v9, v5, v13

    move/from16 v13, v16

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    goto/16 :goto_1

    :cond_0
    move v11, v12

    goto/16 :goto_0

    .line 22
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v4, v11

    array-length v2, v2

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 23
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v3, v11

    array-length v2, v2

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 24
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v2, v11

    array-length v2, v2

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 25
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v11

    array-length v1, v1

    invoke-direct {v2, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_5
    return-void

    .line 26
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v4

    invoke-direct {v1, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 27
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v3

    invoke-direct {v1, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 28
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v2

    invoke-direct {v1, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 29
    :cond_9
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v2, v6, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 30
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method

.method private computeSplineCoefficients([D)[D
    .locals 12

    const/16 v0, 0x10

    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const-wide/16 v4, 0x0

    .line 1
    sget-object v6, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

    aget-object v6, v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    .line 2
    aget-wide v8, v6, v7

    aget-wide v10, p1, v7

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3
    :cond_0
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private searchIndex(D[D)I
    .locals 3

    .line 1
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    if-gez v0, :cond_0

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x2

    return p1

    .line 3
    :cond_0
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    return v0

    .line 4
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aget-wide v1, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p3, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-gtz v0, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v4, p1, v1

    cmpg-double p2, p3, v4

    if-ltz p2, :cond_1

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-wide v4, p1, p2

    cmpl-double p1, p3, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public value(DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    invoke-direct {p0, p3, p4, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v1

    .line 3
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v3, v2, v0

    sub-double/2addr p1, v3

    add-int/lit8 v3, v0, 0x1

    aget-wide v3, v2, v3

    aget-wide v5, v2, v0

    sub-double/2addr v3, v5

    div-double/2addr p1, v3

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v3, v2, v1

    sub-double/2addr p3, v3

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, v2, v3

    aget-wide v5, v2, v1

    sub-double/2addr v3, v5

    div-double/2addr p3, v3

    .line 5
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method
