.class public Lorg/apache/commons/math3/distribution/LaplaceDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final beta:D

.field private final mu:D


# direct methods
.method public constructor <init>(DD)V
    .locals 6

    .line 1
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/LaplaceDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    .line 4
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, p1, v0

    if-gtz v4, :cond_0

    sub-double/2addr p1, v0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    div-double/2addr p1, v2

    return-wide p1

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    .line 3
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    div-double/2addr p1, v2

    sub-double/2addr v4, p1

    return-wide v4
.end method

.method public density(D)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    neg-double p1, p1

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public getLocation()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method public getScale()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_3

    cmpl-double v4, p1, v0

    if-gtz v4, :cond_3

    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p1

    :cond_0
    if-nez v4, :cond_1

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p1

    :cond_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, p1, v0

    mul-double p1, p1, v2

    if-lez v4, :cond_2

    sub-double/2addr v2, p1

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    neg-double p1, p1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    .line 2
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->mu:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LaplaceDistribution;->beta:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    return-wide v0

    .line 3
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v4, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
