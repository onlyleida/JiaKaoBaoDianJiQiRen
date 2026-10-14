.class public Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x26a468dc400966b7L


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 8
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    .line 8
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 9
    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    iput-boolean p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 1
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 2
    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 3
    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->incrementAll([DII)V

    .line 4
    iget-object v4, v3, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 5
    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    move v3, v1

    :goto_0
    add-int v10, v1, v2

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    if-ge v3, v10, :cond_0

    .line 6
    aget-wide v13, v0, v3

    sub-double/2addr v13, v4

    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v6, v7, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    div-double/2addr v8, v0

    int-to-double v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v4, v0, v2

    mul-double v4, v4, v0

    sub-double v2, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v10, v0, v6

    mul-double v12, v2, v10

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    sub-double/2addr v0, v14

    mul-double v12, v12, v0

    div-double/2addr v4, v12

    .line 8
    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v14

    mul-double v10, v10, v0

    div-double/2addr v2, v10

    mul-double v4, v4, v8

    sub-double/2addr v4, v2

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    return-wide v4
.end method

.method public getN()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getN()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v5, v1, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-wide v7, v1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v9, 0x1

    sub-long v9, v7, v9

    long-to-double v9, v9

    div-double/2addr v5, v9

    cmp-long v2, v7, v3

    if-lez v2, :cond_1

    const-wide v2, 0x3bfd83c94fb6d2acL    # 1.0E-19

    cmpg-double v4, v5, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    long-to-double v2, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double v9, v2, v7

    mul-double v9, v9, v2

    .line 3
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getResult()D

    move-result-wide v11

    mul-double v9, v9, v11

    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v11, v1, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    mul-double v15, v11, v13

    mul-double v15, v15, v11

    sub-double v7, v2, v7

    mul-double v15, v15, v7

    sub-double/2addr v9, v15

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    sub-double v11, v2, v11

    mul-double v7, v7, v11

    sub-double/2addr v2, v13

    mul-double v7, v7, v2

    mul-double v7, v7, v5

    mul-double v7, v7, v5

    div-double/2addr v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_2
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    return-wide v9
.end method

.method public increment(D)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->increment(D)V

    :cond_0
    return-void
.end method
