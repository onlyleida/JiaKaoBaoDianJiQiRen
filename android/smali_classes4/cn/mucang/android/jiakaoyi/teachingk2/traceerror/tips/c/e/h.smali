.class Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# instance fields
.field private a:Z

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v4, p7

    .line 1
    instance-of v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-nez v5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 3
    :cond_1
    move-object v12, v4

    check-cast v12, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    move-object/from16 v4, p8

    .line 4
    iget v13, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v13, v15, :cond_2

    if-eq v13, v14, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    const/4 v8, 0x0

    if-nez v4, :cond_3

    .line 6
    iput-boolean v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->a:Z

    .line 7
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;-><init>()V

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    .line 8
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    const-wide/16 v5, 0x7d0

    invoke-direct {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;-><init>(J)V

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    .line 9
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;-><init>()V

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    .line 10
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;-><init>()V

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    .line 11
    :cond_3
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->a:Z

    if-eqz v4, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 13
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isStop()Z

    move-result v9

    invoke-virtual {v5, v6, v7, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a(JZ)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    add-int/lit8 v9, v4, -0x1

    .line 14
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v7, v4, -0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    move-object v4, v5

    move-object/from16 v5, p4

    move/from16 v19, v7

    move-object/from16 v7, v16

    move/from16 v20, v9

    const/4 v14, 0x0

    move-wide/from16 v8, v17

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 15
    iput-boolean v15, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->a:Z

    .line 16
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    invoke-virtual {v4, v1, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_13

    .line 17
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    iget-object v6, v12, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-boolean v7, v12, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    const/4 v8, -0x1

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    :goto_0
    if-ne v13, v15, :cond_6

    const/4 v8, 0x1

    :cond_6
    mul-int v7, v7, v8

    invoke-virtual {v4, v1, v6, v7, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    if-ne v13, v15, :cond_7

    .line 18
    iget-boolean v1, v12, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-nez v1, :cond_8

    :cond_7
    const/4 v1, 0x3

    if-ne v13, v1, :cond_9

    iget-boolean v1, v12, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-nez v1, :cond_9

    .line 19
    :cond_8
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_close_right_touch:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 20
    :cond_9
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_close_left_touch:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_1
    iput-byte v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 22
    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    .line 23
    iget-wide v8, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v1, v8, v6

    if-gez v1, :cond_11

    move/from16 v4, v19

    .line 24
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move/from16 v6, v20

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v8, v6, v3

    if-ltz v8, :cond_c

    const/high16 v6, 0x43340000    # 180.0f

    sub-float/2addr v1, v6

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v3

    if-gez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v8, 0x1

    .line 26
    :goto_3
    iget-wide v3, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    cmpg-double v1, v3, v6

    if-gez v1, :cond_d

    const/4 v14, 0x1

    :cond_d
    if-eqz v8, :cond_e

    if-eqz v14, :cond_e

    .line 27
    iput-byte v15, v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    goto/16 :goto_7

    :cond_e
    if-eqz v14, :cond_f

    .line 28
    iput-byte v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 29
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachbase_parking_little_off:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 30
    :cond_f
    iput-byte v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 31
    iget-wide v3, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v5, v3, v1

    if-lez v5, :cond_10

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachbase_stop_to_right:I

    goto :goto_4

    :cond_10
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachbase_stop_to_left:I

    :goto_4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    move/from16 v4, v19

    move/from16 v6, v20

    .line 32
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v2, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_12

    .line 33
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_late:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 34
    :cond_12
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_early:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 35
    :goto_5
    iput-byte v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    goto :goto_7

    .line 36
    :cond_13
    iput-byte v5, v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    if-ne v13, v15, :cond_14

    .line 37
    iget-boolean v1, v12, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-nez v1, :cond_15

    :cond_14
    const/4 v1, 0x3

    if-ne v13, v1, :cond_16

    iget-boolean v1, v12, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-nez v1, :cond_16

    .line 38
    :cond_15
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_close_left_cant_in:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 39
    :cond_16
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_close_right_cant_in:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_6
    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 41
    :goto_7
    invoke-interface {v0, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    :cond_17
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
