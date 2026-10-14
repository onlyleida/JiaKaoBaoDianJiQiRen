.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Z)D
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Z)D

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_1
    :goto_0
    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Z)D

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_2
    sget p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double p0, p0

    return-wide p0
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 5

    .line 1
    invoke-static {p0, p1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    invoke-static {p1, p2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    invoke-static {p3, p0, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    mul-double p1, p1, p3

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b()D

    move-result-wide v2

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const/4 v6, 0x0

    cmpg-double v7, v2, v4

    if-gez v7, :cond_0

    return v6

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d()D

    move-result-wide v2

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    cmpl-double v7, v2, v4

    if-lez v7, :cond_1

    return v6

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e()D

    move-result-wide v2

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    cmpl-double v7, v2, v4

    if-lez v7, :cond_2

    return v6

    .line 4
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c()D

    move-result-wide v2

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    cmpg-double v7, v2, v4

    if-gez v7, :cond_3

    return v6

    .line 5
    :cond_3
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d()D

    move-result-wide v4

    const/4 v7, 0x1

    cmpl-double v8, v2, v4

    if-ltz v8, :cond_4

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b()D

    move-result-wide v4

    cmpg-double v8, v2, v4

    if-gtz v8, :cond_4

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e()D

    move-result-wide v4

    cmpl-double v8, v2, v4

    if-ltz v8, :cond_4

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c()D

    move-result-wide v4

    cmpg-double v8, v2, v4

    if-gtz v8, :cond_4

    return v7

    .line 6
    :cond_4
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d()D

    move-result-wide v4

    cmpl-double v8, v2, v4

    if-ltz v8, :cond_5

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b()D

    move-result-wide v4

    cmpg-double v8, v2, v4

    if-gtz v8, :cond_5

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e()D

    move-result-wide v4

    cmpl-double v8, v2, v4

    if-ltz v8, :cond_5

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c()D

    move-result-wide v4

    cmpg-double v8, v2, v4

    if-gtz v8, :cond_5

    return v7

    .line 7
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b()D

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c()D

    move-result-wide v15

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v21, v6

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v23, v6

    invoke-static/range {v9 .. v24}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->B(DDDDDDDD)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    return v2

    .line 8
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d()D

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c()D

    move-result-wide v15

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v0

    invoke-static/range {v9 .. v24}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->B(DDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-static {v0, v1, v2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    .line 6
    :cond_0
    invoke-static {v0, v1, v2, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 7
    :cond_1
    invoke-static {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    .line 8
    :cond_2
    invoke-static {v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    .line 9
    :cond_3
    invoke-static {v2, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    .line 10
    :cond_4
    invoke-static {p0, v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v4

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 1
    iget-wide v1, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v3

    .line 2
    iget-wide v3, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v7

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    .line 4
    iget-wide v1, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 5
    iget-wide v3, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v7, v9

    iget-wide v11, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v11, v9, v11

    mul-double v7, v7, v11

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v13, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v11, v13

    move-wide v15, v9

    iget-wide v9, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v9, v13, v9

    mul-double v11, v11, v9

    add-double/2addr v7, v11

    mul-double v9, v1, v1

    mul-double v11, v3, v3

    add-double/2addr v9, v11

    div-double/2addr v7, v9

    mul-double v1, v1, v7

    add-double/2addr v1, v15

    mul-double v7, v7, v3

    add-double v3, v13, v7

    :goto_0
    move-wide v7, v1

    move-wide v9, v3

    move-wide v1, v7

    move-wide v3, v9

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 7
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->x(DDLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v7, v1

    .line 9
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v9, v0

    mul-double v7, v7, v7

    mul-double v9, v9, v9

    add-double/2addr v7, v9

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    return-wide v0
.end method
