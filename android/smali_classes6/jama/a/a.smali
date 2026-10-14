.class public Ljama/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DD)D
    .locals 9

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v2

    if-lez v8, :cond_0

    div-double/2addr p2, p0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    mul-double p2, p2, p2

    add-double/2addr p2, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double v6, p0, p2

    goto :goto_0

    :cond_0
    cmpl-double v0, p2, v6

    if-eqz v0, :cond_1

    div-double/2addr p0, p2

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    mul-double p0, p0, p0

    add-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double v6, p2, p0

    :cond_1
    :goto_0
    return-wide v6
.end method
