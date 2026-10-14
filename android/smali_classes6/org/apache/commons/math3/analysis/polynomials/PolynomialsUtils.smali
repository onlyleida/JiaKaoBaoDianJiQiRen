.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;,
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
    }
.end annotation


# static fields
.field private static final CHEBYSHEV_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final HERMITE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final JACOBI_COEFFICIENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LAGUERRE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGENDRE_COEFFICIENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    .line 2
    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;",
            ")",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_0

    .line 3
    invoke-static {p0, v0, p2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->computeUpToDegree(IILorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;Ljava/util/List;)V

    .line 4
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p2, p0, 0x1

    mul-int v0, p0, p2

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    new-array p2, p2, [D

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v0, v1

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static computeUpToDegree(IILorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;)V"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    mul-int v0, v0, p1

    const/4 v1, 0x2

    .line 1
    div-int/2addr v0, v1

    :goto_0
    if-ge p1, p0, :cond_1

    add-int v2, v0, p1

    .line 2
    invoke-interface {p2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;->generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    .line 3
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 4
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v6, 0x0

    .line 5
    aget-object v7, v3, v6

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const/4 v7, 0x1

    :goto_1
    if-ge v7, p1, :cond_0

    add-int v8, v2, v7

    .line 6
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int v9, v0, v7

    .line 7
    invoke-interface {p3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 8
    aget-object v10, v3, v6

    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v10

    aget-object v11, v3, v5

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object v4, v8

    goto :goto_1

    :cond_0
    add-int v0, v2, p1

    .line 9
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 10
    aget-object v6, v3, v6

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    move v0, v2

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static createChebyshevPolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->CHEBYSHEV_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object p0

    return-object p0
.end method

.method public static createHermitePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->HERMITE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object p0

    return-object p0
.end method

.method public static createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;-><init>(II)V

    .line 2
    sget-object v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->JACOBI_COEFFICIENTS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    sub-int v4, p1, p2

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v4, p1, 0x2

    add-int/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;-><init>(II)V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object p0

    return-object p0
.end method

.method public static createLaguerrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LAGUERRE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$3;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$3;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object p0

    return-object p0
.end method

.method public static createLegendrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->LEGENDRE_COEFFICIENTS:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->buildPolynomial(ILjava/util/List;Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object p0

    return-object p0
.end method

.method public static shift([DD)[D
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [D

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    .line 3
    const-class v5, I

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-gt v6, v5, :cond_0

    .line 4
    aget-object v7, v2, v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v8

    long-to-int v9, v8

    aput v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 5
    aget-wide v6, v1, v4

    aget-wide v8, p0, v5

    invoke-static {p1, p2, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v1, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    sub-int/2addr v0, v3

    :goto_3
    if-ge v4, v0, :cond_4

    move v3, v4

    :goto_4
    if-ge v3, v0, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 6
    aget-wide v6, v1, v5

    add-int/lit8 v8, v3, 0x1

    aget-object v9, v2, v8

    sub-int/2addr v3, v4

    aget v9, v9, v3

    int-to-double v9, v9

    aget-wide v11, p0, v8

    mul-double v9, v9, v11

    invoke-static {p1, p2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v11

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    aput-wide v6, v1, v5

    move v3, v8

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-object v1
.end method
