.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDZ)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;
    .locals 83

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    .line 1
    sget-boolean v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/j/a;->a:Z

    if-eqz v3, :cond_0

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 2
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_1

    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_1
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    .line 3
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 4
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 5
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v11

    .line 6
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;-><init>()V

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 8
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    move-wide/from16 p4, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v6, v4

    .line 9
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    move-wide/from16 v16, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double v3, v16, v3

    move-wide/from16 v22, v6

    .line 10
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    move-wide/from16 v24, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->a(DZ)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    move-object/from16 v7, p2

    .line 11
    invoke-virtual {v11, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    move-object/from16 v7, p3

    .line 12
    invoke-virtual {v11, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v10

    const-string v10, "\u53f3\u6253\u6ee1\u56de\u4e00\u5b9a\u89d2\u5ea6\u518d\u56de\u6b63\u65b9\u6848:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v32, v9

    const-string v9, ",wheel1="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ",,wheel2="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",L="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u540e\u9000\u6253\u6ee1\u534a\u5f84="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v22

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u540e\u9000\u56de\u90e8\u5206\u534a\u5f84="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u524d\u8fdb\u534a\u5f84="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    div-double v17, v5, v9

    .line 15
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 16
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    move-wide/from16 v22, v3

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v33, v12

    mul-double v12, v9, v26

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v9

    invoke-virtual {v2, v12, v13, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v28, 0x0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-object/from16 v26, v2

    move-object/from16 v27, v8

    .line 18
    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    iget-wide v3, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v12

    .line 20
    iget-wide v12, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 v35, v14

    iget-wide v14, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v12, v14

    .line 21
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    iget-wide v14, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v0, v14, v5

    move-wide/from16 v37, v5

    add-double v5, v14, v9

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v11

    const-string v11, "\u5f53\u524dy="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 p2, v9

    iget-wide v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ",\u6700\u5927y="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ",\u6700\u5c0fy="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ",\u662f\u5426\u5728\u505c\u8f66\u8303\u56f4\u5185:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v11, v9, v5

    if-lez v11, :cond_2

    cmpg-double v11, v9, v0

    if-gez v11, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    iget-wide v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpg-double v7, v9, v5

    if-ltz v7, :cond_21

    cmpl-double v7, v9, v0

    if-lez v7, :cond_3

    goto/16 :goto_16

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v5, v17, v0

    mul-double v5, v5, v3

    sub-double v0, v0, v17

    mul-double v0, v0, v12

    .line 24
    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v17, v17, v3

    sub-double v9, v9, v17

    sub-double/2addr v9, v14

    mul-double v3, v5, v5

    mul-double v11, v0, v0

    add-double/2addr v3, v11

    mul-double v11, v9, v9

    sub-double/2addr v3, v11

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 26
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    neg-double v5, v9

    .line 27
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    add-double/2addr v9, v0

    neg-double v3, v3

    .line 28
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v5, v9, v3

    if-gez v5, :cond_4

    const-wide/16 v5, 0x0

    cmpl-double v7, v9, v5

    if-lez v7, :cond_4

    goto :goto_3

    :cond_4
    move-wide v9, v0

    .line 29
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5012\u5e93\u7b2c\u4e8c\u6b65\u53f3\u6253\u6ee1\u65f6\u8d70\u7684\u5f27\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    neg-double v5, v9

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v11, v37

    .line 32
    invoke-static {v0, v2, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 33
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v13, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    sub-double v11, v3, v9

    .line 34
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    move-object/from16 v26, v13

    move-object/from16 v27, v1

    move-wide/from16 v30, v3

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 35
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide v17, 0x3fb999999999999aL    # 0.1

    mul-double v17, v17, v24

    div-double v17, v17, p2

    .line 36
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 37
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 38
    iput-wide v14, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v7, p0

    move-object/from16 v40, v3

    .line 39
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v17, v14

    move-object/from16 v14, v39

    invoke-virtual {v14, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    move-object/from16 v39, v0

    move-object/from16 v41, v1

    iget-wide v0, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v15, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 40
    invoke-virtual {v3, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v26

    move-object/from16 v3, p1

    iget-object v15, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-object/from16 v42, v13

    iget-object v13, v15, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v28

    sub-double v26, v26, v28

    const-wide/high16 v43, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v43

    sub-double v0, v0, v26

    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v15, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v13, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v15, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 41
    invoke-virtual {v13, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    iget-object v15, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v26

    sub-double v0, v0, v26

    iput-wide v0, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 42
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move-wide/from16 v45, v11

    .line 43
    iget-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 44
    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    .line 45
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    move-object/from16 v47, v2

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v1, v11

    move-wide/from16 v48, v11

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    sub-double/2addr v1, v11

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 46
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 47
    iget-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v11, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 48
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v26

    sub-double v11, v11, v26

    iput-wide v11, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    .line 50
    invoke-static {v0, v8, v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v50, v15

    check-cast v50, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v51, 0x0

    const/16 v52, 0x384

    .line 52
    sget-object v15, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v15, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    int-to-short v15, v15

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-byte v12, v12

    const/16 v58, 0x0

    move/from16 v53, v15

    move/from16 v57, v12

    invoke-virtual/range {v50 .. v58}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    goto :goto_4

    .line 53
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move-object v15, v7

    invoke-interface {v2, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    mul-double v11, v9, p2

    const-wide/high16 v26, 0x403e000000000000L    # 30.0

    div-double v11, v11, v26

    double-to-int v11, v11

    int-to-double v12, v11

    div-double/2addr v5, v12

    const/4 v12, 0x0

    :goto_5
    const-wide v50, 0x4056800000000000L    # 90.0

    if-ge v12, v11, :cond_7

    move-object/from16 p7, v8

    int-to-double v7, v12

    mul-double v7, v7, v5

    .line 54
    new-instance v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move-wide/from16 v53, v5

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v6, p7

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v5

    move-object/from16 v27, v47

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v5

    .line 55
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 p7, v11

    move/from16 v26, v12

    move-wide/from16 v11, v35

    double-to-int v13, v11

    .line 56
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    add-double v7, v7, v50

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    mul-double v7, v7, v19

    double-to-int v7, v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v69, 0x0

    move-object/from16 v61, v5

    move/from16 v62, v13

    move/from16 v63, v7

    move/from16 v64, v8

    move/from16 v68, v11

    invoke-virtual/range {v61 .. v69}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-nez v26, :cond_6

    const/4 v7, 0x1

    .line 57
    invoke-virtual {v5, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_6
    add-int/lit8 v12, v26, 0x1

    move/from16 v11, p7

    move-object v8, v6

    move-wide/from16 v5, v53

    goto :goto_5

    :cond_7
    move-object v6, v8

    mul-double v11, v45, v37

    const-wide/high16 v37, 0x403e000000000000L    # 30.0

    div-double v11, v11, v37

    double-to-int v5, v11

    move-wide/from16 v11, v45

    neg-double v11, v11

    int-to-double v7, v5

    div-double/2addr v11, v7

    const/4 v8, 0x0

    :goto_6
    if-gt v8, v5, :cond_9

    move v13, v5

    move-object/from16 v45, v6

    int-to-double v5, v8

    mul-double v5, v5, v11

    .line 58
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    move-wide/from16 v52, v11

    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v12, v39

    invoke-direct {v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v11

    move-object/from16 v27, v41

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v7

    .line 59
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v26, v13

    move-wide/from16 v11, v33

    double-to-int v13, v11

    .line 60
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v27

    sub-double v27, v50, v27

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    add-double v27, v27, v5

    move-wide/from16 v29, v9

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v9, v27, v5

    double-to-int v5, v9

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v62, 0x0

    move-object/from16 v54, v7

    move/from16 v55, v13

    move/from16 v56, v5

    move/from16 v57, v6

    move/from16 v61, v9

    invoke-virtual/range {v54 .. v62}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-nez v8, :cond_8

    const/4 v5, 0x1

    .line 61
    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v33, v11

    move/from16 v5, v26

    move-wide/from16 v9, v29

    move-object/from16 v6, v45

    move-wide/from16 v11, v52

    goto :goto_6

    :cond_9
    move-object/from16 v45, v6

    move-wide/from16 v11, v33

    const-wide/high16 v5, 0x4035000000000000L    # 21.0

    move-object/from16 v8, v42

    .line 62
    invoke-static {v8, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v9

    .line 63
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v50, v13

    check-cast v50, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v51, 0x0

    const/16 v52, 0x0

    .line 64
    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v58, 0x0

    move/from16 v53, v13

    move/from16 v57, v7

    invoke-virtual/range {v50 .. v58}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 65
    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v7, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 67
    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v42, v8

    move-wide/from16 v7, v17

    move-object/from16 v9, v32

    .line 68
    iput-wide v7, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 69
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 70
    iget-object v7, v15, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 71
    iget-object v10, v15, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v10}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 72
    iget-wide v5, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 v17, v11

    iget-wide v11, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v34, v0

    move-object/from16 v46, v1

    iget-wide v0, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v11, v0

    invoke-static {v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d(D)I

    move-result v0

    int-to-double v0, v0

    mul-double v0, v0, v22

    add-double/2addr v5, v0

    iput-wide v5, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 73
    iget-object v0, v15, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 74
    iget-object v1, v15, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    if-eqz p8, :cond_15

    .line 75
    iget-object v3, v15, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 76
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v26

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double v0, v26, v0

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d(D)I

    move-result v0

    .line 77
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    int-to-double v11, v0

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v52, v11, v26

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v1

    move-object/from16 v27, v8

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 78
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    mul-double v26, v24, v43

    div-double v26, v26, v22

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v26, v28, v26

    mul-double v11, v11, v26

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v3

    move-object/from16 v27, v8

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 79
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move-object v11, v14

    .line 80
    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v13, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 81
    iget-wide v13, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v13

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d(D)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v26, 0x4049000000000000L    # 50.0

    add-double v28, v48, v26

    mul-double v5, v5, v28

    add-double/2addr v13, v5

    iput-wide v13, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    .line 83
    invoke-static {v4, v9, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 85
    sget-object v14, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v14, v14, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v71, p2

    move-object/from16 v70, v16

    move-object/from16 v73, v11

    move-wide/from16 v26, v17

    move-wide/from16 v16, v35

    move v11, v7

    move-object/from16 p1, v6

    move-object/from16 v75, v12

    move-wide/from16 v35, v26

    move-wide/from16 v6, v37

    move-object/from16 v74, v39

    move v12, v13

    move-object/from16 v76, v42

    move v13, v14

    move-wide/from16 v77, v16

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v16, v30

    move/from16 v17, v21

    move/from16 v18, v31

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object/from16 v15, p0

    move-wide/from16 v17, v35

    move-object/from16 v16, v70

    move-object/from16 v11, v73

    move-object/from16 v12, v75

    move-wide/from16 v35, v77

    const-wide/high16 v26, 0x4049000000000000L    # 50.0

    move-object/from16 v6, p1

    goto :goto_8

    :cond_b
    move-wide/from16 v71, p2

    move-object/from16 v73, v11

    move-object/from16 v75, v12

    move-object/from16 v70, v16

    move-wide/from16 v77, v35

    move-wide/from16 v6, v37

    move-object/from16 v74, v39

    move-object/from16 v76, v42

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    move-wide/from16 v35, v17

    mul-double v12, v10, v22

    div-double/2addr v12, v6

    double-to-int v15, v12

    int-to-double v10, v15

    div-double v52, v52, v10

    const/4 v14, 0x1

    :goto_9
    if-ge v14, v15, :cond_e

    int-to-double v10, v14

    mul-double v10, v10, v52

    .line 86
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v13, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v13

    move-object/from16 v27, v8

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v13

    .line 87
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move/from16 v16, v15

    move-wide/from16 v6, v77

    neg-double v14, v6

    double-to-int v12, v14

    .line 88
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double v10, v10, v14

    double-to-int v14, v10

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v15, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v10, v13

    move v11, v12

    move v12, v14

    move-object v14, v13

    move v13, v15

    move-object/from16 p2, v2

    move-object v2, v14

    move/from16 v15, v17

    move/from16 v14, v18

    move/from16 v79, v15

    move/from16 v29, v16

    move/from16 v15, v26

    move/from16 v16, v27

    move/from16 v17, v21

    move/from16 v18, v28

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move/from16 v10, v79

    const/4 v11, 0x1

    if-eq v10, v11, :cond_c

    add-int/lit8 v15, v29, -0x1

    if-ne v10, v15, :cond_d

    .line 89
    :cond_c
    invoke-virtual {v2, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_d
    add-int/lit8 v14, v10, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v77, v6

    move/from16 v15, v29

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    goto :goto_9

    :cond_e
    move-object/from16 p2, v2

    move-object/from16 v15, v75

    move-wide/from16 v6, v77

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    .line 90
    invoke-static {v1, v15, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v14

    .line 91
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v11, 0x0

    const/16 v12, -0x384

    .line 92
    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v27, 0x0

    move-object/from16 p1, v14

    move/from16 v14, v16

    move-object v2, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v21

    move/from16 v18, v27

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object/from16 v14, p1

    move-object v15, v2

    goto :goto_a

    :cond_f
    move-object/from16 p1, v14

    move-object v2, v15

    .line 93
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    move-object/from16 v12, p1

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 94
    invoke-interface {v5, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v13, 0x3

    const/4 v15, 0x2

    invoke-direct {v11, v12, v13, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    move-object/from16 v14, v70

    iput-object v11, v14, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 96
    iput-object v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 98
    iget-object v5, v14, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v13, 0x0

    invoke-static {v9, v8, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v12, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v10

    neg-double v13, v6

    invoke-direct {v11, v10, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v70

    .line 99
    iget-object v10, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v15, 0x0

    invoke-static {v3, v8, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-virtual {v12, v3, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    move-wide/from16 v77, v6

    const-wide/16 v6, 0x0

    invoke-direct {v11, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v1

    invoke-direct {v8, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    .line 101
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    .line 102
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, v5, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 104
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v11, p4

    invoke-direct {v2, v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-wide/from16 v6, v71

    .line 105
    invoke-static {v2, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 106
    invoke-static {v2, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 107
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 p3, v4

    iget-wide v3, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v10, v11, v12, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 108
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v11, -0x4020000000000000L    # -0.5

    mul-double v11, v11, v24

    div-double/2addr v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v3

    move-object/from16 v27, v10

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v11, 0x4035000000000000L    # 21.0

    .line 110
    invoke-static {v1, v8, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v61, v12

    check-cast v61, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v62, 0x0

    const/16 v63, -0x384

    .line 112
    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v15, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v69, 0x0

    move/from16 v64, v12

    move/from16 v68, v15

    invoke-virtual/range {v61 .. v69}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_b

    .line 113
    :cond_10
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v15, v11, v6

    const-wide/high16 v17, 0x403e000000000000L    # 30.0

    div-double v11, v15, v17

    double-to-int v1, v11

    neg-int v0, v0

    int-to-double v11, v0

    const-wide v15, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v11, v11, v15

    move-wide/from16 v71, v6

    int-to-double v6, v1

    div-double/2addr v11, v6

    const/4 v7, 0x1

    :goto_c
    if-ge v7, v1, :cond_13

    move-object/from16 v70, v5

    int-to-double v5, v7

    mul-double v5, v5, v11

    .line 114
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v15, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v15

    move-object/from16 v27, v10

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v0

    .line 115
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-int v15, v13

    const-wide v16, -0x3fa9800000000000L    # -90.0

    .line 116
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    add-double v5, v5, v16

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v16

    double-to-int v5, v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-wide/from16 p4, v11

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v69, 0x0

    move-object/from16 v61, v0

    move/from16 v62, v15

    move/from16 v63, v5

    move/from16 v64, v6

    move/from16 v68, v11

    invoke-virtual/range {v61 .. v69}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v5, 0x1

    if-eq v7, v5, :cond_11

    add-int/lit8 v6, v1, -0x1

    if-ne v7, v6, :cond_12

    .line 117
    :cond_11
    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_12
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v11, p4

    move-object/from16 v5, v70

    goto :goto_c

    :cond_13
    move-object/from16 v70, v5

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    move-object/from16 v5, p3

    .line 118
    invoke-static {v2, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v61, v7

    check-cast v61, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/16 v62, 0x0

    const/16 v63, 0x0

    .line 120
    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/16 v69, 0x0

    move/from16 v64, v7

    move/from16 v68, v11

    invoke-virtual/range {v61 .. v69}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_d

    .line 121
    :cond_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x1

    sub-int/2addr v6, v0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 122
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v7, 0x4

    const/4 v15, 0x2

    invoke-direct {v1, v6, v7, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    move-object/from16 v6, v70

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 124
    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 126
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v0, 0x1

    invoke-static {v8, v10, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v7

    invoke-direct {v4, v7, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v3, v10, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-direct {v4, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    invoke-static {v2, v5, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v2

    invoke-direct {v3, v2, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    move-object v8, v5

    move-object v7, v6

    move-wide/from16 v13, v77

    goto/16 :goto_11

    :cond_15
    move-wide/from16 v71, p2

    move-object/from16 p2, v2

    move-object v5, v4

    move-object/from16 v73, v14

    move-object/from16 v6, v16

    move-wide/from16 v77, v35

    move-object/from16 v74, v39

    move-object/from16 v76, v42

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    const/4 v15, 0x2

    move-wide/from16 v35, v17

    .line 129
    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    mul-double v1, v1, v43

    .line 130
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-wide v13, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    neg-double v11, v1

    invoke-virtual {v4, v13, v14, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 131
    iget-wide v10, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    mul-double v10, v10, v10

    sub-double v1, v71, v1

    mul-double v1, v1, v1

    add-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    move-object/from16 v3, p0

    .line 132
    iget-object v7, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v14, v73

    invoke-virtual {v14, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    iget-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    sub-double/2addr v10, v12

    .line 133
    iget-wide v12, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v1, v1, v1

    move-wide/from16 p3, v1

    iget-wide v0, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v16, v10, v0

    sub-double v0, v10, v0

    mul-double v16, v16, v0

    sub-double v1, p3, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v12, v0

    .line 134
    invoke-virtual {v8, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v12, v13, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v8, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    .line 136
    invoke-static {v5, v9, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 138
    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    move-object v7, v6

    move-object v6, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v21

    move/from16 v18, v24

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object v14, v6

    move-object v6, v7

    const/4 v15, 0x2

    goto :goto_e

    :cond_16
    move-object v7, v6

    move-object v6, v14

    mul-double v10, v0, v71

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double/2addr v10, v12

    double-to-int v4, v10

    neg-double v10, v0

    int-to-double v12, v4

    div-double v24, v10, v12

    const/4 v15, 0x1

    :goto_f
    if-gt v15, v4, :cond_19

    int-to-double v10, v15

    mul-double v10, v10, v24

    .line 139
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v13, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v13

    move-object/from16 v27, v8

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v14

    .line 140
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p3, v5

    move-object/from16 v73, v6

    move-wide/from16 v12, v77

    neg-double v5, v12

    double-to-int v5, v5

    .line 141
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v10, v10, v16

    double-to-int v6, v10

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    move-object v10, v14

    move/from16 v27, v11

    move v11, v5

    move-wide/from16 v80, v12

    move v12, v6

    move/from16 v13, v27

    move-object v5, v14

    move/from16 v14, v16

    move v6, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v21

    move/from16 v18, v26

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v10, 0x1

    if-eq v6, v10, :cond_17

    add-int/lit8 v11, v4, -0x1

    if-ne v6, v11, :cond_18

    .line 142
    :cond_17
    invoke-virtual {v5, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_18
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v5, p3

    move-object/from16 v6, v73

    move-wide/from16 v77, v80

    goto :goto_f

    :cond_19
    move-object/from16 p3, v5

    move-object/from16 v73, v6

    move-wide/from16 v80, v77

    .line 143
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v10, 0x3

    const/4 v15, 0x2

    invoke-direct {v4, v6, v10, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v4, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 144
    iput-object v2, v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 145
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 146
    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v12, 0x0

    invoke-static {v9, v8, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual {v11, v9, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v11

    move-object/from16 p1, v6

    move-wide/from16 v13, v80

    neg-double v5, v13

    invoke-direct {v10, v11, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    move-object/from16 v26, v4

    move-object/from16 v27, v8

    invoke-virtual/range {v26 .. v31}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 148
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    invoke-direct {v4, v0, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    move-object/from16 v1, p1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_1a

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v4

    .line 152
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setGear(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 153
    :cond_1a
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 155
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v4, 0x1

    invoke-static {v9, v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-direct {v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v8, p3

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    invoke-static {v9, v8, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    move-object/from16 v2, v34

    move-object/from16 v4, v46

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 158
    invoke-static {v4, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v10

    iput-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 159
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v5, 0x0

    const/16 v6, 0x384

    .line 160
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    move v11, v5

    move v12, v6

    move-wide v5, v13

    move v13, v1

    move/from16 v14, v16

    const/4 v1, 0x2

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v21

    move/from16 v18, v24

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-wide v13, v5

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    const/4 v15, 0x2

    goto :goto_12

    :cond_1b
    move-wide v5, v13

    const/4 v1, 0x2

    .line 161
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 162
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    invoke-static {v4, v2, v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v2

    const-wide/16 v11, 0x0

    invoke-direct {v10, v2, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v2, v1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    move-object/from16 v2, p2

    .line 164
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 166
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v11, v45

    invoke-direct {v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 v12, v47

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    invoke-direct {v2, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v10, v74

    invoke-static {v10, v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    move-wide/from16 v10, v35

    invoke-direct {v2, v4, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    move-object/from16 v11, v40

    move-object/from16 v10, v41

    invoke-static {v11, v10, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v4, v11, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    const-wide/16 v10, 0x0

    invoke-direct {v2, v4, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 v13, v76

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    invoke-static {v13, v8, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v4

    invoke-direct {v2, v4, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 171
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v22

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v22

    invoke-virtual {v0, v12, v13, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 172
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 p1, v2

    move-object/from16 p2, v0

    move-wide/from16 p3, v12

    move-wide/from16 p5, v14

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v10, 0x4035000000000000L    # 21.0

    .line 174
    invoke-static {v8, v9, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v8

    .line 175
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_13
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 176
    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v21

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_13

    .line 177
    :cond_1c
    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v12, v71, v10

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v12, v14

    double-to-int v8, v12

    int-to-double v12, v8

    div-double v22, v10, v12

    const/4 v15, 0x1

    :goto_14
    if-ge v15, v8, :cond_1f

    int-to-double v10, v15

    mul-double v10, v10, v22

    .line 178
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v13, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-object/from16 p1, v13

    move-object/from16 p2, v0

    move-wide/from16 p3, v16

    move-wide/from16 p5, v24

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v14

    .line 179
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-int v12, v5

    .line 180
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    mul-double v10, v10, v19

    double-to-int v13, v10

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    move-object v10, v14

    move/from16 v25, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v25

    move-object v1, v14

    move/from16 v14, v16

    move/from16 v82, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v21

    move/from16 v18, v24

    invoke-virtual/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move/from16 v10, v82

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1d

    add-int/lit8 v12, v8, -0x1

    if-ne v10, v12, :cond_1e

    .line 181
    :cond_1d
    invoke-virtual {v1, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    :cond_1e
    add-int/lit8 v15, v10, 0x1

    const/4 v1, 0x2

    goto :goto_14

    .line 182
    :cond_1f
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 183
    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v10, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 184
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v10, v73

    invoke-virtual {v10, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iget-wide v10, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide v12, 0x4062c00000000000L    # 150.0

    add-double/2addr v10, v12

    iput-wide v10, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    .line 185
    invoke-static {v2, v8, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v3

    .line 186
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    const/4 v11, 0x0

    const/16 v12, 0x384

    .line 187
    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 p0, v10

    move/from16 p1, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v15

    move/from16 p6, v16

    move/from16 p7, v21

    move/from16 p8, v17

    invoke-virtual/range {p0 .. p8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    goto :goto_15

    .line 188
    :cond_20
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v10, 0x5

    const/4 v11, 0x2

    invoke-direct {v3, v8, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;II)V

    iput-object v3, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 190
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a:Ljava/util/List;

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    .line 192
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/4 v1, 0x1

    invoke-static {v9, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v8

    invoke-direct {v4, v8, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {v4, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;D)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7

    :cond_21
    :goto_16
    cmpg-double v0, v9, v5

    if-gez v0, :cond_22

    const-string v0, "\u8f66\u5b50\u4f4d\u7f6e\u4e0d\u6b63\u786e\uff0c\u8bf7\u5f80\u524d\u5f00\u9002\u5f53\u8ddd\u79bb\u518d\u8bd5"

    goto :goto_17

    :cond_22
    const-string v0, "\u8f66\u5b50\u4f4d\u7f6e\u4e0d\u6b63\u786e\uff0c\u8bf7\u5f80\u540e\u9000\u9002\u5f53\u8ddd\u79bb\u518d\u8bd5"

    .line 194
    :goto_17
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    const/4 v0, 0x0

    return-object v0
.end method
