.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;
    .locals 58

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v4

    move-object/from16 v5, p2

    .line 2
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 3
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 4
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 5
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v9, 0x0

    .line 6
    invoke-static {v2, v3, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v10

    .line 7
    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    div-double/2addr v12, v10

    .line 8
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v10}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    iget-wide v10, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v14, v14, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v14}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    iget-wide v14, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v14

    iput-wide v10, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 9
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 10
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v16, v16, v12

    sub-double v16, v16, v10

    mul-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    .line 11
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v9}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    iget-wide v2, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    sub-double v16, v14, v0

    add-double v2, v2, v16

    iput-wide v2, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 12
    iget-wide v0, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v12

    sub-double v9, v2, v10

    const-wide/high16 v16, -0x4000000000000000L    # -2.0

    move-wide/from16 v18, v14

    mul-double v14, v12, v16

    mul-double v16, v0, v0

    mul-double v20, v9, v9

    add-double v16, v16, v20

    mul-double v20, v14, v14

    sub-double v16, v16, v20

    move-object v11, v6

    move-object/from16 v20, v7

    .line 13
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 14
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    neg-double v9, v9

    neg-double v14, v14

    .line 15
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    add-double v16, v9, v16

    neg-double v6, v6

    .line 16
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v9, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v14, 0x0

    cmpg-double v21, v16, v6

    if-gez v21, :cond_0

    cmpl-double v21, v16, v14

    if-lez v21, :cond_0

    move-wide/from16 v9, v16

    .line 17
    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v2, v2, v16

    sub-double/2addr v0, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 18
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    neg-double v6, v12

    .line 19
    invoke-virtual {v2, v6, v7, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 21
    invoke-virtual {v3, v12, v13, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v6, v11

    .line 22
    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v21

    neg-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v7, v20

    .line 23
    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v21

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    const-string v8, "2-3\u70b9\u7684\u8ddd\u79bb:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, v2

    move-object/from16 v27, v3

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u7406\u8bba\u8ddd\u79bb:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u5dee\u503c:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    sub-double/2addr v2, v0

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u540e\u8f74\u79bb23\u7ebf\u7684\u7406\u8bba\u6700\u5927\u8ddd\u79bb:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v18

    double-to-int v2, v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u540e\u8f74\u5230\u8f66\u5c3e\u7684\u8ddd\u79bb:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    move-wide/from16 p5, v0

    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    invoke-static {v3, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;-><init>()V

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_0
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    .line 29
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move-object v11, v6

    move-object/from16 v28, v7

    .line 30
    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v6, p0

    .line 31
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    move-object/from16 v38, v8

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v39, v11

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v40, v14

    iget-object v14, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v15, v14, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v14, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v11, v15, v14}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    sub-double/2addr v7, v14

    iput-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 32
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 33
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v14, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 34
    iget-object v8, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    iget-wide v14, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 v42, v9

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    sub-double/2addr v14, v8

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    add-double/2addr v14, v8

    iput-wide v14, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 35
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-direct {v10, v11, v14, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 36
    invoke-static {v3, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v11

    iput-object v11, v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 37
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v29, v11

    check-cast v29, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v30, 0x0

    const/16 v31, 0x384

    .line 38
    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move/from16 v32, v11

    move/from16 v36, v1

    invoke-virtual/range {v29 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_1

    .line 39
    :cond_2
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 40
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v15, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v15}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v3, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v15, v7, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    const-wide/16 v8, 0x0

    invoke-direct {v11, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    .line 42
    invoke-static {v7, v5, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v7

    .line 43
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v29, v9

    check-cast v29, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v30, 0x0

    const/16 v31, 0x384

    .line 44
    sget-object v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    int-to-short v9, v9

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    sget-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-byte v10, v10

    const/16 v37, 0x0

    move/from16 v32, v9

    move/from16 v36, v10

    invoke-virtual/range {v29 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_2

    .line 45
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v14

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    mul-double v9, v42, v12

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    div-double/2addr v9, v7

    double-to-int v9, v9

    int-to-double v10, v9

    div-double v10, v40, v10

    const/4 v15, 0x0

    :goto_3
    const-wide/high16 v44, 0x4024000000000000L    # 10.0

    const-wide v46, 0x4056800000000000L    # 90.0

    if-gt v15, v9, :cond_6

    int-to-double v7, v15

    mul-double v7, v7, v10

    .line 47
    new-instance v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v14}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move-object/from16 v48, v4

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-object/from16 v21, v4

    move-object/from16 v22, v38

    invoke-virtual/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v4

    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v31, v12

    move-wide/from16 v12, p3

    double-to-int v14, v12

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    add-double v7, v7, v46

    mul-double v7, v7, v44

    double-to-int v7, v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v57, 0x0

    move-object/from16 v49, v4

    move/from16 v50, v14

    move/from16 v51, v7

    move/from16 v52, v8

    move/from16 v56, v6

    invoke-virtual/range {v49 .. v57}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-eqz v15, :cond_5

    if-ne v15, v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x1

    .line 50
    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v12, v31

    move-object/from16 v4, v48

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v48, v4

    move-wide/from16 v31, v12

    const/4 v6, 0x1

    move-wide/from16 v12, p3

    .line 51
    sget-boolean v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/j/a;->a:Z

    if-eqz v4, :cond_7

    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_6

    .line 53
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    :goto_6
    sub-int/2addr v4, v6

    .line 54
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    move-object/from16 v14, v28

    move-object/from16 v4, v39

    .line 55
    invoke-static {v4, v14, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    .line 56
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v49, v8

    check-cast v49, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v50, 0x0

    .line 59
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v21

    sub-double v21, v46, v21

    move-object v15, v7

    mul-double v7, v21, v44

    double-to-int v7, v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v21, v15

    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v15, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v57, 0x0

    move/from16 v51, v7

    move/from16 v52, v8

    move/from16 v56, v15

    invoke-virtual/range {v49 .. v57}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object/from16 v7, v21

    goto :goto_7

    .line 60
    :cond_8
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_8
    if-gt v4, v9, :cond_b

    int-to-double v7, v4

    mul-double v33, v10, v7

    .line 61
    new-instance v15, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v15}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move/from16 v39, v1

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 v28, v5

    move-object/from16 v35, v6

    neg-double v5, v10

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-object/from16 v21, v1

    move-object/from16 v22, v27

    invoke-virtual/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v1

    .line 62
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    neg-double v5, v12

    double-to-int v5, v5

    .line 63
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double v6, v42, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    sub-double v6, v46, v6

    mul-double v6, v6, v44

    double-to-int v6, v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v57, 0x0

    move-object/from16 v49, v1

    move/from16 v50, v5

    move/from16 v51, v6

    move/from16 v52, v7

    move/from16 v56, v8

    invoke-virtual/range {v49 .. v57}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-eqz v4, :cond_9

    if-ne v4, v9, :cond_a

    :cond_9
    const/4 v5, 0x1

    .line 64
    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v28

    move-object/from16 v6, v35

    move/from16 v1, v39

    goto :goto_8

    :cond_b
    move/from16 v39, v1

    move-object/from16 v28, v5

    move-object/from16 v35, v6

    .line 65
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 66
    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 68
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v6, v28

    move-object/from16 v7, v38

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v5

    invoke-direct {v4, v5, v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v6, v35

    invoke-static {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v6, v27

    const/4 v7, 0x1

    invoke-static {v14, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-virtual {v5, v14, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v5

    neg-double v8, v12

    invoke-direct {v4, v5, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 72
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v1, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    invoke-direct {v4, v1, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v12, v13, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v3

    .line 74
    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u524d\u8fdb\u534a\u5f84:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",\u540e\u9000\u534a\u5f84:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v31

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",\u65b9\u5411\u76d8:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",\u65cb\u8f6c\u89d2\u5ea6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    mul-double v3, v42, v1

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v4, v3

    div-double v14, v40, v4

    .line 76
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move-object/from16 v5, v20

    .line 77
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v1, v2, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_9
    if-gt v7, v3, :cond_e

    int-to-double v10, v7

    mul-double v10, v10, v14

    move-object/from16 v20, v0

    .line 79
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-object/from16 v21, v12

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v0

    .line 80
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-int v12, v8

    .line 81
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    add-double v10, v10, v46

    mul-double v10, v10, v44

    double-to-int v10, v10

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-nez v7, :cond_c

    const/16 v33, 0x1

    goto :goto_a

    :cond_c
    const/16 v33, 0x0

    :goto_a
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v29, v0

    move/from16 v30, v12

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v36, v39

    invoke-virtual/range {v29 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v10, 0x1

    if-ne v7, v3, :cond_d

    .line 82
    invoke-virtual {v0, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_d
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v12, p3

    move-object/from16 v0, v20

    goto :goto_9

    :cond_e
    move-object/from16 v20, v0

    const/4 v10, 0x1

    .line 83
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    add-double v12, p5, v10

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v10, v10, v42

    .line 84
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    .line 85
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    .line 86
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    mul-double v10, v12, v25

    mul-double v12, v12, v23

    invoke-virtual {v7, v10, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    move-object/from16 v21, v0

    move-object/from16 v22, v7

    move-wide/from16 v27, p5

    .line 87
    invoke-static/range {v21 .. v28}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/e;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDD)V

    const-wide/high16 v10, 0x4035000000000000L    # 21.0

    .line 88
    invoke-static {v0, v7, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v10

    .line 89
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v29, v12

    check-cast v29, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v30, 0x0

    .line 90
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    sub-double v12, v46, v12

    mul-double v12, v12, v44

    double-to-int v12, v12

    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    int-to-short v13, v13

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v36, v39

    invoke-virtual/range {v29 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_b

    :cond_f
    const/4 v12, 0x0

    .line 91
    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-static {v7, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const-wide/16 v31, 0x0

    const-wide/high16 v33, -0x4010000000000000L    # -1.0

    move-object/from16 v29, v1

    move-object/from16 v30, v7

    .line 94
    invoke-virtual/range {v29 .. v34}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    :goto_c
    if-gt v2, v3, :cond_12

    int-to-double v10, v2

    mul-double v12, v14, v10

    move-object/from16 p1, v0

    .line 95
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move-wide/from16 v16, v8

    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 p5, v4

    move-object v9, v5

    neg-double v4, v14

    mul-double v4, v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    move-object/from16 v21, v8

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v0

    .line 96
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, p3

    double-to-int v8, v4

    .line 97
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    sub-double v10, v42, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    sub-double v10, v46, v10

    mul-double v10, v10, v44

    double-to-int v10, v10

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v29, v0

    move/from16 v30, v8

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v36, v39

    invoke-virtual/range {v29 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-eqz v2, :cond_11

    if-ne v2, v3, :cond_10

    goto :goto_d

    :cond_10
    const/4 v8, 0x1

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v8, 0x1

    .line 98
    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :goto_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, p5

    move-object v5, v9

    move-wide/from16 v8, v16

    goto :goto_c

    :cond_12
    move-object/from16 p1, v0

    move-object/from16 p5, v4

    move-wide/from16 v16, v8

    const/4 v8, 0x1

    move-object v9, v5

    move-wide/from16 v4, p3

    .line 99
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 100
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 101
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-wide v10, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v8, p0

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v12, v48

    invoke-virtual {v12, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    iget-wide v12, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v3, v10, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    .line 102
    invoke-static {v2, v3, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 103
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v29, v8

    check-cast v29, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v30, 0x0

    const/16 v31, 0x384

    .line 105
    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move/from16 v32, v8

    move/from16 v36, v39

    invoke-virtual/range {v29 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_f

    .line 106
    :cond_13
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v8, 0x3

    const/4 v10, 0x2

    invoke-direct {v2, v3, v8, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    move-object/from16 v3, v20

    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 108
    iput-object v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 110
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v10, p5

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v8

    move-wide/from16 v11, v16

    invoke-direct {v6, v8, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->d(Z)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    const-string v8, "\u4fdd\u6301\u65b9\u5411\u76d8\u4e0d\u52a8\u5f80\u524d\u5f00"

    invoke-virtual {v6, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->c(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v9, p1

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-direct {v6, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v9, 0x1

    invoke-static {v7, v1, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v7

    invoke-direct {v6, v7, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v0, v1, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-direct {v4, v0, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDD)V
    .locals 21

    move-object/from16 v0, p1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    add-double v1, p6, v1

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    move-wide v8, v6

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v5, v1

    move-wide/from16 v1, p6

    :goto_0
    const/16 v14, 0x1e

    if-ge v7, v14, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 1
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/16 v3, 0x51

    int-to-double v3, v3

    sub-double/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v20, v14, v18

    if-gez v20, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v16, 0x0

    cmpl-double v18, v10, v16

    if-eqz v18, :cond_1

    add-double v8, v10, v14

    div-double/2addr v10, v8

    move-wide v8, v10

    .line 2
    :cond_1
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v20, v10, v3

    if-gez v20, :cond_2

    mul-double v3, v1, v8

    sub-double v18, v18, v8

    mul-double v18, v18, v5

    add-double v3, v3, v18

    move-wide v12, v1

    goto :goto_1

    :cond_2
    mul-double v3, v1, v8

    sub-double v18, v18, v8

    mul-double v18, v18, v12

    add-double v3, v3, v18

    move-wide v5, v1

    :goto_1
    move-wide v1, v3

    move-object/from16 v3, p0

    .line 3
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    mul-double v10, v1, p4

    move-wide/from16 p6, v5

    mul-double v5, v1, p2

    invoke-virtual {v4, v10, v11, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v5, p6

    move-wide v10, v14

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
