.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/o3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZILcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)Z"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 1
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_14

    if-gtz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    int-to-double v4, v0

    const/4 v0, -0x1

    .line 2
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 3
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 4
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v9, 0x0

    .line 5
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_5

    .line 6
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v12, v9, 0x1

    .line 7
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-virtual {v10, v13, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v18, v14, v16

    if-gtz v18, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v14, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v14, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v13, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpg-double v10, v13, v16

    if-gez v10, :cond_2

    :goto_1
    move v9, v12

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    move v0, v9

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    if-le v12, v0, :cond_4

    .line 14
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    goto :goto_2

    :cond_4
    move v0, v12

    :cond_5
    :goto_2
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    if-ltz v0, :cond_e

    .line 15
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 16
    :goto_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p0, :cond_6

    add-int/lit8 v10, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v0, -0x1

    :goto_4
    if-gez v10, :cond_7

    const/4 v10, 0x0

    .line 17
    :cond_7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    if-le v10, v12, :cond_8

    .line 18
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v11

    :cond_8
    if-ne v0, v10, :cond_9

    goto/16 :goto_6

    .line 19
    :cond_9
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    .line 21
    invoke-virtual {v9, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    add-double/2addr v12, v4

    cmpg-double v4, v12, v14

    if-gtz v4, :cond_b

    .line 22
    invoke-static {v9, v0, v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    if-eqz p0, :cond_a

    .line 23
    invoke-static {v9, v0, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    goto :goto_5

    .line 24
    :cond_a
    invoke-static {v0, v9, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 25
    :goto_5
    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    goto :goto_6

    .line 26
    :cond_b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    const/4 v5, 0x2

    if-ne v10, v4, :cond_c

    if-eqz p0, :cond_c

    .line 27
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 28
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v2, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    goto :goto_6

    :cond_c
    if-nez v10, :cond_d

    if-nez p0, :cond_d

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 31
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 32
    invoke-virtual {v1, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    :goto_6
    return v11

    .line 33
    :cond_d
    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sub-double v4, v12, v14

    move v0, v10

    goto/16 :goto_3

    .line 34
    :cond_e
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    cmpg-double v0, v8, v12

    if-gez v0, :cond_11

    if-eqz p0, :cond_f

    .line 35
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v2, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    goto/16 :goto_9

    .line 36
    :cond_f
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpg-double v0, v8, v14

    if-gez v0, :cond_10

    .line 37
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v8, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    goto :goto_7

    .line 38
    :cond_10
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v8, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 39
    :goto_7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v0, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    goto :goto_9

    .line 40
    :cond_11
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    if-eqz p0, :cond_13

    .line 41
    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpg-double v10, v8, v14

    if-gez v10, :cond_12

    add-int/lit8 v8, v0, -0x1

    .line 42
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v9, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    goto :goto_8

    .line 43
    :cond_12
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v9, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 44
    :goto_8
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    goto :goto_9

    .line 45
    :cond_13
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v0, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    :cond_14
    :goto_9
    return v3
.end method
