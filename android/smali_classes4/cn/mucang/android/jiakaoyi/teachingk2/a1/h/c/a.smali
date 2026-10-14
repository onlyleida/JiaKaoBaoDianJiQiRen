.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;


# instance fields
.field private a:I

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    .line 2
    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    mul-double p1, p1, v4

    return-wide p1
.end method

.method private c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;DILjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "DI",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;"
        }
    .end annotation

    .line 1
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v1, p4, 0x1

    .line 2
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpl-double v3, v1, p2

    if-ltz v3, :cond_0

    .line 5
    invoke-static {p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1

    :cond_0
    sub-double/2addr p2, v1

    .line 6
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge p4, p1, :cond_2

    .line 7
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v0, p4, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpl-double p1, v1, p2

    if-lez p1, :cond_1

    .line 8
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p4, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1

    :cond_1
    sub-double/2addr p2, v1

    move p4, v0

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p4, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    .line 1
    iget-boolean v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v11, 0x0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput v11, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    .line 6
    :cond_1
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    const-wide/16 v13, 0x0

    if-ge v0, v1, :cond_3

    .line 7
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpl-double v4, v1, v13

    if-ltz v4, :cond_2

    .line 8
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v15, v1, v4

    if-lez v15, :cond_2

    .line 9
    iput v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-gt v1, v2, :cond_c

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide v3, 0x40c3880000000000L    # 10000.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_4

    goto/16 :goto_5

    .line 12
    :cond_4
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide v3, 0x40e3880000000000L    # 40000.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_5

    .line 13
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v20}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 15
    invoke-static {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->l(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide v2, 0x40a3880000000000L    # 2500.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_5

    .line 16
    iput-boolean v12, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    return-void

    .line 17
    :cond_5
    iput-boolean v11, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    .line 18
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iget v1, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    .line 19
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 20
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    mul-double v2, v15, v17

    .line 21
    iget v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p2

    move-wide/from16 v20, v4

    move/from16 v4, v19

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;DILjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    mul-double v2, v15, v0

    .line 22
    iget v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v11, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;DILjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    mul-double v2, v15, v0

    .line 23
    iget v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v15, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;DILjava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 24
    invoke-direct {v6, v8, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 25
    invoke-direct {v6, v8, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 26
    invoke-direct {v6, v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v15

    .line 27
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    add-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v5, v11}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    neg-double v10, v13

    div-double v19, v10, v20

    .line 28
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    const-wide v22, 0x3fd6666666666666L    # 0.35

    mul-double v19, v19, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v10, v10, v22

    .line 29
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    const-wide v22, 0x3fd999999999999aL    # 0.4

    mul-double v10, v10, v22

    sub-double v22, v17, v19

    mul-double v24, v22, v10

    sub-double v17, v17, v10

    mul-double v22, v22, v17

    mul-double v1, v1, v19

    mul-double v3, v3, v24

    add-double/2addr v1, v3

    mul-double v15, v15, v22

    add-double/2addr v1, v15

    .line 30
    sget-wide v3, Lcn/mucang/android/jiakaoyi/framework/utils/o;->b:D

    cmpl-double v0, v1, v3

    if-lez v0, :cond_6

    move-wide v1, v3

    goto :goto_2

    :cond_6
    neg-double v10, v3

    cmpg-double v0, v1, v10

    if-gez v0, :cond_7

    neg-double v1, v3

    .line 31
    :cond_7
    :goto_2
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR;->b(DZ)D

    move-result-wide v3

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->d(D)I

    move-result v0

    int-to-double v0, v0

    mul-double v3, v3, v0

    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    mul-double v3, v3, v0

    .line 32
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-double v0, v0

    const-wide v10, 0x3fe199999999999aL    # 0.55

    mul-double v0, v0, v10

    add-double/2addr v3, v0

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    cmpg-double v2, v0, v10

    if-gez v2, :cond_8

    const-wide/16 v3, 0x0

    .line 34
    :cond_8
    iput-wide v13, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->b:D

    .line 35
    iput-wide v3, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    .line 36
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 37
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    if-ne v0, v2, :cond_9

    .line 38
    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;->a:I

    sub-int/2addr v0, v12

    add-int/lit8 v1, v0, 0x1

    .line 39
    :cond_9
    iget-wide v2, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->b:D

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    cmpg-double v10, v2, v4

    if-gez v10, :cond_b

    iget-wide v2, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-object v4, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 40
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0xb4

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    int-to-double v4, v4

    add-double/2addr v2, v4

    move-object/from16 v4, p6

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    const/4 v11, 0x1

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->e:Z

    .line 41
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    return-void

    .line 42
    :cond_c
    :goto_5
    iput-boolean v12, v7, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    return-void
.end method
