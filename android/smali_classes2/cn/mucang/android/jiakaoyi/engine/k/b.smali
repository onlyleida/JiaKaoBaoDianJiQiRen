.class public Lcn/mucang/android/jiakaoyi/engine/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDDD)D
    .locals 4

    mul-double v0, p0, p4

    mul-double v2, p2, p6

    add-double/2addr v0, v2

    mul-double p0, p0, p0

    mul-double p2, p2, p2

    add-double/2addr p0, p2

    mul-double p4, p4, p4

    mul-double p6, p6, p6

    add-double/2addr p4, p6

    mul-double p0, p0, p4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static b(Ljava/util/List;)Landroid/location/Location;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    move-wide v8, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location;

    .line 2
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    add-double/2addr v4, v11

    .line 3
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    add-double/2addr v6, v11

    .line 4
    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    move-result v11

    add-float/2addr v1, v11

    .line 5
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    add-float/2addr v2, v11

    .line 6
    invoke-virtual {v10}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    add-double/2addr v8, v11

    .line 7
    invoke-virtual {v10}, Landroid/location/Location;->getSpeed()F

    move-result v10

    add-float/2addr v3, v10

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/location/Location;

    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location;

    invoke-direct {v0, v10}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v10, p0

    div-double/2addr v4, v10

    .line 10
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    div-double/2addr v6, v10

    .line 11
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 12
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    div-float/2addr v2, p0

    .line 13
    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    div-double/2addr v8, v10

    .line 14
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    div-float/2addr v3, p0

    .line 15
    invoke-virtual {v0, v3}, Landroid/location/Location;->setSpeed(F)V

    return-object v0
.end method
