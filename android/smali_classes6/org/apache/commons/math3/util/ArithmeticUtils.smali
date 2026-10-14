.class public final Lorg/apache/commons/math3/util/ArithmeticUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAndCheck(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int p0, v0

    return p0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static addAndCheck(JJ)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    add-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v4

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    return-wide v0

    .line 3
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-direct {v0, p4, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static binomialCoefficient(II)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static binomialCoefficientDouble(II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public static binomialCoefficientLog(II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public static factorial(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static factorialDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static factorialLog(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static gcd(II)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    int-to-long v4, p0

    int-to-long v6, p1

    if-gez p0, :cond_2

    if-ne v2, p0, :cond_1

    move v8, p0

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    neg-int v8, p0

    const/4 v9, 0x0

    :goto_0
    neg-long v4, v4

    goto :goto_1

    :cond_2
    move v8, p0

    const/4 v9, 0x0

    :goto_1
    if-gez p1, :cond_4

    if-ne v2, p1, :cond_3

    move v2, p1

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    neg-int v2, p1

    :goto_2
    neg-long v6, v6

    goto :goto_3

    :cond_4
    move v2, p1

    :goto_3
    if-eqz v9, :cond_8

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    .line 1
    rem-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_6

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_5

    long-to-int p0, v4

    return p0

    .line 2
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-direct {v2, v4, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    :cond_6
    long-to-int v2, v6

    .line 3
    rem-long/2addr v4, v6

    long-to-int v8, v4

    goto :goto_4

    .line 4
    :cond_7
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-direct {v2, v4, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 5
    :cond_8
    :goto_4
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcdPositive(II)I

    move-result p0

    return p0

    :cond_9
    :goto_5
    if-eq p0, v2, :cond_a

    if-eq p1, v2, :cond_a

    add-int/2addr p0, p1

    .line 6
    invoke-static {p0}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result p0

    return p0

    .line 7
    :cond_a
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-direct {v2, v4, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static gcd(JJ)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const/4 v4, 0x2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-eqz v9, :cond_9

    cmp-long v10, v2, v7

    if-nez v10, :cond_0

    goto/16 :goto_5

    :cond_0
    if-lez v9, :cond_1

    neg-long v11, v0

    goto :goto_0

    :cond_1
    move-wide v11, v0

    :goto_0
    if-lez v10, :cond_2

    neg-long v9, v2

    goto :goto_1

    :cond_2
    move-wide v9, v2

    :goto_1
    const/4 v13, 0x0

    :goto_2
    const-wide/16 v14, 0x1

    and-long v16, v11, v14

    const/16 v5, 0x3f

    const-wide/16 v18, 0x2

    cmp-long v20, v16, v7

    if-nez v20, :cond_3

    and-long v20, v9, v14

    cmp-long v22, v20, v7

    if-nez v22, :cond_3

    if-ge v13, v5, :cond_3

    .line 8
    div-long v11, v11, v18

    .line 9
    div-long v9, v9, v18

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    if-eq v13, v5, :cond_8

    cmp-long v0, v16, v14

    if-nez v0, :cond_4

    move-wide v0, v9

    goto :goto_3

    .line 10
    :cond_4
    div-long v0, v11, v18

    neg-long v0, v0

    :cond_5
    :goto_3
    and-long v2, v0, v14

    cmp-long v4, v2, v7

    if-nez v4, :cond_6

    .line 11
    div-long v0, v0, v18

    goto :goto_3

    :cond_6
    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    neg-long v0, v0

    move-wide v11, v0

    goto :goto_4

    :cond_7
    move-wide v9, v0

    :goto_4
    sub-long v0, v9, v11

    .line 12
    div-long v0, v0, v18

    cmp-long v2, v0, v7

    if-nez v2, :cond_5

    neg-long v0, v11

    shl-long v2, v14, v13

    mul-long v0, v0, v2

    return-wide v0

    .line 13
    :cond_8
    new-instance v5, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-direct {v5, v7, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    :cond_9
    :goto_5
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v0, v7

    if-eqz v5, :cond_a

    cmp-long v5, v2, v7

    if-eqz v5, :cond_a

    .line 14
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v0

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 15
    :cond_a
    new-instance v5, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->GCD_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-direct {v5, v7, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5
.end method

.method private static gcdPositive(II)I
    .locals 2

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p0

    .line 1
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shr-int/2addr p0, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p1, v1

    .line 3
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    :goto_0
    if-eq p0, p1, :cond_2

    sub-int v1, p0, p1

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p0, v1

    goto :goto_0

    :cond_2
    shl-int/2addr p0, v0

    return p0
.end method

.method public static isPowerOfTwo(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, p0, v2

    and-long/2addr p0, v2

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lcm(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v1

    div-int v1, p0, v1

    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LCM_OVERFLOW_32_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static lcm(JJ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_2

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(JJ)J

    move-result-wide v0

    div-long v0, p0, v0

    invoke-static {v0, v1, p2, p3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LCM_OVERFLOW_64_BITS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static mulAndCheck(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long v2, v0, p0

    if-ltz v2, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 1
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw p0
.end method

.method public static mulAndCheck(JJ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, p2

    if-lez v2, :cond_0

    .line 2
    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p0, v0

    if-gez v4, :cond_4

    cmp-long v4, p2, v0

    if-gez v4, :cond_2

    .line 3
    div-long/2addr v2, p2

    cmp-long v0, p0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw p0

    :cond_2
    if-lez v4, :cond_6

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    div-long/2addr v0, p2

    cmp-long v2, v0, p0

    if-gtz v2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw p0

    :cond_4
    if-lez v4, :cond_6

    .line 7
    div-long/2addr v2, p2

    cmp-long v0, p0, v2

    if-gtz v0, :cond_5

    :goto_0
    mul-long v0, p0, p2

    goto :goto_1

    .line 8
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw p0

    :cond_6
    :goto_1
    return-wide v0
.end method

.method public static pow(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    move v3, p0

    move v1, p1

    const/4 v2, 0x1

    :goto_0
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1
    :try_start_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    shr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-static {v3, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v3
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :goto_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BASE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p0

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 6
    throw v1

    .line 7
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static pow(IJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    mul-int v3, v3, p0

    :cond_0
    mul-int p0, p0, p0

    shr-long/2addr p1, v2

    goto :goto_0

    :cond_1
    return v3

    .line 8
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static pow(JI)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    if-ltz p2, :cond_2

    const-wide/16 v0, 0x1

    move-wide v3, p0

    move v2, p2

    :goto_0
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    .line 9
    :try_start_0
    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    shr-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    return-wide v0

    .line 10
    :cond_1
    invoke-static {v3, v4, v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v3
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BASE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-virtual {v1, v2, v5}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p0

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 14
    throw v0

    .line 15
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static pow(JJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x1

    move-wide v4, v2

    :goto_0
    cmp-long v6, p2, v0

    if-eqz v6, :cond_1

    and-long v6, p2, v2

    cmp-long v8, v6, v0

    if-eqz v8, :cond_0

    mul-long v4, v4, p0

    :cond_0
    mul-long p0, p0, p0

    const/4 v6, 0x1

    shr-long/2addr p2, v6

    goto :goto_0

    :cond_1
    return-wide v4

    .line 16
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static pow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 19
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :goto_0
    cmp-long v3, p1, v0

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 21
    :cond_0
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/4 v3, 0x1

    shr-long/2addr p1, v3

    goto :goto_0

    :cond_1
    return-object v2

    .line 22
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 23
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 24
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 25
    :goto_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    :cond_0
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0

    .line 30
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static stirlingS2(II)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->stirlingS2(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static subAndCheck(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int p0, v0

    return p0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static subAndCheck(JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    sub-long/2addr p0, p2

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    neg-long p1, p2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    neg-long p2, p2

    .line 3
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(JJLorg/apache/commons/math3/exception/util/Localizable;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
