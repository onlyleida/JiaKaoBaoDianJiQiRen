.class Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private b:Z

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 17
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

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v2, p7

    .line 1
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    move-object v10, v2

    check-cast v10, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    move-object/from16 v2, p8

    .line 4
    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v3, 0x3

    const/4 v11, 0x1

    if-eq v2, v11, :cond_2

    if-eq v2, v3, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const/4 v12, 0x0

    if-nez v2, :cond_3

    .line 6
    iput-boolean v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->b:Z

    .line 7
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 8
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 9
    invoke-static {v2, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 10
    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-direct {v2, v5, v6, v7, v11}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 12
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    .line 13
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    const-wide/16 v4, 0x7d0

    invoke-direct {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;-><init>(J)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    .line 15
    :cond_3
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->b:Z

    if-eqz v2, :cond_4

    return-void

    .line 16
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 17
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v7, v13, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a(JZ)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;

    add-int/lit8 v13, v2, -0x1

    .line 18
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v14, v2, -0x3

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v15, 0x404e000000000000L    # 60.0

    move-object v2, v4

    move-object/from16 v3, p4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/g;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 19
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->b:Z

    .line 20
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/g;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    iget-object v3, v10, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v3, v11, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;IZ)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_close_left_touch:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 22
    iput-byte v3, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    goto/16 :goto_4

    :cond_6
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 23
    iget-wide v6, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v2, p2

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v2, v6, v4

    if-gez v2, :cond_a

    .line 24
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    const-wide v4, 0x4041800000000000L    # 35.0

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v6, v4

    if-ltz v2, :cond_8

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v6, v1, v4

    if-gez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_9

    const/4 v1, 0x1

    .line 26
    iput-byte v1, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    goto :goto_4

    .line 27
    :cond_9
    iput-byte v3, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 28
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_little_partial:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :cond_a
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-ltz v6, :cond_b

    .line 30
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_late:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_b
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_early:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 32
    :goto_3
    iput-byte v3, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 33
    :goto_4
    invoke-interface {v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    :cond_c
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
