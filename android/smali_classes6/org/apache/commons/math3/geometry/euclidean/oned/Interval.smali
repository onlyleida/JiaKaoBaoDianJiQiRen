.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lower:D

.field private final upper:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpg-double v0, p3, p1

    if-ltz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public checkPoint(DD)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    sub-double v2, v0, p3

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    add-double v4, v2, p3

    cmpl-double v6, p1, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    add-double/2addr v0, p3

    cmpl-double v4, p1, v0

    if-lez v4, :cond_1

    sub-double/2addr v2, p3

    cmpg-double p3, p1, v2

    if-gez p3, :cond_1

    .line 2
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object p1

    .line 4
    :cond_2
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object p1
.end method

.method public getBarycenter()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getInf()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    return-wide v0
.end method

.method public getLength()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLower()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getInf()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMidPoint()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getBarycenter()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->lower:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getSup()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->upper:D

    return-wide v0
.end method

.method public getUpper()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Interval;->getSup()D

    move-result-wide v0

    return-wide v0
.end method
