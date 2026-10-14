.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# instance fields
.field private final knots:[D

.field private final n:I

.field private final polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;


# direct methods
.method public constructor <init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    add-int/lit8 v1, v0, 0x1

    .line 6
    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    add-int/lit8 v3, v0, 0x1

    .line 7
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-array p1, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 9
    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 11
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_POINTS_IN_SPLINE_PARTITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 12
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomialSplineDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    return-object v0
.end method

.method public getKnots()[D
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [D

    .line 2
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getN()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    return v0
.end method

.method public getPolynomials()[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    new-array v1, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 2
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public isValidPoint(D)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_1

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v2, v0, v2

    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public polynomialSplineDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v1
.end method

.method public value(D)D
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_2

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v2, v0, v2

    cmpl-double v4, p1, v2

    if-gtz v4, :cond_2

    .line 2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_1
    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v3, v2, v0

    sub-double/2addr p1, v3

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v1, p2, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_2

    iget v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v4, v2, v4

    cmpl-double v6, v0, v4

    if-gtz v6, :cond_2

    .line 8
    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->polynomials:[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 10
    :cond_1
    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v3, v2, v0

    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    aget-wide v2, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->knots:[D

    iget v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->n:I

    aget-wide v3, v2, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method
