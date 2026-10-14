.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/e;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    cmpg-double v2, v8, v11

    if-gez v2, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 1
    :goto_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v7, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    if-eqz v14, :cond_1

    .line 2
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v4, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v2

    goto :goto_1

    .line 3
    :cond_1
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v4, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v2

    .line 4
    :goto_1
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    goto :goto_2

    .line 6
    :cond_2
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 7
    :goto_2
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 8
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v2

    .line 9
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    div-double v5, v4, v16

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u76f4\u89d2\u8f6c\u5f2f\u534a\u5f84:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, ",\u8f6c\u5f2f\u89d2\u5ea6:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u65b9\u5411\u76d8\u89d2\u5ea6:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u8f74\u8ddd:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    invoke-static {v7, v15, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    if-eqz v14, :cond_3

    const-wide/16 v3, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object v1, v11

    move-object/from16 v2, p2

    move-wide/from16 v20, v5

    move-wide/from16 v5, v18

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_3

    :cond_3
    move-wide/from16 v20, v5

    const-wide/16 v3, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v1, v11

    move-object/from16 v2, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v1

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    :cond_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_4
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    .line 17
    invoke-static {v15, v7, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    move-object/from16 p1, v11

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double/2addr v4, v10

    .line 19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-wide/high16 v31, 0x4024000000000000L    # 10.0

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v22, v11

    check-cast v22, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v23, 0x0

    mul-double v11, v4, v31

    double-to-int v11, v11

    .line 20
    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v29, v2

    invoke-virtual/range {v22 .. v30}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_5

    .line 21
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v13

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-eqz v14, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x2

    :goto_6
    invoke-virtual {v10, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setLight(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v10

    double-to-int v12, v8

    invoke-virtual {v10, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setWheel(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v10, 0x1

    :goto_7
    const/4 v15, 0x4

    if-gt v10, v15, :cond_8

    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v13

    sub-int/2addr v15, v10

    if-ltz v15, :cond_8

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v13

    sub-int/2addr v15, v10

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-eqz v14, :cond_7

    const/4 v6, 0x1

    goto :goto_8

    :cond_7
    const/4 v6, 0x2

    :goto_8
    invoke-virtual {v15, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setLight(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 24
    :cond_8
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move v10, v12

    iget-wide v11, v1, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double v11, v18, v11

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v20, v20, v18

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    move/from16 v33, v14

    div-double v13, v20, v6

    double-to-int v13, v13

    int-to-double v6, v13

    div-double v18, v18, v6

    if-eqz v33, :cond_9

    const/4 v6, -0x1

    goto :goto_9

    :cond_9
    const/4 v6, 0x1

    :goto_9
    int-to-double v6, v6

    mul-double v6, v6, v18

    const/4 v14, 0x1

    :goto_a
    if-gt v14, v13, :cond_c

    int-to-double v8, v14

    mul-double v8, v8, v6

    .line 25
    new-instance v15, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v15}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move-wide/from16 v34, v6

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v7, p2

    move-wide/from16 v36, v11

    const-wide/high16 v11, 0x403e000000000000L    # 30.0

    invoke-direct {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-object/from16 v18, v6

    move-object/from16 v19, p1

    invoke-virtual/range {v18 .. v23}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v6

    .line 26
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double/2addr v8, v4

    mul-double v8, v8, v31

    double-to-int v8, v8

    .line 27
    sget-object v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eqz v33, :cond_a

    const/16 v26, 0x1

    goto :goto_b

    :cond_a
    const/16 v26, 0x2

    :goto_b
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v22, v6

    move/from16 v23, v10

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v29, v2

    invoke-virtual/range {v22 .. v30}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v8, 0x1

    if-ne v14, v13, :cond_b

    .line 28
    invoke-virtual {v6, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_b
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v8, p3

    move-wide/from16 v6, v34

    move-wide/from16 v11, v36

    goto :goto_a

    :cond_c
    move-object/from16 v7, p2

    move-wide/from16 v36, v11

    const/4 v8, 0x1

    const-wide/high16 v11, 0x403e000000000000L    # 30.0

    .line 29
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 30
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->vector()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 31
    invoke-static {v4, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    .line 32
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v23, 0x0

    mul-double v11, v36, v31

    double-to-int v6, v11

    .line 34
    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move/from16 v24, v6

    move/from16 v25, v8

    move/from16 v29, v2

    invoke-virtual/range {v22 .. v30}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_c

    .line 35
    :cond_d
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    xor-int/lit8 v0, v33, 0x1

    move-object/from16 v2, p1

    .line 36
    invoke-static {v7, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    xor-int/lit8 v5, v33, 0x1

    .line 37
    invoke-static {v4, v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 39
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_d

    .line 40
    :cond_e
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/e;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/e;-><init>()V

    .line 41
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v9, 0x1

    if-eqz v33, :cond_f

    const/4 v11, 0x1

    goto :goto_e

    :cond_f
    const/4 v11, 0x2

    :goto_e
    invoke-direct {v6, v8, v9, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 42
    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 44
    iget-object v3, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    move-wide/from16 v7, p3

    invoke-direct {v6, v0, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5
.end method
