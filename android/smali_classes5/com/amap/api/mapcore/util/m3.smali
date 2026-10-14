.class public Lcom/amap/api/mapcore/util/m3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v2, v0, v2

    .line 2
    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v8, v4, v6

    .line 3
    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v0, p0

    sub-double/2addr v4, v6

    mul-double v8, v8, v0

    mul-double v4, v4, v2

    sub-double/2addr v8, v4

    return-wide v8
.end method

.method public static b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore/util/m3;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v4

    .line 2
    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/m3;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v6

    .line 3
    invoke-static/range {p0 .. p2}, Lcom/amap/api/mapcore/util/m3;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v8

    .line 4
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/m3;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    cmpl-double v16, v4, v14

    if-lez v16, :cond_0

    cmpg-double v17, v6, v14

    if-ltz v17, :cond_1

    :cond_0
    cmpg-double v17, v4, v14

    if-gez v17, :cond_4

    cmpl-double v4, v6, v14

    if-lez v4, :cond_4

    :cond_1
    cmpl-double v4, v8, v14

    if-lez v4, :cond_2

    cmpg-double v4, v10, v14

    if-ltz v4, :cond_3

    :cond_2
    cmpg-double v4, v8, v14

    if-gez v4, :cond_4

    cmpl-double v4, v10, v14

    if-lez v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    return v13

    :cond_5
    if-nez v16, :cond_6

    .line 5
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore/util/m3;->c(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v13

    :cond_6
    cmpl-double v4, v6, v14

    if-nez v4, :cond_7

    .line 6
    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/m3;->c(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v13

    :cond_7
    cmpl-double v4, v8, v14

    if-nez v4, :cond_8

    .line 7
    invoke-static/range {p0 .. p2}, Lcom/amap/api/mapcore/util/m3;->c(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v13

    :cond_8
    cmpl-double v2, v10, v14

    if-nez v2, :cond_9

    .line 8
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/m3;->c(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v13

    :cond_9
    return v12
.end method

.method private static c(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v4, v0, v2

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    sub-double v8, v0, v2

    cmpg-double v10, v8, v6

    if-gez v10, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    .line 2
    :goto_1
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v8, v2, p0

    cmpl-double v10, v8, v6

    if-lez v10, :cond_2

    move-wide v8, v2

    goto :goto_2

    :cond_2
    move-wide v8, p0

    :goto_2
    sub-double v10, v2, p0

    cmpg-double v12, v10, v6

    if-gez v12, :cond_3

    goto :goto_3

    :cond_3
    move-wide v2, p0

    .line 3
    :goto_3
    iget-wide p0, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v6, v0, p0

    if-gtz v6, :cond_4

    cmpg-double v0, p0, v4

    if-gtz v0, :cond_4

    iget-wide p0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double p2, v2, p0

    if-gtz p2, :cond_4

    cmpg-double p2, p0, v8

    if-gtz p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
