.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    .line 1
    sget-boolean v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/j/a;->a:Z

    if-eqz v5, :cond_0

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    .line 2
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_1

    :cond_1
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_1
    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    .line 3
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 4
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v13

    .line 5
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;-><init>()V

    .line 6
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    iget-wide v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 7
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    move/from16 v23, v5

    const/4 v5, 0x0

    invoke-static {v14, v15, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    div-double v6, v6, v16

    move-wide/from16 v24, v6

    .line 8
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    const/4 v7, 0x1

    invoke-static {v14, v15, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    div-double v5, v5, v16

    .line 9
    invoke-virtual {v13, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    move-object/from16 v16, v12

    .line 10
    invoke-virtual {v13, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    move-wide/from16 v17, v10

    .line 11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u53f3\u6253\u6ee1\u56de\u6b63\u65b9\u6848:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",L="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , \u540e\u9000\u534a\u5f84="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v24

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " , \u524d\u8fdb\u534a\u5f84="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    add-double v10, v8, v2

    .line 12
    iput-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 13
    iput-wide v8, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 14
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 15
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v11}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    .line 16
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v32, v5

    mul-double v4, v2, v24

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-object v6, v12

    mul-double v11, v2, v19

    invoke-virtual {v10, v4, v5, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v28, 0x0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-object/from16 v26, v10

    move-object/from16 v27, v7

    .line 17
    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide v11, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v4

    move-object/from16 v25, v10

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 21
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 23
    iput-wide v8, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 24
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v12}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    move-wide/from16 v30, v8

    iget-wide v8, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v34, v5

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    invoke-virtual {v12, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v12, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v12, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v24

    sub-double v19, v19, v24

    const-wide/high16 v35, 0x3fe0000000000000L    # 0.5

    mul-double v19, v19, v35

    sub-double v8, v8, v19

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    invoke-virtual {v5, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    sub-double v8, v8, v19

    iput-wide v8, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 27
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 28
    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 29
    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    .line 30
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v12}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    move-object/from16 v37, v11

    iget-wide v11, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v11, v8

    move-wide/from16 v19, v8

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    sub-double/2addr v11, v8

    iput-wide v11, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 31
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 32
    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v8, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 33
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    iget-wide v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v12, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v24

    sub-double v8, v8, v24

    iput-wide v8, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    .line 35
    invoke-static {v5, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v38, v24

    check-cast v38, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v39, 0x0

    const/16 v40, 0x384

    .line 37
    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    int-to-short v8, v8

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-byte v9, v9

    const/16 v46, 0x0

    move/from16 v41, v8

    move/from16 v45, v9

    invoke-virtual/range {v38 .. v46}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    goto :goto_2

    .line 38
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v24, v8, v2

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    move-object/from16 v40, v11

    div-double v11, v24, v8

    double-to-int v11, v11

    int-to-double v8, v11

    const-wide v24, -0x4006de04abbbd2e8L    # -1.5707963267948966

    div-double v43, v24, v8

    const/4 v12, 0x0

    :goto_3
    if-gt v12, v11, :cond_5

    move-wide/from16 v45, v8

    int-to-double v8, v12

    mul-double v8, v8, v43

    move-object/from16 p2, v5

    .line 39
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move-wide/from16 v47, v2

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v2

    move-object/from16 v25, v10

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-int v3, v14

    const-wide v24, 0x4056800000000000L    # 90.0

    .line 41
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    add-double v8, v8, v24

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    mul-double v8, v8, v21

    double-to-int v5, v8

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v57, 0x0

    move-object/from16 v49, v2

    move/from16 v50, v3

    move/from16 v51, v5

    move/from16 v52, v8

    move/from16 v56, v9

    invoke-virtual/range {v49 .. v57}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-eqz v12, :cond_3

    if-ne v12, v11, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p2

    move-wide/from16 v8, v45

    move-wide/from16 v2, v47

    goto :goto_3

    :cond_5
    move-wide/from16 v47, v2

    move-object/from16 p2, v5

    move-wide/from16 v45, v8

    move-object/from16 v2, v37

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    .line 43
    invoke-static {v4, v2, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v49, v8

    check-cast v49, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v50, 0x0

    const/16 v51, 0x0

    .line 45
    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v57, 0x0

    move/from16 v52, v8

    move/from16 v56, v9

    invoke-virtual/range {v49 .. v57}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    .line 46
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v5, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 48
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 50
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 51
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    move-wide/from16 v43, v14

    .line 52
    iget-wide v14, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 p3, v10

    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move/from16 v37, v11

    iget-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d(D)I

    move-result v9

    int-to-double v9, v9

    mul-double v9, v9, v32

    add-double/2addr v14, v9

    iput-wide v14, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 53
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v9}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 54
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v10}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    if-eqz p6, :cond_11

    .line 55
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v12}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 56
    invoke-virtual {v10, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v24

    invoke-virtual {v10, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    sub-double v9, v24, v9

    double-to-float v9, v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d(D)I

    move-result v9

    .line 57
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    int-to-double v14, v9

    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v35, v14, v24

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v10

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 58
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide v24, 0x3fd999999999999aL    # 0.4

    mul-double v17, v17, v24

    div-double v17, v17, v32

    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v17, v24, v17

    mul-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v12

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 59
    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 60
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v11, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 61
    iget-wide v11, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v54, v4

    iget-wide v4, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v11

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d(D)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v17, 0x4049000000000000L    # 50.0

    add-double v19, v19, v17

    mul-double v4, v4, v19

    add-double/2addr v11, v4

    iput-wide v11, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v11, 0x4035000000000000L    # 21.0

    .line 63
    invoke-static {v2, v6, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v8, 0x0

    .line 65
    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v58, v6

    move-object/from16 v6, v16

    move-object/from16 p6, v5

    move-object v5, v13

    move v13, v8

    move-object/from16 v50, v7

    move-object/from16 v60, v14

    move-wide/from16 v7, v43

    const/4 v14, 0x0

    move-object/from16 v43, v1

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    move-object v0, v15

    const/4 v1, 0x3

    move v15, v11

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object v15, v0

    move-object v13, v5

    move-object/from16 v16, v6

    move-object/from16 v1, v43

    move-object/from16 v6, v58

    move-object/from16 v14, v60

    move-object/from16 v0, p0

    move-object/from16 v5, p6

    move-wide/from16 v43, v7

    move-object/from16 v7, v50

    goto :goto_5

    :cond_7
    move-object/from16 v58, v6

    move-object/from16 v50, v7

    move-object v5, v13

    move-object/from16 v60, v14

    move-object v0, v15

    move-object/from16 v6, v16

    move-wide/from16 v7, v43

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    move-object/from16 v43, v1

    const/4 v1, 0x3

    mul-double v13, v11, v32

    const-wide/high16 v11, 0x403e000000000000L    # 30.0

    div-double/2addr v13, v11

    double-to-int v11, v13

    int-to-double v12, v11

    div-double v35, v35, v12

    const/4 v15, 0x1

    :goto_6
    if-ge v15, v11, :cond_a

    int-to-double v12, v15

    mul-double v12, v12, v35

    .line 66
    new-instance v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v14}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v44, v5

    move-object/from16 v5, v58

    invoke-direct {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v1

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v1

    .line 67
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v15

    neg-double v14, v7

    double-to-int v14, v14

    .line 68
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    mul-double v12, v12, v17

    double-to-int v15, v12

    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v1

    move/from16 v24, v13

    move v13, v14

    move v14, v15

    move/from16 p1, v9

    move/from16 v9, v16

    move/from16 v15, v24

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v12, 0x1

    if-eq v9, v12, :cond_8

    add-int/lit8 v13, v11, -0x1

    if-ne v9, v13, :cond_9

    .line 69
    :cond_8
    invoke-virtual {v1, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_9
    add-int/lit8 v15, v9, 0x1

    move/from16 v9, p1

    move-object/from16 v58, v5

    move-object/from16 v5, v44

    const/4 v1, 0x3

    goto :goto_6

    :cond_a
    move-object/from16 v44, v5

    move/from16 p1, v9

    move-object/from16 v5, v58

    move-object/from16 v1, v60

    const-wide/high16 v12, 0x4035000000000000L    # 21.0

    .line 70
    invoke-static {v10, v1, v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v9

    .line 71
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v13, 0x0

    const/16 v14, -0x384

    .line 72
    sget-object v15, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v15, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_7

    .line 73
    :cond_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 74
    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v12, 0x3

    const/4 v15, 0x2

    invoke-direct {v9, v11, v12, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v9, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 76
    iput-object v4, v9, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v9, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 78
    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v12, 0x0

    invoke-static {v5, v3, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual {v11, v5, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v11

    neg-double v13, v7

    invoke-direct {v9, v11, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v0, v3, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    const-wide/16 v11, 0x0

    invoke-direct {v9, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    invoke-static {v10, v1, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    const-wide/16 v9, 0x0

    invoke-direct {v3, v1, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    .line 81
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 84
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v9, v30

    invoke-direct {v1, v3, v4, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-wide/from16 v9, v47

    .line 85
    invoke-static {v1, v0, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 86
    invoke-static {v1, v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 87
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v30, v7

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v9, v10, v11, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 88
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    .line 89
    invoke-static {v0, v3, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v55, v10

    check-cast v55, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v56, 0x0

    const/16 v57, -0x384

    .line 91
    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v63, 0x0

    move/from16 v58, v10

    move/from16 v62, v11

    invoke-virtual/range {v55 .. v63}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_8

    .line 92
    :cond_c
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move/from16 v0, p1

    neg-int v0, v0

    int-to-double v10, v0

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v10, v10, v16

    div-double v10, v10, v45

    move/from16 v8, v37

    const/4 v0, 0x1

    :goto_9
    if-ge v0, v8, :cond_f

    move-object/from16 v58, v5

    move-object/from16 v37, v6

    int-to-double v5, v0

    mul-double v5, v5, v10

    .line 93
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v15, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v15

    move-object/from16 v25, v9

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v12

    .line 94
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-int v15, v13

    const-wide v16, -0x3fa9800000000000L    # -90.0

    .line 95
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    add-double v5, v5, v16

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v16

    double-to-int v5, v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 p1, v9

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v68, 0x0

    move-object/from16 v60, v12

    move/from16 v61, v15

    move/from16 v62, v5

    move/from16 v63, v6

    move/from16 v67, v9

    invoke-virtual/range {v60 .. v68}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v5, 0x1

    if-eq v0, v5, :cond_d

    add-int/lit8 v6, v8, -0x1

    if-ne v0, v6, :cond_e

    .line 96
    :cond_d
    invoke-virtual {v12, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, p1

    move-object/from16 v6, v37

    move-object/from16 v5, v58

    const/4 v15, 0x2

    goto :goto_9

    :cond_f
    move-object/from16 v58, v5

    move-object/from16 v37, v6

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    .line 97
    invoke-static {v4, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v60, v6

    check-cast v60, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v61, 0x0

    const/16 v62, 0x0

    .line 99
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v68, 0x0

    move/from16 v63, v6

    move/from16 v67, v8

    invoke-virtual/range {v60 .. v68}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_a

    .line 100
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 101
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v6, 0x4

    const/4 v8, 0x2

    invoke-direct {v0, v5, v6, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    move-object/from16 v11, v37

    iput-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 103
    iput-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 105
    invoke-static {v1, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 106
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v0, v1, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    invoke-direct {v5, v0, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v4, v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v4, v2, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    invoke-direct {v1, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v9, v30

    move-object/from16 v4, v58

    goto/16 :goto_e

    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v54, v4

    move-object/from16 v58, v6

    move-object/from16 v50, v7

    move-object/from16 v11, v16

    move-wide/from16 v30, v43

    move-wide/from16 v9, v47

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    const/4 v8, 0x2

    move-object/from16 v43, v1

    move-object/from16 v44, v13

    .line 109
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    mul-double v12, v12, v35

    .line 110
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v4, v58

    invoke-direct {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    neg-double v5, v12

    invoke-virtual {v1, v14, v15, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 111
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    mul-double v5, v5, v5

    sub-double v12, v9, v12

    mul-double v12, v12, v12

    add-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v12, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    .line 112
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v15, v44

    invoke-virtual {v15, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    move-wide/from16 v24, v9

    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    sub-double v8, v8, v16

    .line 113
    iget-wide v12, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v5, v5, v5

    iget-wide v14, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v16, v8, v14

    sub-double v14, v8, v14

    mul-double v16, v16, v14

    sub-double v5, v5, v16

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v12, v5

    .line 114
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v12, v13, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    .line 116
    invoke-static {v2, v4, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 118
    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, v44

    const/4 v9, 0x2

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_b

    :cond_12
    move-object/from16 v8, v44

    const/4 v9, 0x2

    mul-double v12, v5, v24

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v12, v14

    double-to-int v7, v12

    neg-double v12, v5

    int-to-double v14, v7

    div-double v35, v12, v14

    const/4 v10, 0x1

    :goto_c
    if-gt v10, v7, :cond_15

    int-to-double v12, v10

    mul-double v12, v12, v35

    .line 119
    new-instance v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v14}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v15, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v15

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v15

    .line 120
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v25, v5

    move/from16 v24, v10

    move-wide/from16 v9, v30

    neg-double v5, v9

    double-to-int v5, v5

    .line 121
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v12, v12, v16

    double-to-int v14, v12

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v12, v15

    move v13, v5

    move-object v5, v15

    move v15, v6

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move/from16 v6, v24

    const/4 v12, 0x1

    if-eq v6, v12, :cond_13

    add-int/lit8 v13, v7, -0x1

    if-ne v6, v13, :cond_14

    .line 122
    :cond_13
    invoke-virtual {v5, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_14
    add-int/lit8 v5, v6, 0x1

    move-wide/from16 v30, v9

    const/4 v9, 0x2

    move v10, v5

    move-wide/from16 v5, v25

    goto :goto_c

    :cond_15
    move-wide/from16 v25, v5

    move-wide/from16 v9, v30

    .line 123
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v7, 0x3

    const/4 v12, 0x2

    invoke-direct {v5, v6, v7, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 124
    iput-object v1, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 125
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 126
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v13, 0x0

    invoke-static {v4, v3, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    invoke-virtual {v12, v4, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v12

    neg-double v13, v9

    invoke-direct {v7, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-object/from16 v24, v5

    move-object/from16 v25, v3

    move-wide/from16 v26, v15

    invoke-virtual/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 128
    iget-object v7, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v15, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v15}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v44, v8

    const/4 v8, 0x0

    invoke-static {v5, v3, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v15, v5, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    invoke-direct {v12, v0, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    const/4 v5, 0x4

    const/4 v7, 0x2

    invoke-direct {v0, v6, v5, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v5, :cond_16

    add-int/lit8 v6, v5, -0x1

    sub-int/2addr v6, v8

    .line 132
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setGear(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 133
    :cond_16
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 135
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v6, 0x1

    invoke-static {v4, v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    invoke-static {v4, v2, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-virtual {v3, v2, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    invoke-direct {v1, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_e
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    move-object/from16 v1, p2

    move-object/from16 v3, v40

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 138
    invoke-static {v3, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 139
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v13, 0x0

    const/16 v14, 0x384

    .line 140
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_f

    .line 141
    :cond_17
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 142
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    invoke-static {v3, v1, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-direct {v5, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    move-object/from16 v1, v43

    .line 144
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 146
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v6, v50

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 v7, p3

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    invoke-direct {v1, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v5, v34

    invoke-static {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 v6, v54

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    invoke-static {v6, v2, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    invoke-direct {v1, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 150
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v32

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v32

    invoke-virtual {v0, v7, v8, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 151
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-object v13, v0

    invoke-virtual/range {v12 .. v17}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v5, 0x4035000000000000L    # 21.0

    .line 153
    invoke-static {v2, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 155
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_10

    .line 156
    :cond_18
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v7, v32, v5

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double/2addr v7, v12

    double-to-int v2, v7

    int-to-double v7, v2

    div-double/2addr v5, v7

    const/4 v7, 0x1

    :goto_11
    if-ge v7, v2, :cond_1b

    int-to-double v12, v7

    mul-double v18, v5, v12

    .line 157
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-object v13, v0

    invoke-virtual/range {v12 .. v17}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v8

    .line 158
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-int v13, v9

    .line 159
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    mul-double v14, v14, v21

    double-to-int v14, v14

    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v12, v8

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v12, 0x1

    if-eq v7, v12, :cond_19

    add-int/lit8 v13, v2, -0x1

    if-ne v7, v13, :cond_1a

    .line 160
    :cond_19
    invoke-virtual {v8, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 161
    :cond_1b
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 162
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v5, p0

    .line 163
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v6, v44

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide v7, 0x4062c00000000000L    # 150.0

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 164
    invoke-static {v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v13, 0x0

    const/16 v14, 0x384

    .line 166
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v19, v23

    invoke-virtual/range {v12 .. v20}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_12

    .line 167
    :cond_1c
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v2, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 169
    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 171
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v6, 0x1

    invoke-static {v4, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    invoke-direct {v3, v4, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v1, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v11
.end method
