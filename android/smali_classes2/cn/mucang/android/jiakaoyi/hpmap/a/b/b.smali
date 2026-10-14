.class public Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 2
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    const/4 v7, 0x0

    cmpl-double v8, v3, v5

    if-lez v8, :cond_0

    return v7

    .line 3
    :cond_0
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 4
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    cmpg-double v8, v3, v5

    if-gez v8, :cond_1

    return v7

    .line 5
    :cond_1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 6
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    cmpl-double v8, v3, v5

    if-lez v8, :cond_2

    return v7

    .line 7
    :cond_2
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 8
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    cmpg-double v8, v3, v5

    if-gez v8, :cond_3

    return v7

    .line 9
    :cond_3
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->b:D

    mul-double v3, v3, v3

    .line 10
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 11
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpg-double v10, v5, v3

    if-gez v10, :cond_4

    cmpg-double v10, v8, v3

    if-gez v10, :cond_4

    return v7

    :cond_4
    sub-double/2addr v5, v3

    sub-double/2addr v8, v3

    mul-double v5, v5, v8

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmpg-double v11, v5, v9

    if-gtz v11, :cond_5

    return v8

    .line 12
    :cond_5
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v5, v11

    .line 13
    iget-wide v11, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v11, v13

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v17, v13, v15

    if-gez v17, :cond_6

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v17, v13, v15

    if-gez v17, :cond_6

    return v7

    .line 15
    :cond_6
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v18, v13, v8

    move-wide/from16 v20, v3

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v22, v8, v3

    mul-double v18, v18, v22

    move-wide/from16 v22, v8

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v24, v7, v0

    move-wide/from16 v26, v11

    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v28, v0, v10

    mul-double v24, v24, v28

    add-double v18, v18, v24

    mul-double v24, v5, v5

    mul-double v28, v26, v26

    add-double v24, v24, v28

    div-double v18, v18, v24

    mul-double v5, v5, v18

    add-double v5, v22, v5

    mul-double v18, v18, v26

    add-double v18, v0, v18

    sub-double v12, v5, v13

    sub-double v7, v18, v7

    mul-double v12, v12, v12

    mul-double v7, v7, v7

    add-double/2addr v12, v7

    cmpl-double v2, v12, v20

    if-lez v2, :cond_7

    const/4 v2, 0x0

    return v2

    :cond_7
    const/4 v2, 0x0

    sub-double v8, v22, v5

    sub-double/2addr v5, v3

    mul-double v8, v8, v5

    const-wide/16 v3, 0x0

    cmpl-double v5, v8, v3

    if-ltz v5, :cond_8

    sub-double v0, v0, v18

    sub-double v18, v18, v10

    mul-double v0, v0, v18

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_8

    const/4 v7, 0x1

    goto :goto_0

    :cond_8
    const/4 v7, 0x0

    :goto_0
    return v7
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 5
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 7
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 9
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->b:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->b:D

    sub-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpl-double v2, v0, p0

    if-lez v2, :cond_4

    .line 12
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 13
    :cond_4
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 14
    :cond_5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->b:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->b:D

    sub-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpl-double v2, v0, p0

    if-lez v2, :cond_6

    .line 17
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 18
    :cond_6
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0

    .line 19
    :cond_7
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-object p0
.end method
