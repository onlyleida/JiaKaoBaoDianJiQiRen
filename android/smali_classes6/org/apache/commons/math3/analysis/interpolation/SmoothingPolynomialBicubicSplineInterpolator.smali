.class public Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final xDegree:I

.field private final xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

.field private final yDegree:I

.field private final yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>()V

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xDegree:I

    .line 5
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yDegree:I

    .line 6
    new-instance p1, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    mul-double v4, v4, v2

    invoke-direct {p1, v0, v1, v4, v5}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;-><init>(DD)V

    .line 7
    new-instance p2, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    .line 8
    new-instance p2, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 10
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p2
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    const-class v4, D

    array-length v5, v1

    if-eqz v5, :cond_b

    array-length v5, v2

    if-eqz v5, :cond_b

    array-length v5, v3

    if-eqz v5, :cond_b

    .line 3
    array-length v5, v1

    array-length v6, v3

    if-ne v5, v6, :cond_a

    .line 4
    array-length v5, v1

    .line 5
    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_1

    .line 6
    aget-object v9, v3, v8

    array-length v9, v9

    if-ne v9, v6, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v3, v8

    array-length v2, v2

    invoke-direct {v1, v2, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 8
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 9
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 10
    new-array v8, v6, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v9, v6, :cond_3

    .line 11
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v11}, Lorg/apache/commons/math3/fitting/CurveFitter;->clearObservations()V

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_2

    .line 12
    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    aget-wide v15, v1, v11

    aget-object v17, v3, v11

    aget-wide v18, v17, v9

    move-wide/from16 v17, v18

    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math3/fitting/CurveFitter;->addObservedPoint(DDD)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 13
    :cond_2
    new-instance v11, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    iget v13, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xDegree:I

    add-int/2addr v13, v10

    new-array v10, v13, [D

    invoke-virtual {v12, v10}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v10

    invoke-direct {v11, v10}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    new-array v9, v3, [I

    aput v6, v9, v10

    aput v5, v9, v7

    .line 14
    invoke-static {v4, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_5

    .line 15
    aget-object v12, v8, v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v5, :cond_4

    .line 16
    aget-object v14, v9, v13

    move-object/from16 v16, v8

    aget-wide v7, v1, v13

    invoke-virtual {v12, v7, v8}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v7

    aput-wide v7, v14, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v16, v8

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_3

    .line 17
    :cond_5
    new-array v7, v5, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_7

    .line 18
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v11}, Lorg/apache/commons/math3/fitting/CurveFitter;->clearObservations()V

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_6

    .line 19
    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    aget-wide v19, v2, v11

    aget-object v13, v9, v8

    aget-wide v21, v13, v11

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v22}, Lorg/apache/commons/math3/fitting/CurveFitter;->addObservedPoint(DDD)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 20
    :cond_6
    new-instance v11, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    iget v13, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yDegree:I

    add-int/2addr v13, v10

    new-array v13, v13, [D

    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v11, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    new-array v3, v3, [I

    aput v6, v3, v10

    const/4 v8, 0x0

    aput v5, v3, v8

    .line 21
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_9

    .line 22
    aget-object v9, v7, v4

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_8

    .line 23
    aget-object v11, v3, v4

    aget-wide v12, v2, v10

    invoke-virtual {v9, v12, v13}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v12

    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 24
    :cond_9
    invoke-super {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v1

    return-object v1

    .line 25
    :cond_a
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v3, v3

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 26
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method
