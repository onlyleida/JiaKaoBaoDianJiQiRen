.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->a:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->f:I

    return-void
.end method

.method private e(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_2

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v1, v2, :cond_4

    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_3

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->g(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 2
    invoke-virtual {v11, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide v2, 0x40d5f90000000000L    # 22500.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_17

    .line 3
    iget-wide v2, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    goto/16 :goto_c

    .line 4
    :cond_0
    iget v2, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->f:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_3

    .line 5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-nez v7, :cond_2

    .line 6
    invoke-virtual {v9, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v14, v16

    if-gez v18, :cond_2

    .line 7
    iput v6, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->f:I

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_1

    .line 8
    sget-object v14, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 9
    iput v4, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->f:I

    .line 10
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    .line 11
    iget-short v7, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v7, v13, :cond_4

    const/16 v15, 0x5a

    goto :goto_1

    :cond_4
    const/16 v15, 0x2d

    :goto_1
    if-ne v7, v13, :cond_5

    const/16 v7, 0x32

    goto :goto_2

    :cond_5
    const/16 v7, 0x23

    .line 12
    :goto_2
    iget-byte v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    const-string v5, ","

    const-string v14, "WheelTip:"

    const-wide/16 v16, 0x0

    if-nez v13, :cond_a

    move/from16 v18, v7

    .line 13
    iget-wide v6, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v13, p5

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v3, v6, v3

    move-wide/from16 v19, v0

    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v21, v6, v0

    mul-double v3, v3, v21

    cmpg-double v13, v3, v16

    if-lez v13, :cond_6

    sub-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpg-double v6, v0, v3

    if-gez v6, :cond_b

    .line 14
    :cond_6
    iget v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v15, :cond_8

    int-to-double v0, v2

    iget-short v3, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v3, v3

    sget-wide v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v3, v3, v6

    sub-double v3, v0, v3

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    int-to-double v6, v15

    cmpg-double v13, v3, v6

    if-ltz v13, :cond_8

    iget v3, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    sub-int v4, v2, v3

    int-to-double v6, v4

    iget-short v4, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v9, v4

    sget-wide v21, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v9, v9, v21

    sub-double/2addr v9, v0

    mul-double v6, v6, v9

    cmpl-double v0, v6, v16

    if-gez v0, :cond_8

    sub-int v0, v2, v3

    iget v1, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    sub-int v1, v2, v1

    mul-int v0, v0, v1

    if-gtz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v13, 0x1

    :goto_4
    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_5

    :cond_9
    const/4 v13, 0x2

    .line 16
    :goto_5
    iput-byte v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 17
    invoke-interface {v8, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    move-wide/from16 v19, v0

    move/from16 v18, v7

    .line 19
    :cond_b
    :goto_6
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->a:Z

    if-eqz v0, :cond_c

    return-void

    .line 20
    :cond_c
    iget v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 21
    :goto_7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    move-object/from16 v1, p3

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p2

    if-ne v3, v4, :cond_d

    .line 23
    iput v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->b:I

    goto :goto_8

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v4, p2

    move-object/from16 v1, p3

    .line 24
    :goto_8
    iget v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->b:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_f

    return-void

    .line 25
    :cond_f
    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v3, :cond_11

    if-nez v0, :cond_10

    const/4 v3, 0x1

    .line 26
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v0, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_9

    :cond_10
    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    :goto_9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 30
    :cond_11
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v11, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpl-double v3, v0, v16

    if-ltz v3, :cond_13

    mul-int v7, v18, v18

    int-to-double v0, v7

    cmpl-double v3, v19, v0

    if-ltz v3, :cond_13

    mul-int/lit8 v7, v7, 0x4

    int-to-double v0, v7

    cmpg-double v3, v19, v0

    if-gez v3, :cond_13

    .line 31
    iget v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    iget v1, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    add-int/2addr v0, v1

    int-to-double v6, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v9

    int-to-double v9, v2

    sub-double/2addr v9, v6

    int-to-double v0, v1

    sub-double/2addr v0, v6

    mul-double v9, v9, v0

    cmpl-double v0, v9, v16

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->a:Z

    .line 33
    iget-byte v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    if-nez v0, :cond_12

    .line 34
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_steering_early:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 36
    iput-byte v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 37
    invoke-interface {v8, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    :cond_12
    return-void

    :cond_13
    move-object/from16 v0, p8

    .line 38
    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->e(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    .line 39
    :goto_a
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v11, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    cmpl-double v1, v6, v16

    if-ltz v1, :cond_17

    mul-int v7, v18, v18

    int-to-double v6, v7

    if-eqz v0, :cond_15

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_b

    :cond_15
    iget-short v0, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_16

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_b

    :cond_16
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    :goto_b
    mul-double v6, v6, v0

    cmpl-double v0, v19, v6

    if-ltz v0, :cond_17

    .line 40
    iget v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_17

    iget v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    iget v1, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_17

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;->a:Z

    .line 42
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_steering_late:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 44
    iput-byte v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 45
    invoke-interface {v8, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    :cond_17
    :goto_c
    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    return-void
.end method
