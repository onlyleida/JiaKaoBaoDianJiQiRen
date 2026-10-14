.class public Lorg/apache/commons/math3/util/Precision;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EPSILON:D

.field private static final EXPONENT_OFFSET:J = 0x3ffL

.field private static final NEGATIVE_ZERO_DOUBLE_BITS:J

.field private static final NEGATIVE_ZERO_FLOAT_BITS:I

.field private static final POSITIVE_ZERO:D = 0.0

.field private static final POSITIVE_ZERO_DOUBLE_BITS:J

.field private static final POSITIVE_ZERO_FLOAT_BITS:I

.field public static final SAFE_MIN:D

.field private static final SGN_MASK:J = -0x8000000000000000L

.field private static final SGN_MASK_FLOAT:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    const/high16 v0, -0x80000000

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    const-wide/high16 v0, 0x3ca0000000000000L

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v0, 0x10000000000000L

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(DDD)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p4, p0, p2

    if-gez p4, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static compareTo(DDI)I
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p4, p0, p2

    if-gez p4, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static equals(DD)Z
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result p0

    return p0
.end method

.method public static equals(DDD)Z
    .locals 2

    const/4 v0, 0x1

    .line 12
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-nez v1, :cond_1

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    cmpg-double p2, p0, p4

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static equals(DDI)Z
    .locals 14

    move/from16 v0, p4

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 14
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    xor-long v5, v1, v3

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v5, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-nez v11, :cond_0

    sub-long/2addr v1, v3

    .line 15
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 16
    sget-wide v5, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    sub-long/2addr v3, v5

    .line 17
    sget-wide v5, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    sub-long/2addr v1, v5

    goto :goto_1

    .line 18
    :cond_1
    sget-wide v5, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_DOUBLE_BITS:J

    sub-long/2addr v1, v5

    .line 19
    sget-wide v5, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_DOUBLE_BITS:J

    sub-long/2addr v3, v5

    move-wide v12, v1

    move-wide v1, v3

    move-wide v3, v12

    :goto_1
    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    sub-long/2addr v5, v3

    cmp-long v0, v1, v5

    if-gtz v0, :cond_2

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_4

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    return v7
.end method

