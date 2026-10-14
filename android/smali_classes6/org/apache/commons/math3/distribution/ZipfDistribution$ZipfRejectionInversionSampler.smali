.class final Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/distribution/ZipfDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipfRejectionInversionSampler"
.end annotation


# instance fields
.field private final exponent:D

.field private final hIntegralNumberOfElements:D

.field private final hIntegralX1:D

.field private final numberOfElements:I

.field private final s:D


# direct methods
.method constructor <init>(ID)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    const-wide/high16 p2, 0x3ff8000000000000L    # 1.5

    .line 4
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralX1:D

    int-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    const-wide/high16 p1, 0x4004000000000000L    # 2.5

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->h(D)D

    move-result-wide v2

    sub-double/2addr p1, v2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralInverse(D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->s:D

    return-void
.end method

.method private h(D)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    neg-double v0, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private hIntegral(D)D
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->helper2(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    return-wide v0
.end method

.method private hIntegralInverse(D)D
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->exponent:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    mul-double v2, v2, p1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v2, v0

    .line 2
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->helper1(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method

.method static helper1(D)D
    .locals 8

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double v6, v6, p0

    sub-double/2addr v4, v6

    mul-double v4, v4, p0

    sub-double/2addr v2, v4

    mul-double p0, p0, v2

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method static helper2(D)D
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v2, v2, p0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double p0, p0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v4

    mul-double v2, v2, p0

    add-double/2addr v2, v4

    mul-double v0, v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method sample(Lorg/apache/commons/math3/random/RandomGenerator;)I
    .locals 12

    .line 1
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    invoke-interface {p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralX1:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralNumberOfElements:D

    sub-double/2addr v4, v6

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 2
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegralInverse(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v6, v2, v4

    double-to-int v6, v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->numberOfElements:I

    if-le v6, v7, :cond_2

    move v6, v7

    :cond_2
    :goto_0
    int-to-double v7, v6

    sub-double v2, v7, v2

    .line 4
    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->s:D

    cmpg-double v11, v2, v9

    if-lez v11, :cond_3

    add-double/2addr v4, v7

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->hIntegral(D)D

    move-result-wide v2

    invoke-direct {p0, v7, v8}, Lorg/apache/commons/math3/distribution/ZipfDistribution$ZipfRejectionInversionSampler;->h(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    :cond_3
    return v6
.end method
