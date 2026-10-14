.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)Z
    .locals 53

    move-object/from16 v0, p1

    .line 1
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v8

    .line 2
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->f:D

    .line 4
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b:I

    const/4 v2, 0x3

    const/4 v12, 0x1

    if-eq v1, v12, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v13, 0x1

    :goto_1
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    if-nez v13, :cond_3

    .line 5
    iget-wide v14, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    sub-double v14, v10, v14

    double-to-float v1, v14

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v14, 0x41200000    # 10.0f

    cmpg-float v1, v1, v14

    if-gez v1, :cond_3

    .line 6
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v9, v1, v14}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    cmpg-double v1, v14, v5

    if-ltz v1, :cond_2

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v14, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 7
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    move/from16 v17, v13

    mul-double v12, v15, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object/from16 v18, v8

    mul-double v7, v15, v3

    invoke-virtual {v14, v12, v13, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    invoke-static {v1, v9, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpg-double v1, v7, v5

    if-gez v1, :cond_4

    goto :goto_2

    :cond_2
    move-object/from16 v18, v8

    move/from16 v17, v13

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v18, v8

    move/from16 v17, v13

    :cond_4
    move/from16 v1, v17

    :goto_3
    const-wide/high16 v7, 0x403d000000000000L    # 29.0

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    if-eqz v1, :cond_6

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->d(Ljava/util/List;)V

    .line 11
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->f(Ljava/util/List;)V

    move-object/from16 v15, v18

    .line 13
    iget-object v0, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v9, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v0, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-wide v2, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v12

    iget-wide v4, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v12

    .line 16
    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v2, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    const/4 v6, 0x0

    xor-int/lit8 v7, v17, 0x1

    const-string v5, "\u8bf7\u6cbf\u8f68\u8ff9\u5fae\u8c03\u65b9\u5411\u76d8\uff0c\u5c06\u8f66\u8f86\u5f00\u5230\u505c\u8f66\u533a\u57df"

    move-object v4, v15

    invoke-static/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;ZZ)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v12

    .line 18
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v12

    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    if-eqz v17, :cond_5

    const-string v0, "\u8bf7\u505c\u8f66\uff0c\u6302\u524d\u8fdb\u6863"

    goto :goto_4

    :cond_5
    const-string v0, "\u8bf7\u505c\u8f66\uff0c\u6302\u5012\u6863"

    :goto_4
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v8, 0x1

    xor-int/lit8 v7, v17, 0x1

    move-object v0, v9

    move-wide v2, v10

    move-object v4, v15

    invoke-static/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;ZZ)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v8

    :cond_6
    move-object/from16 v15, v18

    const/4 v1, 0x1

    .line 20
    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-direct {v14, v9, v10, v11, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    .line 21
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 22
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v12

    iget-wide v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-wide v7, v14, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double/2addr v12, v7

    .line 23
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v7

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->b(D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object v7

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    const-wide v3, 0x4077c00000000000L    # 380.0

    .line 24
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const-wide v3, 0x4056800000000000L    # 90.0

    add-double v23, v12, v3

    .line 25
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    sub-double v25, v12, v3

    .line 26
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v25

    .line 27
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v7

    add-double v2, v2, v29

    .line 28
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v31, v31, v7

    add-double v5, v5, v31

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v31

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v33

    cmpg-double v4, v31, v33

    if-gez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, -0x1

    move-wide v2, v5

    move-wide/from16 v23, v25

    const/4 v4, -0x1

    :goto_5
    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 30
    :goto_6
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v25, v9

    move-wide/from16 v37, v10

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v7

    add-double v9, v9, v23

    invoke-direct {v6, v9, v10, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 31
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 32
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v31

    neg-double v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    move-object/from16 v32, v6

    invoke-virtual/range {v31 .. v36}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 33
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 34
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move-wide/from16 v23, v9

    .line 35
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 36
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move/from16 p0, v5

    .line 37
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move-object/from16 v39, v14

    move-object/from16 v26, v15

    .line 38
    iget-wide v14, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide v31, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double v33, v12, v31

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->tan(D)D

    move-result-wide v33

    div-double v9, v9, v33

    sub-double/2addr v14, v9

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v14, v15, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 39
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 40
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    .line 41
    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v44, v3

    move/from16 v35, v4

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v9, v3

    .line 42
    iget-wide v3, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v36, v5

    move-object/from16 v45, v6

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v5

    mul-double v14, v14, v9

    mul-double v33, v33, v3

    add-double v14, v14, v33

    const-wide v3, 0x4066800000000000L    # 180.0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/16 v9, 0x0

    cmpl-double v33, v14, v9

    if-lez v33, :cond_a

    .line 43
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double v9, v3, v9

    double-to-float v9, v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v9

    float-to-double v9, v9

    mul-double v9, v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    div-double v9, v7, v9

    move-object/from16 v14, v36

    .line 44
    iget-wide v3, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v3, v9

    const-wide/high16 v29, 0x403e000000000000L    # 30.0

    cmpg-double v15, v3, v29

    if-gez v15, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    move-object/from16 v14, v36

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    :goto_7
    const-wide/high16 v29, -0x4000000000000000L    # -2.0

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    if-nez v3, :cond_b

    .line 45
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v48

    const-wide v27, 0x4056800000000000L    # 90.0

    cmpg-double v4, v48, v27

    if-gez v4, :cond_b

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double v48, v7, v46

    cmpl-double v6, v4, v48

    if-lez v6, :cond_b

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v48, v7, v29

    cmpg-double v6, v4, v48

    if-gtz v6, :cond_b

    const/4 v3, 0x3

    :cond_b
    const/4 v4, 0x2

    if-nez v3, :cond_c

    const/4 v3, 0x2

    .line 46
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8def\u5f84\u89c4\u5212\u7b97\u6cd5:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",degree:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ",\u5f53\u524d\u4f4d\u7f6e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",R:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide v48, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v50, 0x5a

    const/4 v5, 0x1

    if-eq v3, v5, :cond_17

    if-eq v3, v4, :cond_10

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    move-object v4, v2

    move-wide/from16 v21, v7

    move-object v2, v11

    move-object/from16 v5, v40

    move-object/from16 v9, v41

    move-object/from16 v1, v44

    move-object/from16 v0, v45

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    goto/16 :goto_12

    :cond_d
    move-object/from16 v3, v44

    .line 47
    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v31

    const-wide/16 v33, 0x0

    move/from16 v4, v35

    int-to-double v4, v4

    move-object/from16 v32, v45

    move-wide/from16 v35, v4

    invoke-virtual/range {v31 .. v36}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 48
    iget-wide v9, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    neg-double v14, v7

    mul-double v14, v14, v4

    invoke-virtual {v11, v9, v10, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v4, v40

    .line 49
    invoke-virtual {v4, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 50
    iput-wide v9, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 51
    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v14, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v9, v41

    invoke-virtual {v9, v5, v6, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 52
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/16 v14, 0x0

    cmpl-double v1, v5, v14

    if-lez v1, :cond_e

    const/16 v1, -0x5a

    goto :goto_8

    :cond_e
    const/16 v1, 0x5a

    :goto_8
    int-to-double v0, v1

    sub-double v42, v0, v12

    cmpl-double v0, v5, v14

    if-lez v0, :cond_f

    const/16 v0, 0x5a

    goto :goto_9

    :cond_f
    const/16 v0, -0x5a

    :goto_9
    int-to-double v0, v0

    move-wide v14, v0

    move-object v1, v3

    move-object v5, v4

    move-wide/from16 v21, v7

    move-wide/from16 v12, v42

    move-object/from16 v0, v45

    :goto_a
    const/4 v10, 0x0

    move-object v4, v2

    move-object v2, v11

    const/4 v11, 0x1

    goto/16 :goto_12

    :cond_10
    move-object/from16 v4, v40

    move-object/from16 v9, v41

    move-object/from16 v3, v44

    const-wide/16 v14, 0x0

    .line 53
    invoke-virtual {v3, v14, v15, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 54
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v14

    iput-wide v5, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v0, v45

    .line 55
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v35, v12

    mul-double v12, v14, v29

    mul-double v14, v14, v14

    .line 56
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v21, v5, v3

    sub-double/2addr v5, v3

    mul-double v21, v21, v5

    add-double v14, v14, v21

    mul-double v3, v7, v7

    sub-double/2addr v14, v3

    mul-double v3, v12, v12

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double v5, v5, v14

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpg-double v10, v3, v5

    if-gez v10, :cond_11

    const/4 v5, 0x0

    return v5

    .line 57
    :cond_11
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    neg-double v5, v12

    add-double v12, v5, v3

    div-double v12, v12, v46

    sub-double/2addr v5, v3

    div-double v5, v5, v46

    .line 58
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v10, v12, v3

    if-ltz v10, :cond_12

    .line 59
    iput-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    goto :goto_b

    .line 60
    :cond_12
    iput-wide v5, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 61
    :goto_b
    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v3, v3, v46

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v5

    iput-wide v3, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 62
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v5, v5, v46

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v12

    iput-wide v5, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v5, v40

    .line 63
    iput-wide v3, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/16 v12, 0x0

    .line 64
    iput-wide v12, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/high16 v12, 0x4069000000000000L    # 200.0

    cmpl-double v6, v3, v12

    if-lez v6, :cond_13

    const/4 v6, 0x0

    return v6

    :cond_13
    cmpg-double v6, v3, v12

    if-gtz v6, :cond_16

    .line 65
    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    sub-double/2addr v12, v14

    cmpl-double v6, v3, v12

    if-gez v6, :cond_14

    invoke-virtual {v11, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const-wide/high16 v12, 0x4099000000000000L    # 1600.0

    cmpg-double v6, v3, v12

    if-ltz v6, :cond_14

    goto :goto_d

    .line 66
    :cond_14
    invoke-virtual {v0, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/16 v14, 0x0

    cmpl-double v1, v12, v14

    if-lez v1, :cond_15

    const/16 v1, -0x5a

    goto :goto_c

    :cond_15
    const/16 v1, 0x5a

    :goto_c
    int-to-double v12, v1

    add-double/2addr v3, v12

    sub-double v12, v3, v35

    neg-double v3, v3

    move-wide v14, v3

    move-wide/from16 v21, v7

    move-object/from16 v1, v44

    goto/16 :goto_a

    :cond_16
    :goto_d
    const/4 v0, 0x0

    return v0

    :cond_17
    move-wide/from16 v35, v12

    move-object/from16 v5, v40

    move-object/from16 v3, v44

    move-object/from16 v0, v45

    move-wide v12, v9

    move-object/from16 v9, v41

    .line 67
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    cmpg-double v4, v12, v48

    if-gez v4, :cond_18

    .line 68
    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object v4, v2

    move-object/from16 v44, v3

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v29, v35, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->tan(D)D

    move-result-wide v29

    div-double v2, v2, v29

    sub-double/2addr v12, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v14, v12, v13, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 69
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v12, 0x4066800000000000L    # 180.0

    sub-double v2, v12, v2

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double v2, v7, v2

    goto :goto_e

    :cond_18
    move-object v4, v2

    move-object/from16 v44, v3

    move-wide v2, v12

    .line 70
    :goto_e
    iget-wide v12, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v12, v2

    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    cmpl-double v6, v12, v21

    if-lez v6, :cond_19

    const/4 v10, 0x0

    return v10

    :cond_19
    const/4 v10, 0x0

    .line 71
    invoke-static {v14, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 72
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v12, 0x40f86a0000000000L    # 100000.0

    move-object v15, v11

    const-wide/16 v10, 0x0

    invoke-direct {v6, v12, v13, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-static {v14, v6, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 73
    iget-wide v2, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v6, v12, v10

    if-lez v6, :cond_1a

    move-wide v12, v7

    goto :goto_f

    :cond_1a
    neg-double v12, v7

    :goto_f
    invoke-virtual {v9, v2, v3, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v2, v15

    .line 74
    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v14, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v14, v12, v14

    mul-double v12, v12, v14

    cmpl-double v1, v12, v10

    if-gtz v1, :cond_1c

    move-object/from16 v1, v44

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    const-wide v14, 0x40a3880000000000L    # 2500.0

    cmpg-double v3, v12, v14

    if-gez v3, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v3, 0x0

    goto :goto_11

    :cond_1c
    move-object/from16 v1, v44

    .line 75
    :goto_10
    invoke-virtual {v1, v10, v11, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v3, 0x1

    :goto_11
    move v10, v3

    move-wide/from16 v21, v7

    move-wide/from16 v14, v23

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 76
    :goto_12
    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v23, -0x3fc2000000000000L    # -30.0

    cmpg-double v3, v6, v23

    if-gez v3, :cond_1d

    const/4 v8, 0x1

    goto :goto_13

    :cond_1d
    const/4 v8, 0x0

    .line 77
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theta1:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-float v6, v12

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",theta2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-float v7, v14

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ",B:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",C:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",D:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",O1:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",O2:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 78
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 79
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 80
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/16 v23, 0x0

    cmpl-double v3, v6, v23

    if-lez v3, :cond_1e

    const/4 v7, 0x1

    goto :goto_14

    :cond_1e
    const/4 v7, 0x0

    .line 81
    :goto_14
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v23

    cmpl-double v3, v23, v48

    if-lez v3, :cond_1f

    move-object/from16 v3, v39

    .line 82
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    goto :goto_15

    :cond_1f
    move-object/from16 v3, v39

    :goto_15
    move-object v6, v1

    .line 83
    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 84
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 85
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 86
    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 87
    invoke-virtual {v3, v9}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    move-object/from16 v1, p1

    .line 88
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v23, v2

    move-object/from16 v4, v26

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 89
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->d(Ljava/util/List;)V

    move-object/from16 v24, v6

    .line 92
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->f(Ljava/util/List;)V

    const-string v26, "\u53f3\u6253\u6ee1"

    const-string v33, "\u5de6\u6253\u6ee1"

    if-eqz v11, :cond_22

    double-to-float v1, v12

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    float-to-double v5, v1

    mul-double v5, v5, v21

    const-wide/high16 v19, 0x403d000000000000L    # 29.0

    div-double v5, v5, v19

    .line 94
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v1, v5

    int-to-double v5, v1

    div-double/2addr v12, v5

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v1, :cond_20

    .line 95
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move/from16 v39, v7

    move/from16 v36, v8

    int-to-double v7, v5

    mul-double v7, v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    move-object/from16 v27, v6

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v36

    move/from16 v7, v39

    goto :goto_16

    :cond_20
    move/from16 v39, v7

    move/from16 v36, v8

    if-eqz p0, :cond_21

    move-object/from16 v5, v26

    goto :goto_17

    :cond_21
    move-object/from16 v5, v33

    .line 96
    :goto_17
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    mul-double v6, v6, v12

    iget-wide v12, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 97
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v17, 0x4049000000000000L    # 50.0

    mul-double v12, v12, v17

    .line 98
    invoke-virtual {v0, v6, v7, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    const/4 v8, 0x0

    move-object v0, v2

    move-object v13, v2

    move-object/from16 v51, v3

    move-object/from16 v12, v23

    move-wide v2, v6

    move-object v7, v4

    move-object/from16 v6, v34

    move-object/from16 v52, v6

    move/from16 p0, v10

    move-object/from16 v10, v35

    move v6, v8

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_22
    move-object v13, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v5

    move/from16 v39, v7

    move/from16 v36, v8

    move/from16 p0, v10

    move-object/from16 v12, v23

    move-object v7, v4

    move-object v10, v6

    .line 99
    :goto_18
    invoke-virtual/range {v24 .. v24}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v0

    cmpl-double v2, v0, v48

    if-lez v2, :cond_24

    move-object/from16 v1, v24

    const-wide/high16 v2, 0x403d000000000000L    # 29.0

    .line 100
    invoke-static {v1, v12, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v0

    move-object/from16 v8, v51

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz v11, :cond_23

    .line 102
    invoke-virtual {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 103
    invoke-static {v1, v12, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const/4 v11, 0x1

    const-string v5, "\u56de\u6b63"

    move-object v0, v1

    move-object v1, v6

    move-object v4, v7

    move v6, v11

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 104
    :cond_23
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-wide v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    mul-double v1, v1, v3

    iget-wide v5, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 105
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    .line 106
    invoke-virtual {v0, v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    const/4 v6, 0x0

    const-string v5, "\u65b9\u5411\u76d8\u56de\u6b63\u5f80\u524d\u8d70"

    move-object v0, v13

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_24
    move-object/from16 v8, v51

    :goto_19
    double-to-float v0, v14

    float-to-double v0, v0

    mul-double v0, v0, v21

    const-wide/high16 v2, 0x403d000000000000L    # 29.0

    div-double/2addr v0, v2

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v1, v0

    div-double/2addr v14, v1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_25

    .line 108
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    int-to-double v3, v1

    mul-double v3, v3, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    move-object/from16 v27, v2

    move-object/from16 v28, v9

    invoke-virtual/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_25
    if-eqz v39, :cond_26

    move-object/from16 v5, v26

    goto :goto_1b

    :cond_26
    move-object/from16 v5, v33

    :goto_1b
    if-eqz p0, :cond_27

    .line 109
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-wide v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    mul-double v1, v1, v3

    iget-wide v11, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 110
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, v3

    .line 111
    invoke-virtual {v0, v1, v2, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    const/4 v6, 0x0

    move-object v0, v13

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v51, v8

    goto :goto_1d

    .line 112
    :cond_27
    invoke-virtual {v9, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    if-eqz v39, :cond_28

    const/16 v15, 0x5a

    goto :goto_1c

    :cond_28
    const/16 v15, -0x5a

    :goto_1c
    int-to-double v2, v15

    add-double/2addr v2, v0

    .line 113
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4049000000000000L    # 50.0

    mul-double v13, v13, v15

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-object/from16 v51, v8

    mul-double v8, v17, v15

    .line 115
    invoke-virtual {v0, v13, v14, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, v12

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_1d
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v8, v52

    invoke-direct {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    mul-double v1, v1, v3

    .line 117
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    .line 118
    invoke-virtual {v0, v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    if-eqz v36, :cond_29

    const-string v0, "\u56de\u6b63"

    goto :goto_1e

    :cond_29
    const-string v0, "\u56de\u6b63\uff0c\u8bf7\u505c\u8f66\uff0c\u6302\u5012\u6863"

    :goto_1e
    move-object v5, v0

    move-object v0, v8

    move-wide/from16 v2, v37

    move-object v4, v7

    move/from16 v6, v36

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v36, :cond_2a

    move-object/from16 v0, v25

    const-wide/high16 v1, 0x403d000000000000L    # 29.0

    .line 119
    invoke-static {v8, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v51

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 120
    invoke-static {v8, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/4 v6, 0x0

    const-string v5, "\u8bf7\u505c\u8f66\uff0c\u6302\u5012\u6863"

    move-wide/from16 v2, v37

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;
    .locals 16

    move-object/from16 v0, p3

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v8, p0

    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 6
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    sub-double v2, p1, v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object v2, v9

    move-object/from16 v3, p0

    move-wide v4, v12

    move-wide v6, v14

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v2, v10

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v2, v11

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v2, v1

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v0, v9, v10, v11, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0
.end method

.method private static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;Z)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;ZZ)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/lang/String;ZZ)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;
    .locals 6

    .line 1
    invoke-static {p0, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v3

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    const/16 p2, 0x64

    .line 3
    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setWidth(I)V

    .line 4
    invoke-virtual {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u751f\u6210\u7ea0\u6b63\u8f68\u8ff9\u6559\u5b66\u70b9:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    move-object v0, p0

    move-object v2, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/c;ZZ)V

    return-object p0
.end method
