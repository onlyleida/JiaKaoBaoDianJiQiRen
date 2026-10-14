.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextIndex(II)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method private previousIndex(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 2
    const-class v1, D

    array-length v6, v2

    if-eqz v6, :cond_15

    array-length v6, v3

    if-eqz v6, :cond_15

    array-length v6, v4

    if-eqz v6, :cond_15

    array-length v6, v5

    if-eqz v6, :cond_15

    .line 3
    array-length v6, v2

    array-length v7, v5

    if-ne v6, v7, :cond_14

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 7
    array-length v6, v2

    .line 8
    array-length v7, v3

    .line 9
    array-length v8, v4

    const/4 v9, 0x3

    new-array v10, v9, [I

    const/4 v11, 0x2

    aput v7, v10, v11

    const/4 v12, 0x1

    aput v6, v10, v12

    const/4 v13, 0x0

    aput v8, v10, v13

    .line 10
    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[D

    new-array v14, v9, [I

    aput v6, v14, v11

    aput v8, v14, v12

    aput v7, v14, v13

    .line 11
    invoke-static {v1, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[D

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v6, :cond_4

    .line 12
    aget-object v13, v5, v15

    array-length v13, v13

    if-ne v13, v7, :cond_3

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v7, :cond_2

    .line 13
    aget-object v17, v5, v15

    aget-object v11, v17, v13

    array-length v11, v11

    if-ne v11, v8, :cond_1

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_0

    .line 14
    aget-object v17, v5, v15

    aget-object v17, v17, v13

    aget-wide v19, v17, v11

    .line 15
    aget-object v17, v10, v11

    aget-object v17, v17, v15

    aput-wide v19, v17, v13

    .line 16
    aget-object v17, v14, v13

    aget-object v17, v17, v11

    aput-wide v19, v17, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x2

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v15

    aget-object v2, v2, v13

    array-length v2, v2

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x2

    const/4 v13, 0x0

    goto :goto_0

    .line 18
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v15

    array-length v2, v2

    invoke-direct {v1, v2, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 19
    :cond_4
    new-instance v11, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    .line 20
    new-array v13, v6, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v6, :cond_5

    .line 21
    aget-object v12, v5, v15

    invoke-virtual {v11, v3, v4, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v12

    aput-object v12, v13, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_3

    .line 22
    :cond_5
    new-array v12, v7, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v7, :cond_6

    .line 23
    aget-object v9, v14, v15

    invoke-virtual {v11, v4, v2, v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v9

    aput-object v9, v12, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x3

    goto :goto_4

    .line 24
    :cond_6
    new-array v9, v8, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v8, :cond_7

    .line 25
    aget-object v15, v10, v14

    invoke-virtual {v11, v2, v3, v15}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v15

    aput-object v15, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x3

    new-array v10, v14, [I

    const/4 v11, 0x2

    aput v8, v10, v11

    const/4 v15, 0x1

    aput v7, v10, v15

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 26
    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[D

    new-array v5, v14, [I

    aput v8, v5, v11

    aput v7, v5, v15

    aput v6, v5, v16

    .line 27
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, [[[D

    new-array v5, v14, [I

    aput v8, v5, v11

    aput v7, v5, v15

    aput v6, v5, v16

    .line 28
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, [[[D

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v8, :cond_a

    .line 29
    aget-object v14, v9, v5

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_9

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    .line 30
    aget-wide v12, v2, v15

    move-object/from16 v23, v9

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v7, :cond_8

    move-object/from16 v24, v1

    .line 31
    aget-wide v0, v3, v9

    .line 32
    aget-object v25, v10, v15

    aget-object v25, v25, v9

    invoke-virtual {v14, v12, v13, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeX(DD)D

    move-result-wide v26

    aput-wide v26, v25, v5

    .line 33
    aget-object v25, v20, v15

    aget-object v25, v25, v9

    invoke-virtual {v14, v12, v13, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v26

    aput-wide v26, v25, v5

    .line 34
    aget-object v25, v11, v15

    aget-object v25, v25, v9

    invoke-virtual {v14, v12, v13, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v0

    aput-wide v0, v25, v5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    goto :goto_8

    :cond_8
    move-object/from16 v24, v1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v9, v23

    goto :goto_7

    :cond_9
    move-object/from16 v24, v1

    move-object/from16 v23, v9

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_a
    move-object/from16 v24, v1

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v5, 0x2

    aput v8, v1, v5

    const/4 v9, 0x1

    aput v7, v1, v9

    const/4 v12, 0x0

    aput v6, v1, v12

    move-object/from16 v13, v24

    .line 35
    invoke-static {v13, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[[D

    new-array v1, v0, [I

    aput v8, v1, v5

    aput v7, v1, v9

    aput v6, v1, v12

    .line 36
    invoke-static {v13, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v6, :cond_d

    .line 37
    aget-object v5, v21, v1

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v7, :cond_c

    move-object v15, v11

    .line 38
    aget-wide v11, v3, v9

    move-object/from16 v23, v15

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v8, :cond_b

    .line 39
    aget-wide v2, v4, v15

    .line 40
    aget-object v24, v14, v1

    aget-object v24, v24, v9

    invoke-virtual {v5, v11, v12, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v25

    aput-wide v25, v24, v15

    .line 41
    aget-object v24, v0, v1

    aget-object v24, v24, v9

    invoke-virtual {v5, v11, v12, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v2

    aput-wide v2, v24, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_b

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, v23

    goto :goto_a

    :cond_c
    move-object/from16 v23, v11

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_9

    :cond_d
    move-object/from16 v23, v11

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v1, 0x2

    aput v8, v2, v1

    const/4 v1, 0x1

    aput v7, v2, v1

    const/4 v1, 0x0

    aput v6, v2, v1

    .line 42
    invoke-static {v13, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [[[D

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v7, :cond_10

    .line 43
    aget-object v2, v22, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v8, :cond_f

    move-object v9, v14

    .line 44
    aget-wide v14, v4, v3

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v6, :cond_e

    move-object/from16 v12, p1

    move-object/from16 v24, v9

    move-object/from16 v21, v10

    .line 45
    aget-wide v9, v12, v5

    .line 46
    aget-object v25, v11, v5

    aget-object v25, v25, v1

    invoke-virtual {v2, v14, v15, v9, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v9

    aput-wide v9, v25, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v21

    move-object/from16 v9, v24

    goto :goto_e

    :cond_e
    move-object/from16 v12, p1

    move-object/from16 v24, v9

    move-object/from16 v21, v10

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v24

    goto :goto_d

    :cond_f
    move-object/from16 v12, p1

    move-object/from16 v21, v10

    move-object/from16 v24, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v12, p1

    move-object/from16 v21, v10

    move-object/from16 v24, v14

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x2

    aput v8, v1, v2

    const/4 v2, 0x1

    aput v7, v1, v2

    const/16 v16, 0x0

    aput v6, v1, v16

    .line 47
    invoke-static {v13, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[[D

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v6, :cond_13

    move-object/from16 v14, p0

    .line 48
    invoke-direct {v14, v1, v6}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v2

    .line 49
    invoke-direct {v14, v1}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v7, :cond_12

    .line 50
    invoke-direct {v14, v5, v7}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v9

    .line 51
    invoke-direct {v14, v5}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v10

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v8, :cond_11

    .line 52
    invoke-direct {v14, v15, v8}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v17

    .line 53
    invoke-direct {v14, v15}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v18

    .line 54
    aget-object v19, v13, v1

    aget-object v19, v19, v5

    move/from16 v22, v6

    move-object/from16 v6, p4

    aget-object v25, v6, v2

    aget-object v25, v25, v9

    aget-wide v26, v25, v17

    aget-object v25, v6, v2

    aget-object v25, v25, v10

    aget-wide v28, v25, v17

    sub-double v26, v26, v28

    aget-object v25, v6, v3

    aget-object v25, v25, v9

    aget-wide v28, v25, v17

    sub-double v26, v26, v28

    aget-object v25, v6, v3

    aget-object v25, v25, v10

    aget-wide v28, v25, v17

    add-double v26, v26, v28

    aget-object v25, v6, v2

    aget-object v25, v25, v9

    aget-wide v28, v25, v18

    sub-double v26, v26, v28

    aget-object v25, v6, v2

    aget-object v25, v25, v10

    aget-wide v28, v25, v18

    add-double v26, v26, v28

    aget-object v25, v6, v3

    aget-object v25, v25, v9

    aget-wide v28, v25, v18

    add-double v26, v26, v28

    aget-object v25, v6, v3

    aget-object v25, v25, v10

    aget-wide v28, v25, v18

    sub-double v26, v26, v28

    aget-wide v28, v12, v2

    aget-wide v30, v12, v3

    sub-double v28, v28, v30

    aget-wide v30, p2, v9

    aget-wide v32, p2, v10

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    aget-wide v30, v4, v17

    aget-wide v17, v4, v18

    sub-double v30, v30, v17

    mul-double v28, v28, v30

    div-double v26, v26, v28

    aput-wide v26, v19, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v22

    goto :goto_11

    :cond_11
    move/from16 v22, v6

    move-object/from16 v6, p4

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v22

    goto/16 :goto_10

    :cond_12
    move/from16 v22, v6

    move-object/from16 v6, p4

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v22

    goto/16 :goto_f

    :cond_13
    move-object/from16 v14, p0

    move-object/from16 v6, p4

    .line 55
    new-instance v15, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move-object/from16 v8, v24

    move-object/from16 v9, v23

    move-object v10, v11

    move-object v11, v0

    move-object v12, v13

    invoke-direct/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    return-object v15

    :cond_14
    move-object v14, v0

    move-object v12, v2

    move-object v6, v5

    .line 56
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v12

    array-length v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_15
    move-object v14, v0

    .line 57
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