.method public static equals(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result p0

    return p0
.end method

.method public static equals(FFF)Z
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v1

    if-nez v1, :cond_1

    sub-float/2addr p1, p0

    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static equals(FFI)Z
    .locals 6

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    xor-int v2, v0, v1

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sub-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_2

    :goto_0
    const/4 p2, 0x1

    goto :goto_2

    :cond_0
    if-ge v0, v1, :cond_1

    .line 6
    sget v2, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    sub-int/2addr v1, v2

    .line 7
    sget v2, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    sub-int/2addr v0, v2

    goto :goto_1

    .line 8
    :cond_1
    sget v2, Lorg/apache/commons/math3/util/Precision;->POSITIVE_ZERO_FLOAT_BITS:I

    sub-int/2addr v0, v2

    .line 9
    sget v2, Lorg/apache/commons/math3/util/Precision;->NEGATIVE_ZERO_FLOAT_BITS:I

    sub-int/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    if-le v1, p2, :cond_3

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_2

    goto :goto_0

    :goto_2
    if-eqz p2, :cond_4

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method public static equalsIncludingNaN(DD)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-double v2, p0, p0

    if-nez v2, :cond_1

    cmpl-double v3, p2, p2

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    cmpl-double p1, p2, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p0, p1

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_3
    return v0
.end method

.method public static equalsIncludingNaN(DDD)Z
    .locals 1

    .line 5
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v0

    if-nez v0, :cond_1

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    cmpg-double p2, p0, p4

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static equalsIncludingNaN(DDI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-double v2, p0, p0

    if-nez v2, :cond_1

    cmpl-double v3, p2, p2

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    cmpl-double p1, p2, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p0, p1

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static equalsIncludingNaN(FF)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v2, p0, p0

    if-nez v2, :cond_1

    cmpl-float v3, p1, p1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    cmpl-float p1, p1, p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p0, p1

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_3
    return v0
.end method

.method public static equalsIncludingNaN(FFF)Z
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sub-float/2addr p1, p0

    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static equalsIncludingNaN(FFI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p0, p0

    if-nez v2, :cond_1

    cmpl-float v3, p1, p1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    cmpl-float p1, p1, p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p0, p1

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static equalsWithRelativeTolerance(DDD)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    sub-double/2addr p0, p2

    div-double/2addr p0, v1

    .line 3
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    cmpg-double p2, p0, p4

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static representableDelta(DD)D
    .locals 0

    add-double/2addr p2, p0

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public static round(DI)D
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/Precision;->round(DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static round(DII)D
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    mul-double p2, p0, v0

    :cond_0
    return-wide p2

    :catch_0
    nop

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_1

    return-wide p0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static round(FI)F
    .locals 1

    const/4 v0, 0x4

    .line 4
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->round(FII)F

    move-result p0

    return p0
.end method

.method public static round(FII)F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v0, p0}, Lorg/apache/commons/math3/util/FastMath;->copySign(FF)F

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 6
    invoke-static {v1, v2, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float p1, p1, v0

    mul-float p0, p0, p1

    float-to-double v1, p0

    float-to-double v3, v0

    .line 7
    invoke-static {v1, v2, v3, v4, p2}, Lorg/apache/commons/math3/util/Precision;->roundUnscaled(DDI)D

    move-result-wide v0

    double-to-float p0, v0

    div-float/2addr p0, p1

    return p0
.end method

.method private static roundUnscaled(DDI)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    packed-switch p4, :pswitch_data_0

    .line 1
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_ROUNDING_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 p2, 0x11

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "ROUND_CEILING"

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, p3

    const-string p3, "ROUND_DOWN"

    const/4 v1, 0x3

    aput-object p3, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x4

    aput-object p3, p2, v0

    const-string p3, "ROUND_FLOOR"

    const/4 v2, 0x5

    aput-object p3, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x6

    aput-object p3, p2, v1

    const-string p3, "ROUND_HALF_DOWN"

    const/4 v3, 0x7

    aput-object p3, p2, v3

    const/16 p3, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, p3

    const/16 p3, 0x9

    const-string v2, "ROUND_HALF_EVEN"

    aput-object v2, p2, p3

    const/16 p3, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, p3

    const/16 p3, 0xb

    const-string v1, "ROUND_HALF_UP"

    aput-object v1, p2, p3

    const/16 p3, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/16 p3, 0xd

    const-string v0, "ROUND_UNNECESSARY"

    aput-object v0, p2, p3

    const/16 p3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/16 p3, 0xf

    const-string v0, "ROUND_UP"

    aput-object v0, p2, p3

    const/16 p3, 0x10

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 2
    :pswitch_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p2

    cmpl-double p4, p0, p2

    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw p0

    .line 4
    :pswitch_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p2

    sub-double p2, p0, p2

    cmpl-double p4, p2, v2

    if-lez p4, :cond_1

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto/16 :goto_0

    :cond_1
    cmpg-double p4, p2, v2

    if-gez p4, :cond_2

    .line 6
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    cmpl-double p4, p2, v0

    if-nez p4, :cond_3

    .line 8
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto/16 :goto_0

    .line 9
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto/16 :goto_0

    .line 10
    :pswitch_2
    invoke-static {p0, p1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p2

    sub-double p2, p0, p2

    cmpl-double p4, p2, v2

    if-lez p4, :cond_4

    .line 12
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto :goto_0

    .line 14
    :pswitch_3
    invoke-static {p0, p1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    .line 15
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p2

    sub-double p2, p0, p2

    cmpl-double p4, p2, v2

    if-ltz p4, :cond_5

    .line 16
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto :goto_0

    :pswitch_4
    cmpl-double p4, p2, v0

    if-nez p4, :cond_6

    .line 18
    invoke-static {p0, p1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    .line 19
    :cond_6
    invoke-static {p0, p1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto :goto_0

    :pswitch_5
    cmpl-double p4, p2, v0

    if-nez p4, :cond_7

    .line 20
    invoke-static {p0, p1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto :goto_0

    .line 21
    :cond_7
    invoke-static {p0, p1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    .line 22
    :pswitch_6
    invoke-static {p0, p1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    goto :goto_0

    .line 23
    :pswitch_7
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p2

    cmpl-double p4, p0, p2

    if-eqz p4, :cond_8

    .line 24
    invoke-static {p0, p1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p0

    :cond_8
    :goto_0
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
