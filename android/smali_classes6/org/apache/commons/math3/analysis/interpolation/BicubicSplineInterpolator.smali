.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final initializeDerivatives:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->initializeDerivatives:Z

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
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 2
    const-class v1, D

    array-length v5, v2

    if-eqz v5, :cond_c

    array-length v5, v3

    if-eqz v5, :cond_c

    array-length v5, v4

    if-eqz v5, :cond_c

    .line 3
    array-length v5, v2

    array-length v6, v4

    if-ne v5, v6, :cond_b

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    array-length v5, v2

    .line 7
    array-length v6, v3

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x1

    aput v5, v8, v9

    const/4 v10, 0x0

    aput v6, v8, v10

    .line 8
    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_2

    .line 9
    aget-object v12, v4, v11

    array-length v12, v12

    if-ne v12, v6, :cond_1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_0

    .line 10
    aget-object v13, v8, v12

    aget-object v14, v4, v11

    aget-wide v15, v14, v12

    aput-wide v15, v13, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v4, v11

    array-length v2, v2

    invoke-direct {v1, v2, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 12
    :cond_2
    new-instance v11, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v11}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    .line 13
    new-array v12, v6, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v6, :cond_3

    .line 14
    aget-object v14, v8, v13

    invoke-virtual {v11, v2, v14}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 15
    :cond_3
    new-array v8, v5, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v5, :cond_4

    .line 16
    aget-object v14, v4, v13

    invoke-virtual {v11, v3, v14}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v14

    aput-object v14, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    new-array v11, v7, [I

    aput v6, v11, v9

    aput v5, v11, v10

    .line 17
    invoke-static {v1, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v6, :cond_6

    .line 18
    aget-object v14, v12, v13

    invoke-virtual {v14}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_5

    .line 19
    aget-object v16, v11, v15

    move-object/from16 v17, v11

    aget-wide v10, v2, v15

    invoke-interface {v14, v10, v11}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v10

    aput-wide v10, v16, v13

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v17

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v17, v11

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v17, v11

    new-array v10, v7, [I

    aput v6, v10, v9

    const/4 v11, 0x0

    aput v5, v10, v11

    .line 20
    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_8

    .line 21
    aget-object v12, v8, v11

    invoke-virtual {v12}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v12

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v6, :cond_7

    .line 22
    aget-object v14, v10, v11

    move-object/from16 v16, v10

    aget-wide v9, v3, v13

    invoke-interface {v12, v9, v10}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v9

    aput-wide v9, v14, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v16

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v16, v10

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v16, v10

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v11, 0x0

    aput v5, v7, v11

    .line 23
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v5, :cond_a

    .line 24
    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v8

    .line 25
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v6, :cond_9

    .line 26
    invoke-direct {v0, v10, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v12

    .line 27
    invoke-direct {v0, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v13

    .line 28
    aget-object v14, v7, v1

    aget-object v15, v4, v8

    aget-wide v18, v15, v12

    aget-object v15, v4, v8

    aget-wide v20, v15, v13

    sub-double v18, v18, v20

    aget-object v15, v4, v9

    aget-wide v20, v15, v12

    sub-double v18, v18, v20

    aget-object v15, v4, v9

    aget-wide v20, v15, v13

    add-double v18, v18, v20

    aget-wide v20, v2, v8

    aget-wide v22, v2, v9

    sub-double v20, v20, v22

    aget-wide v22, v3, v12

    aget-wide v12, v3, v13

    sub-double v22, v22, v12

    mul-double v20, v20, v22

    div-double v18, v18, v20

    aput-wide v18, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 29
    :cond_a
    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    iget-boolean v8, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->initializeDerivatives:Z

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    return-object v9

    .line 30
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v2

    array-length v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 31
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method
