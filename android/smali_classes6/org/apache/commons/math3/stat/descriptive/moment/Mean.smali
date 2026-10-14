.class public Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = -0x11fc78ebba85144cL


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 8
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V
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
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    .line 9
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Mean;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    int-to-double v1, p3

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([DII)D

    move-result-wide v3

    div-double/2addr v3, v1

    const-wide/16 v5, 0x0

    move v0, p2

    :goto_0
    add-int v7, p2, p3

    if-ge v0, v7, :cond_0

    .line 4
    aget-wide v7, p1, v0

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v5, v1

    add-double/2addr v3, v5

    return-wide v3

    :cond_1
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public evaluate([D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D[DII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([D[DII)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([D[DII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    .line 7
    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([DII)D

    move-result-wide v1

    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([D[DII)D

    move-result-wide v3

    div-double/2addr v3, v1

    const-wide/16 v5, 0x0

    move v0, p3

    :goto_0
    add-int v7, p3, p4

    if-ge v0, v7, :cond_0

    .line 9
    aget-wide v7, p2, v0

    aget-wide v9, p1, v0

    sub-double/2addr v9, v3

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v5, v1

    add-double/2addr v3, v5

    return-wide v3

    :cond_1
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public getN()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->incMoment:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->increment(D)V

    :cond_0
    return-void
.end method
