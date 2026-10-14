.class public Lcn/mucang/android/jiakaoyi/hpmap/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, p1, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static B(DDDDDDDD)Z
    .locals 32

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    sub-double v16, v14, v10

    sub-double v18, v12, v0

    sub-double v20, v14, v2

    sub-double v22, v12, v4

    sub-double v24, v14, v6

    sub-double v26, v12, v8

    mul-double v28, v18, v16

    mul-double v30, v20, v26

    sub-double v28, v28, v30

    mul-double v22, v22, v16

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    mul-double v28, v28, v22

    const-wide/16 v16, 0x0

    const/16 v22, 0x0

    cmpl-double v23, v28, v16

    if-lez v23, :cond_0

    return v22

    :cond_0
    sub-double v24, v8, v0

    sub-double v26, v6, v2

    sub-double v28, v10, v2

    sub-double v30, v4, v0

    mul-double v24, v24, v26

    mul-double v28, v28, v30

    sub-double v24, v24, v28

    mul-double v18, v18, v26

    mul-double v20, v20, v30

    sub-double v18, v18, v20

    mul-double v24, v24, v18

    cmpl-double v18, v24, v16

    if-lez v18, :cond_1

    return v22

    :cond_1
    if-eqz v23, :cond_2

    if-nez v18, :cond_6

    .line 1
    :cond_2
    invoke-static {v8, v9, v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v16

    invoke-static {v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v18

    cmpg-double v20, v16, v18

    if-gez v20, :cond_3

    return v22

    .line 2
    :cond_3
    invoke-static {v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v0

    invoke-static {v8, v9, v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v4

    cmpg-double v8, v0, v4

    if-gez v8, :cond_4

    return v22

    .line 3
    :cond_4
    invoke-static {v10, v11, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v4

    cmpg-double v8, v0, v4

    if-gez v8, :cond_5

    return v22

    .line 4
    :cond_5
    invoke-static {v2, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v0

    invoke-static {v10, v11, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_6

    return v22

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v9, v5, v7

    .line 2
    iget-wide v11, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v15, v11, v13

    move-wide/from16 v17, v7

    .line 3
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v19, v5, v7

    move-wide/from16 v21, v5

    .line 4
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v23, v11, v4

    move-wide/from16 v25, v4

    .line 5
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v5, v21, v3

    .line 6
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v21, v11, v0

    mul-double v27, v15, v9

    mul-double v29, v19, v21

    sub-double v27, v27, v29

    mul-double v23, v23, v9

    mul-double v5, v5, v21

    sub-double v23, v23, v5

    mul-double v27, v27, v23

    const-wide/16 v5, 0x0

    cmpl-double v9, v27, v5

    if-lez v9, :cond_1

    const/4 v10, 0x0

    return v10

    :cond_1
    sub-double v21, v0, v13

    sub-double/2addr v3, v7

    sub-double v7, v17, v7

    sub-double v13, v25, v13

    mul-double v21, v21, v3

    mul-double v7, v7, v13

    sub-double v21, v21, v7

    mul-double v15, v15, v3

    mul-double v19, v19, v13

    sub-double v15, v15, v19

    mul-double v21, v21, v15

    cmpl-double v3, v21, v5

    if-lez v3, :cond_2

    const/4 v4, 0x0

    return v4

    :cond_2
    if-eqz v9, :cond_3

    if-nez v3, :cond_7

    .line 7
    :cond_3
    invoke-static {v0, v1, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v0

    move-object/from16 v3, p0

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v6, p1

    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v4

    cmpg-double v7, v0, v4

    if-gez v7, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x0

    .line 8
    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v4

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v1, p3

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v7

    cmpg-double v9, v4, v7

    if-gez v9, :cond_5

    return v0

    .line 9
    :cond_5
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v4

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v9, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v7

    cmpg-double v9, v4, v7

    if-gez v9, :cond_6

    return v0

    .line 10
    :cond_6
    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->E(DD)D

    move-result-wide v3

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->F(DD)D

    move-result-wide v1

    cmpg-double v5, v3, v1

    if-gez v5, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static D(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 8

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, p0

    .line 3
    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v6, v2

    .line 4
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, p0

    mul-double v0, v0, v6

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    const-wide/16 p0, 0x0

    cmpl-double p2, v0, p0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static E(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method private static F(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static G(Ljava/util/List;DZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;DZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v2

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    :goto_1
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static H(Ljava/util/List;DZ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;DZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 2
    invoke-static {v3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    if-nez p3, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 3
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v13, p1

    move v15, v4

    invoke-static/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 5
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v5, -0x1

    .line 6
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v13, p1

    move v15, v4

    invoke-static/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v13, p1

    move v15, v4

    invoke-static/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v1, v2, v6

    if-lez v1, :cond_0

    move-wide v9, v6

    goto :goto_0

    :cond_0
    move-wide v9, v2

    .line 4
    :goto_0
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v8, v4, v0

    if-lez v8, :cond_1

    move-wide v11, v0

    goto :goto_1

    :cond_1
    move-wide v11, v4

    :goto_1
    cmpg-double v8, v2, v6

    if-gez v8, :cond_2

    move-wide v13, v6

    goto :goto_2

    :cond_2
    move-wide v13, v2

    :goto_2
    cmpg-double v2, v4, v0

    if-gez v2, :cond_3

    move-wide v15, v0

    goto :goto_3

    :cond_3
    move-wide v15, v4

    .line 5
    :goto_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    return-object v0
.end method

.method public static b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, -0x10000000000001L

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v9, v0

    move-wide v11, v9

    move-wide v5, v2

    move-wide v7, v5

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v3, v5, v1

    if-lez v3, :cond_1

    move-wide v5, v1

    .line 3
    :cond_1
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v0, v7, v3

    if-lez v0, :cond_2

    move-wide v7, v3

    :cond_2
    cmpg-double v0, v9, v1

    if-gez v0, :cond_3

    move-wide v9, v1

    :cond_3
    cmpg-double v0, v11, v3

    if-gez v0, :cond_0

    move-wide v11, v3

    goto :goto_0

    .line 4
    :cond_4
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    return-object p0
.end method

.method public static c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 4
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 5
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 7
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 8
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-object v0
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, p4

    if-gtz v2, :cond_0

    .line 2
    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, p4

    if-gtz v2, :cond_1

    .line 4
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v0

    .line 5
    :cond_1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 6
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v3, v1, v3

    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v5, v1

    mul-double v3, v3, v5

    const-wide/16 v1, 0x0

    cmpl-double v5, v3, v1

    if-ltz v5, :cond_2

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v5, v3, v5

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr p1, v3

    mul-double v5, v5, p1

    cmpl-double p1, v5, v1

    if-ltz p1, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    cmpg-double v0, p1, p4

    if-gtz v0, :cond_2

    .line 8
    invoke-virtual {p3, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide p1

    :cond_2
    const-wide p0, 0x42374876e8000000L    # 1.0E11

    return-wide p0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 10

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 4
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, p3

    add-double v3, v2, v4

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p3, p3, v0

    add-double/2addr v5, p3

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    mul-double v7, p0, p2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v9

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 10

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 4
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, p3

    add-double v3, v2, v4

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p3, p3, v0

    add-double/2addr v5, p3

    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double/2addr p3, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v7, p3, v0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    const-wide/16 v4, 0x0

    if-lez p5, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    int-to-double v6, p0

    move-object v2, v9

    move-object v3, p1

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v9

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v8, v4, v6

    .line 2
    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v14, v10, v12

    mul-double v16, v8, v8

    mul-double v18, v14, v14

    add-double v16, v16, v18

    const/16 v18, 0x0

    const-wide v19, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v21, v16, v19

    if-gez v21, :cond_0

    return v18

    .line 3
    :cond_0
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v4

    sub-double v6, v4, v6

    mul-double v1, v1, v6

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v10

    sub-double v12, v10, v12

    mul-double v6, v6, v12

    add-double/2addr v1, v6

    div-double v1, v1, v16

    mul-double v8, v8, v1

    add-double/2addr v4, v8

    mul-double v1, v1, v14

    add-double/2addr v10, v1

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, v4, v5, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_1
    move-object/from16 v0, p1

    .line 5
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v4

    move-object/from16 v3, p2

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, v6

    mul-double v1, v1, v4

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-ltz v6, :cond_2

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v0, v10

    iget-wide v2, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v10, v2

    mul-double v0, v0, v10

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_2

    const/16 v18, 0x1

    :cond_2
    return v18
.end method

.method public static h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 8

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v6

    mul-double v0, v0, v4

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, v2

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr p0, v6

    mul-double v4, v4, p0

    sub-double/2addr v0, v4

    return-wide v0
.end method

.method public static i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, p0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v8, v4, v6

    .line 2
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v14, v10, v12

    sub-double/2addr v12, v10

    mul-double v12, v12, v6

    sub-double/2addr v4, v6

    mul-double v4, v4, v10

    sub-double/2addr v12, v4

    .line 3
    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v10, v4, v6

    .line 4
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v16, v0, v2

    sub-double/2addr v2, v0

    mul-double v2, v2, v6

    sub-double/2addr v4, v6

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    mul-double v0, v8, v16

    mul-double v4, v10, v14

    sub-double/2addr v0, v4

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double v18, v4, v6

    if-gez v18, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    mul-double v14, v14, v2

    mul-double v16, v16, v12

    sub-double v14, v14, v16

    div-double v17, v14, v0

    mul-double v12, v12, v10

    mul-double v2, v2, v8

    sub-double/2addr v12, v2

    div-double v19, v12, v0

    move-object/from16 v0, p1

    .line 6
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v3, p0

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v4

    .line 7
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v6

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v10, v6, v8

    if-lez v10, :cond_1

    .line 9
    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v4, v17, v4

    div-double/2addr v4, v1

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v2, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v0, v2

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    move-wide/from16 v21, v4

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v1, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v1, v19, v1

    div-double/2addr v1, v4

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v4, v6

    mul-double v1, v1, v4

    add-double/2addr v1, v6

    move-wide/from16 v21, v1

    .line 11
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v0
.end method

.method public static k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v7, v3, v5

    .line 2
    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v13, v9, v11

    mul-double v15, v7, v7

    mul-double v17, v13, v13

    add-double v15, v15, v17

    const-wide v17, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v15, v17

    if-gez v2, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v17, v1, v3

    sub-double v5, v3, v5

    mul-double v17, v17, v5

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v19, v5, v9

    sub-double v11, v9, v11

    mul-double v19, v19, v11

    add-double v17, v17, v19

    div-double v17, v17, v15

    mul-double v7, v7, v17

    add-double/2addr v3, v7

    mul-double v17, v17, v13

    add-double v9, v9, v17

    sub-double/2addr v3, v1

    sub-double/2addr v9, v5

    mul-double v3, v3, v3

    mul-double v9, v9, v9

    add-double/2addr v3, v9

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v5

    .line 2
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v7

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    .line 4
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    .line 5
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v0

    mul-double v2, v2, v2

    mul-double v4, v4, v4

    add-double/2addr v2, v4

    return-wide v2

    .line 6
    :cond_0
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v11, v7, v9

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v13, v9, v13

    mul-double v11, v11, v13

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v15, v13, v0

    move-wide/from16 v17, v13

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v13, v0, v13

    mul-double v15, v15, v13

    add-double/2addr v11, v15

    mul-double v13, v3, v3

    mul-double v15, v5, v5

    add-double/2addr v13, v15

    div-double/2addr v11, v13

    mul-double v3, v3, v11

    add-double/2addr v9, v3

    mul-double v11, v11, v5

    add-double/2addr v0, v11

    sub-double/2addr v9, v7

    sub-double v0, v0, v17

    mul-double v9, v9, v9

    mul-double v0, v0, v0

    add-double/2addr v9, v0

    return-wide v9
.end method

.method public static m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;[D)D
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v7, v3, v5

    .line 2
    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v11, v9, v1

    mul-double v13, v7, v7

    mul-double v15, v11, v11

    add-double/2addr v13, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide v17, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v19, v13, v17

    if-gez v19, :cond_0

    .line 3
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v3

    .line 4
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v9

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v11, v1, v7

    add-double/2addr v3, v11

    .line 5
    aput-wide v3, p3, v16

    mul-double v7, v7, v5

    add-double/2addr v9, v7

    .line 6
    aput-wide v9, p3, v15

    mul-double v1, v1, v1

    mul-double v5, v5, v5

    add-double/2addr v1, v5

    return-wide v1

    :cond_0
    move-wide/from16 p1, v11

    .line 7
    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v17, v11, v3

    sub-double v5, v3, v5

    mul-double v17, v17, v5

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v19, v5, v9

    sub-double v0, v9, v1

    mul-double v19, v19, v0

    add-double v17, v17, v19

    div-double v17, v17, v13

    mul-double v7, v7, v17

    add-double/2addr v3, v7

    mul-double v17, v17, p1

    add-double v9, v9, v17

    sub-double v0, v3, v11

    sub-double v5, v9, v5

    .line 8
    aput-wide v3, p3, v16

    .line 9
    aput-wide v9, p3, v15

    mul-double v0, v0, v0

    mul-double v5, v5, v5

    add-double/2addr v0, v5

    return-wide v0
.end method

.method public static n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v7, v3, v5

    .line 2
    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v13, v9, v11

    mul-double v15, v7, v7

    mul-double v17, v13, v13

    add-double v15, v15, v17

    const-wide v17, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v19, v15, v17

    if-gez v19, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0

    .line 4
    :cond_0
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v3

    sub-double v5, v3, v5

    mul-double v1, v1, v5

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v9

    sub-double v11, v9, v11

    mul-double v5, v5, v11

    add-double/2addr v1, v5

    div-double/2addr v1, v15

    mul-double v5, v1, v7

    add-double v20, v3, v5

    mul-double v1, v1, v13

    add-double v22, v9, v1

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, v0, v17

    if-lez v2, :cond_1

    move-object/from16 v0, p1

    .line 6
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v1, v1, v20

    div-double/2addr v1, v7

    move-object/from16 v3, p2

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    .line 7
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v1, v1, v22

    div-double/2addr v1, v13

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    :goto_0
    sub-double/2addr v3, v5

    mul-double v1, v1, v3

    add-double/2addr v1, v5

    move-wide/from16 v24, v1

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v0
.end method

.method public static o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    .line 2
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v6

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    const-wide v8, 0x2b2bff2ee48e0530L    # 1.0E-100

    add-double/2addr v6, v8

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double v6, p2, v6

    .line 4
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v10, v2, v6

    add-double v12, v8, v10

    .line 5
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v6, v6, v4

    sub-double v16, v14, v6

    sub-double v10, v8, v10

    add-double/2addr v6, v14

    move-wide/from16 p2, v6

    .line 6
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v6, v14

    sub-double v18, v12, v8

    mul-double v6, v6, v18

    move-wide/from16 v18, v10

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v10, v8

    sub-double v8, v16, v14

    mul-double v10, v10, v8

    sub-double/2addr v6, v10

    const-wide/16 v8, 0x0

    if-eqz p4, :cond_0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_1

    goto :goto_0

    :cond_0
    cmpl-double v10, v6, v8

    if-lez v10, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v16, p2

    move-wide/from16 v12, v18

    .line 7
    :goto_0
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object/from16 v20, v7

    move-wide/from16 v21, v16

    move-wide/from16 v23, v12

    move-wide/from16 v25, v8

    invoke-direct/range {v20 .. v26}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-double v19, v16, v2

    add-double v21, v12, v4

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object/from16 v18, v0

    move-wide/from16 v23, v1

    invoke-direct/range {v18 .. v24}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    invoke-direct {v6, v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v6
.end method

.method public static p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, p2

    .line 1
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, v6

    .line 2
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v8

    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    const-wide v10, 0x2b2bff2ee48e0530L    # 1.0E-100

    add-double/2addr v8, v10

    .line 3
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    mul-double v4, v4, v2

    mul-double v4, v4, v10

    mul-double v6, v6, v2

    mul-double v6, v6, v10

    .line 4
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v8, v2, v4

    .line 5
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v12, v10, v6

    .line 6
    iget-wide v14, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 p2, v8

    add-double v8, v14, v4

    .line 7
    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v16, v8

    sub-double v8, v0, v6

    sub-double/2addr v2, v4

    add-double/2addr v10, v6

    sub-double/2addr v14, v4

    add-double/2addr v0, v6

    .line 8
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v6, p2

    invoke-direct {v5, v12, v13, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v10, v11, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v0, v1, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v14, v16

    invoke-direct {v0, v8, v9, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v4, v5, v6, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v4
.end method

.method public static s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    .line 2
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v6

    .line 3
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v6, v8

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    const-wide v10, 0x2b2bff2ee48e0530L    # 1.0E-100

    add-double/2addr v8, v10

    .line 4
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    mul-double v2, v2, p2

    mul-double v2, v2, v10

    .line 5
    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double v13, v2, v8

    mul-double v2, p2, v4

    mul-double v2, v2, v10

    .line 6
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v15, v2, v4

    mul-double v2, p2, v6

    mul-double v2, v2, v10

    .line 7
    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double v17, v2, v0

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v0
.end method

.method public static t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    .line 2
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v6

    .line 3
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v6, v8

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    const-wide v10, 0x2b2bff2ee48e0530L    # 1.0E-100

    add-double/2addr v8, v10

    .line 4
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    mul-double v1, p2, v2

    mul-double v1, v1, v10

    .line 5
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double v13, v1, v8

    mul-double v1, p2, v4

    mul-double v1, v1, v10

    .line 6
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v15, v1, v3

    mul-double v1, p2, v6

    mul-double v1, v1, v10

    .line 7
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double v17, v1, v3

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v0
.end method

.method public static u(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 1
    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    neg-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, v1

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v14, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v12, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    add-double/2addr v4, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v18, v4, v12

    move-object v13, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v13 .. v19}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    neg-double v4, v10

    move-object v0, v1

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method

.method public static v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, p2

    .line 1
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, v6

    .line 2
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v8

    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    const-wide v10, 0x2b2bff2ee48e0530L    # 1.0E-100

    add-double/2addr v8, v10

    .line 3
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    mul-double v8, v4, v2

    mul-double v8, v8, v10

    mul-double v2, v2, v6

    mul-double v2, v2, v10

    .line 4
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v12, v10, v8

    .line 5
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v14, v0, v2

    sub-double/2addr v10, v8

    add-double/2addr v0, v2

    add-double v2, v12, v6

    add-double v8, v14, v4

    add-double/2addr v6, v10

    add-double/2addr v4, v0

    move-wide/from16 p0, v0

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v14, v15, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v8, v9, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v4, p0

    invoke-direct {v3, v4, v5, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v0, v1, v12, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0
.end method

.method public static w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    .line 1
    invoke-static {p0, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    invoke-static {p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->u(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method

.method public static x(DDLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 4

    .line 1
    iget-wide v0, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, p0

    iget-wide v2, p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr p0, v2

    mul-double v0, v0, p0

    const-wide/16 p0, 0x0

    cmpl-double v2, v0, p0

    if-ltz v2, :cond_0

    iget-wide v0, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v0, p2

    iget-wide p4, p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr p2, p4

    mul-double v0, v0, p2

    cmpl-double p2, v0, p0

    if-ltz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 6

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v0, p0

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr p0, v4

    mul-double v0, v0, p0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static z(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 6

    .line 1
    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {p1, p0, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {p2, p0, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    cmpl-double p2, p0, v3

    if-ltz p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
