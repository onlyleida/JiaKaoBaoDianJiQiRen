.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 19
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

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p6

    move-object/from16 v14, p7

    move-object/from16 v11, p8

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
    iget v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v0, v1, :cond_5

    instance-of v1, v14, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz v1, :cond_5

    .line 3
    iget v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v1, v6, :cond_3

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, v7, :cond_1

    if-ne v1, v2, :cond_5

    .line 4
    :cond_1
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/h;-><init>()V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    .line 6
    :cond_2
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    move-object/from16 v10, p1

    move-object v1, v11

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v4, v14

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-interface/range {v9 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void

    :cond_3
    :goto_0
    move-object v1, v11

    move-object v4, v14

    .line 7
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$a;)V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    .line 9
    :cond_4
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-interface/range {v9 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void

    :cond_5
    move-object v1, v11

    move-object v4, v14

    .line 10
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v5, :cond_8

    instance-of v0, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v0, :cond_8

    .line 11
    iget v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v0, v6, :cond_6

    .line 12
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    if-nez v0, :cond_7

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$b;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$a;)V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    goto :goto_1

    :cond_6
    if-ne v0, v7, :cond_7

    .line 14
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    if-nez v0, :cond_7

    .line 15
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;-><init>()V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    .line 16
    :cond_7
    :goto_1
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-interface/range {v9 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void

    .line 17
    :cond_8
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->a:Z

    if-eqz v0, :cond_9

    return-void

    .line 18
    :cond_9
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    if-nez v0, :cond_a

    .line 19
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;-><init>()V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    .line 20
    :cond_a
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;-><init>(J)V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    .line 22
    :cond_b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    .line 23
    div-int/lit8 v1, v0, 0x2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v9, 0x0

    if-ne v1, v3, :cond_c

    const/4 v10, 0x1

    goto :goto_2

    :cond_c
    const/4 v10, 0x0

    .line 24
    :goto_2
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v5, v11, :cond_d

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a(JZ)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    add-int/lit8 v11, v0, -0x1

    .line 25
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v14, v0, -0x3

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v10, :cond_e

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    goto :goto_4

    :cond_e
    const-wide/high16 v16, 0x4054000000000000L    # 80.0

    :goto_4
    move-object v0, v1

    move-object/from16 v1, p4

    move-object v2, v3

    move-object v3, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v10, :cond_f

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    goto :goto_5

    :cond_f
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 26
    :goto_5
    iget-wide v2, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v4, p2

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_14

    .line 27
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    if-eqz v10, :cond_10

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    goto :goto_6

    :cond_10
    const-wide v1, 0x4041800000000000L    # 35.0

    .line 28
    :goto_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v5, v3, v1

    if-ltz v5, :cond_11

    const/high16 v3, 0x43340000    # 180.0f

    sub-float/2addr v0, v3

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    cmpg-double v0, v3, v1

    if-gez v0, :cond_12

    :cond_11
    const/4 v9, 0x1

    :cond_12
    if-eqz v9, :cond_13

    .line 29
    iput-byte v7, v15, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    goto :goto_8

    .line 30
    :cond_13
    iput-byte v6, v15, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    goto :goto_8

    .line 31
    :cond_14
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v1, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_15

    .line 32
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_late:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_7

    .line 33
    :cond_15
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_early:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 34
    :goto_7
    iput-byte v6, v15, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 35
    :goto_8
    invoke-interface {v8, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 36
    iput-boolean v7, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;->a:Z

    :cond_16
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
