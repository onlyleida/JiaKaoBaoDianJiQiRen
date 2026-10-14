.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDDD)F
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [F

    move-wide v1, p2

    move-wide v3, p0

    move-wide/from16 v5, p6

    move-wide v7, p4

    move-object v9, v0

    .line 1
    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v1, 0x0

    .line 2
    aget v0, v0, v1

    return v0
.end method

.method public static b(DD)Z
    .locals 4

    const/4 v0, 0x0

    const-wide v1, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p0, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x4066800000000000L    # 180.0

    cmpl-double v3, p0, v1

    if-gtz v3, :cond_2

    const-wide v1, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, p2, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x4056800000000000L    # 90.0

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v1, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, p0, v1

    if-gez v3, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p2, p0, v1

    if-gez p2, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static c(Landroid/location/Location;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->b(DD)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
