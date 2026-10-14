.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# instance fields
.field private coefficients:[D

.field private coefficientsComputed:Z

.field private final x:[D

.field private final y:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    .line 3
    array-length v1, p2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-boolean v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    .line 7
    invoke-static {p1, p2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p2, p1, [[D

    aput-object v1, p2, v3

    .line 8
    invoke-static {v0, p2}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 9
    invoke-static {v0, v1, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    :cond_0
    return-void
.end method

.method public static evaluate([D[DD)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    array-length v1, p0

    new-array v1, v1, [D

    .line 4
    array-length v2, p1

    new-array v2, v2, [D

    .line 5
    array-length v3, p0

    invoke-static {p0, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length p0, p1

    invoke-static {p1, v0, v2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    new-array p1, p0, [[D

    aput-object v2, p1, v0

    .line 7
    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 8
    invoke-static {v1, v2, p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 9
    invoke-static {v1, v2, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static evaluateInternal([D[DD)D
    .locals 21

    move-object/from16 v0, p0

    .line 1
    array-length v1, v0

    .line 2
    new-array v2, v1, [D

    .line 3
    new-array v3, v1, [D

    const/4 v4, 0x0

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    .line 4
    aget-wide v9, p1, v7

    aput-wide v9, v2, v7

    .line 5
    aget-wide v9, p1, v7

    aput-wide v9, v3, v7

    .line 6
    aget-wide v9, v0, v7

    sub-double v9, p2, v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-gez v11, :cond_0

    move v8, v7

    move-wide v5, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7
    :cond_1
    aget-wide v5, p1, v8

    const/4 v7, 0x1

    :goto_1
    if-ge v7, v1, :cond_4

    const/4 v9, 0x0

    :goto_2
    sub-int v10, v1, v7

    if-ge v9, v10, :cond_2

    .line 8
    aget-wide v10, v0, v9

    sub-double v10, v10, p2

    add-int v12, v7, v9

    .line 9
    aget-wide v13, v0, v12

    sub-double v13, v13, p2

    .line 10
    aget-wide v15, v0, v9

    aget-wide v17, v0, v12

    sub-double v15, v15, v17

    add-int/lit8 v12, v9, 0x1

    .line 11
    aget-wide v17, v2, v12

    aget-wide v19, v3, v9

    sub-double v17, v17, v19

    div-double v17, v17, v15

    mul-double v10, v10, v17

    .line 12
    aput-wide v10, v2, v9

    mul-double v13, v13, v17

    .line 13
    aput-wide v13, v3, v9

    move v9, v12

    goto :goto_2

    :cond_2
    int-to-double v11, v8

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v10, v10, 0x1

    int-to-double v9, v10

    mul-double v9, v9, v13

    cmpg-double v13, v11, v9

    if-gez v13, :cond_3

    .line 14
    aget-wide v9, v2, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 15
    aget-wide v9, v3, v8

    :goto_3
    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-wide v5
.end method

.method public static verifyInterpolationArray([D[DZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 2
    array-length p1, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    .line 3
    sget-object p1, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WRONG_NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, v1, p0, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 5
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method


# virtual methods
.method protected computeCoefficients()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->degree()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 2
    new-array v3, v1, [D

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 3
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 4
    new-array v4, v4, [D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 5
    aput-wide v5, v4, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_2

    move v8, v7

    :goto_2
    if-lez v8, :cond_1

    add-int/lit8 v9, v8, -0x1

    .line 6
    aget-wide v9, v4, v9

    aget-wide v11, v4, v8

    iget-object v13, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v14, v13, v7

    mul-double v11, v11, v14

    sub-double/2addr v9, v11

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 7
    :cond_1
    aget-wide v8, v4, v3

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v11, v10, v7

    neg-double v10, v11

    mul-double v8, v8, v10

    aput-wide v8, v4, v3

    add-int/lit8 v7, v7, 0x1

    .line 8
    aput-wide v5, v4, v7

    goto :goto_1

    .line 9
    :cond_2
    new-array v7, v1, [D

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_6

    move-wide v10, v5

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_4

    if-eq v8, v9, :cond_3

    .line 10
    iget-object v12, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v13, v12, v8

    aget-wide v15, v12, v9

    sub-double/2addr v13, v15

    mul-double v10, v10, v13

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 11
    :cond_4
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    aget-wide v12, v9, v8

    div-double/2addr v12, v10

    add-int/lit8 v9, v1, -0x1

    .line 12
    aget-wide v10, v4, v1

    aput-wide v10, v7, v9

    .line 13
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    aget-wide v14, v10, v9

    aget-wide v16, v7, v9

    mul-double v16, v16, v12

    add-double v14, v14, v16

    aput-wide v14, v10, v9

    add-int/lit8 v9, v1, -0x2

    :goto_5
    if-ltz v9, :cond_5

    add-int/lit8 v10, v9, 0x1

    .line 14
    aget-wide v14, v4, v10

    aget-wide v10, v7, v10

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v17, v3, v8

    mul-double v10, v10, v17

    add-double/2addr v14, v10

    aput-wide v14, v7, v9

    .line 15
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    aget-wide v10, v3, v9

    aget-wide v14, v7, v9

    mul-double v14, v14, v12

    add-double/2addr v10, v14

    aput-wide v10, v3, v9

    add-int/lit8 v9, v9, -0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_3

    .line 16
    :cond_6
    iput-boolean v2, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    return-void
.end method

.method public degree()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCoefficients()[D
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->computeCoefficients()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    array-length v1, v0

    new-array v1, v1, [D

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getInterpolatingPoints()[D
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v1, v0

    new-array v1, v1, [D

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getInterpolatingValues()[D
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    array-length v1, v0

    new-array v1, v1, [D

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public value(D)D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide p1

    return-wide p1
.end method
