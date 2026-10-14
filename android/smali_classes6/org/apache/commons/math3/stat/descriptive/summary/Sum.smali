.class public Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x723d578c76ce5cbcL


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 5
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V
    .locals 2
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
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    .line 9
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/Sum;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move v2, p2

    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_1

    .line 2
    aget-wide v3, p1, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :cond_1
    return-wide v0
.end method

.method public evaluate([D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->evaluate([D[DII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([D[DII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([D[DIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move v2, p3

    :goto_0
    add-int v3, p3, p4

    if-ge v2, v3, :cond_1

    .line 4
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :cond_1
    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->value:D

    .line 2
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->n:J

    return-void
.end method
