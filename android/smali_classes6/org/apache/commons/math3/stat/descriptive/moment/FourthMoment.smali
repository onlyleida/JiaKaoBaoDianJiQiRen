.class Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
.super Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x421d181229c5c4ebL


# instance fields
.field private m4:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;-><init>()V

    .line 4
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 8
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;)V

    .line 11
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->clear()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;-><init>()V

    .line 7
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    return-object v0
.end method

.method public getResult()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 6
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->m3:D

    .line 7
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    .line 8
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->increment(D)V

    .line 9
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    long-to-double p1, p1

    .line 10
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    mul-double v8, v8, v6

    mul-double v8, v8, v0

    sub-double/2addr v4, v8

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/ThirdMoment;->nDevSq:D

    mul-double v0, v0, v6

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    mul-double v0, p1, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, p1, v8

    mul-double v2, v2, v8

    sub-double/2addr v0, v2

    mul-double v6, v6, v6

    mul-double v6, v6, v8

    mul-double v6, v6, p1

    mul-double v0, v0, v6

    add-double/2addr v4, v0

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m4:D

    return-void
.end method
