.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v5, p4

    .line 2
    const-class v0, D

    array-length v1, v13

    if-eqz v1, :cond_6

    array-length v1, v14

    if-eqz v1, :cond_6

    array-length v1, v15

    if-eqz v1, :cond_6

    array-length v1, v5

    if-eqz v1, :cond_6

    .line 3
    array-length v1, v13

    array-length v2, v5

    if-ne v1, v2, :cond_5

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 7
    array-length v1, v13

    .line 8
    array-length v2, v14

    .line 9
    array-length v3, v15

    const/4 v4, 0x3

    new-array v6, v4, [I

    const/4 v7, 0x2

    aput v3, v6, v7

    const/4 v8, 0x1

    aput v2, v6, v8

    const/4 v9, 0x0

    aput v1, v6, v9

    .line 10
    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[D

    new-array v10, v4, [I

    aput v3, v10, v7

    aput v2, v10, v8

    aput v1, v10, v9

    .line 11
    invoke-static {v0, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[D

    new-array v11, v4, [I

    aput v3, v11, v7

    aput v2, v11, v8

    aput v1, v11, v9

    .line 12
    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[[D

    new-array v12, v4, [I

    aput v3, v12, v7

    aput v2, v12, v8

    aput v1, v12, v9

    .line 13
    invoke-static {v0, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[[D

    new-array v9, v4, [I

    aput v3, v9, v7

    aput v2, v9, v8

    const/16 v16, 0x0

    aput v1, v9, v16

    .line 14
    invoke-static {v0, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, [[[D

    new-array v9, v4, [I

    aput v3, v9, v7

    aput v2, v9, v8

    aput v1, v9, v16

    .line 15
    invoke-static {v0, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, [[[D

    new-array v4, v4, [I

    aput v3, v4, v7

    aput v2, v4, v8

    aput v1, v4, v16

    .line 16
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[[D

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_4

    .line 17
    array-length v4, v14

    aget-object v7, v5, v0

    array-length v7, v7

    if-ne v4, v7, :cond_3

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v7, v0, -0x1

    .line 18
    aget-wide v19, v13, v4

    .line 19
    aget-wide v21, v13, v7

    sub-double v19, v19, v21

    move/from16 v21, v1

    const/4 v9, 0x1

    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-ge v9, v1, :cond_2

    .line 20
    array-length v1, v15

    aget-object v22, v5, v0

    aget-object v8, v22, v9

    array-length v8, v8

    if-ne v1, v8, :cond_1

    add-int/lit8 v1, v9, 0x1

    add-int/lit8 v8, v9, -0x1

    .line 21
    aget-wide v24, v14, v1

    .line 22
    aget-wide v26, v14, v8

    sub-double v24, v24, v26

    mul-double v26, v19, v24

    move/from16 v22, v2

    const/4 v2, 0x1

    const/16 v23, 0x1

    :goto_2
    add-int/lit8 v13, v3, -0x1

    if-ge v2, v13, :cond_0

    add-int/lit8 v13, v2, 0x1

    add-int/lit8 v28, v2, -0x1

    .line 23
    aget-wide v29, v15, v13

    .line 24
    aget-wide v31, v15, v28

    sub-double v29, v29, v31

    .line 25
    aget-object v31, v6, v0

    aget-object v31, v31, v9

    aget-object v32, v5, v4

    aget-object v32, v32, v9

    aget-wide v33, v32, v2

    aget-object v32, v5, v7

    aget-object v32, v32, v9

    aget-wide v35, v32, v2

    sub-double v33, v33, v35

    div-double v33, v33, v19

    aput-wide v33, v31, v2

    .line 26
    aget-object v31, v10, v0

    aget-object v31, v31, v9

    aget-object v32, v5, v0

    aget-object v32, v32, v1

    aget-wide v33, v32, v2

    aget-object v32, v5, v0

    aget-object v32, v32, v8

    aget-wide v35, v32, v2

    sub-double v33, v33, v35

    div-double v33, v33, v24

    aput-wide v33, v31, v2

    .line 27
    aget-object v31, v11, v0

    aget-object v31, v31, v9

    aget-object v32, v5, v0

    aget-object v32, v32, v9

    aget-wide v33, v32, v13

    aget-object v32, v5, v0

    aget-object v32, v32, v9

    aget-wide v35, v32, v28

    sub-double v33, v33, v35

    div-double v33, v33, v29

    aput-wide v33, v31, v2

    mul-double v31, v19, v29

    mul-double v33, v24, v29

    .line 28
    aget-object v35, v12, v0

    aget-object v35, v35, v9

    aget-object v36, v5, v4

    aget-object v36, v36, v1

    aget-wide v37, v36, v2

    aget-object v36, v5, v4

    aget-object v36, v36, v8

    aget-wide v39, v36, v2

    sub-double v37, v37, v39

    aget-object v36, v5, v7

    aget-object v36, v36, v1

    aget-wide v39, v36, v2

    sub-double v37, v37, v39

    aget-object v36, v5, v7

    aget-object v36, v36, v8

    aget-wide v39, v36, v2

    add-double v37, v37, v39

    div-double v37, v37, v26

    aput-wide v37, v35, v2

    .line 29
    aget-object v35, v17, v0

    aget-object v35, v35, v9

    aget-object v36, v5, v4

    aget-object v36, v36, v9

    aget-wide v37, v36, v13

    aget-object v36, v5, v4

    aget-object v36, v36, v9

    aget-wide v39, v36, v28

    sub-double v37, v37, v39

    aget-object v36, v5, v7

    aget-object v36, v36, v9

    aget-wide v39, v36, v13

    sub-double v37, v37, v39

    aget-object v36, v5, v7

    aget-object v36, v36, v9

    aget-wide v39, v36, v28

    add-double v37, v37, v39

    div-double v37, v37, v31

    aput-wide v37, v35, v2

    .line 30
    aget-object v31, v18, v0

    aget-object v31, v31, v9

    aget-object v32, v5, v0

    aget-object v32, v32, v1

    aget-wide v35, v32, v13

    aget-object v32, v5, v0

    aget-object v32, v32, v1

    aget-wide v37, v32, v28

    sub-double v35, v35, v37

    aget-object v32, v5, v0

    aget-object v32, v32, v8

    aget-wide v37, v32, v13

    sub-double v35, v35, v37

    aget-object v32, v5, v0

    aget-object v32, v32, v8

    aget-wide v37, v32, v28

    add-double v35, v35, v37

    div-double v35, v35, v33

    aput-wide v35, v31, v2

    mul-double v29, v29, v26

    .line 31
    aget-object v31, v16, v0

    aget-object v31, v31, v9

    aget-object v32, v5, v4

    aget-object v32, v32, v1

    aget-wide v33, v32, v13

    aget-object v32, v5, v4

    aget-object v32, v32, v8

    aget-wide v35, v32, v13

    sub-double v33, v33, v35

    aget-object v32, v5, v7

    aget-object v32, v32, v1

    aget-wide v35, v32, v13

    sub-double v33, v33, v35

    aget-object v32, v5, v7

    aget-object v32, v32, v8

    aget-wide v35, v32, v13

    add-double v33, v33, v35

    aget-object v32, v5, v4

    aget-object v32, v32, v1

    aget-wide v35, v32, v28

    sub-double v33, v33, v35

    aget-object v32, v5, v4

    aget-object v32, v32, v8

    aget-wide v35, v32, v28

    add-double v33, v33, v35

    aget-object v32, v5, v7

    aget-object v32, v32, v1

    aget-wide v35, v32, v28

    add-double v33, v33, v35

    aget-object v32, v5, v7

    aget-object v32, v32, v8

    aget-wide v35, v32, v28

    sub-double v33, v33, v35

    div-double v33, v33, v29

    aput-wide v33, v31, v2

    move v2, v13

    goto/16 :goto_2

    :cond_0
    move-object/from16 v13, p1

    move v9, v1

    move/from16 v2, v22

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 32
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v15

    aget-object v0, v5, v0

    aget-object v0, v0, v9

    array-length v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    move-object/from16 v13, p1

    move v0, v4

    move/from16 v1, v21

    goto/16 :goto_0

    .line 33
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v14

    aget-object v0, v5, v0

    array-length v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 34
    :cond_4
    new-instance v19, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v16

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;[D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[D[D[D)V

    return-object v19

    .line 35
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v1, p1

    array-length v1, v1

    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 36
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
