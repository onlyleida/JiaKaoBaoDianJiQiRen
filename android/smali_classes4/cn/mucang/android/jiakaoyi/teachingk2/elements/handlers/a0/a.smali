.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 2
    :cond_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x1

    if-nez v3, :cond_6

    .line 3
    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    .line 4
    iget-boolean v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->centerCoordinate:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v3

    .line 5
    :goto_0
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->x:D

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->y:D

    invoke-direct {v6, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 7
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 8
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v12, v9

    const/4 v11, 0x0

    .line 10
    :goto_1
    iget-object v14, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v5

    if-ge v11, v14, :cond_3

    .line 11
    iget-object v14, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v15, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v16

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v15, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v18

    add-double v16, v16, v18

    cmpg-double v4, v16, v12

    if-gez v4, :cond_2

    .line 14
    invoke-virtual {v7, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    invoke-virtual {v8, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v12, v16

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 16
    :cond_3
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v11, 0x0

    .line 17
    invoke-virtual {v7, v11, v12, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    invoke-virtual {v8, v11, v12, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v4, 0x0

    .line 19
    :cond_4
    :goto_2
    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    if-ge v4, v11, :cond_5

    .line 20
    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v12, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v12, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v15

    add-double/2addr v13, v15

    cmpg-double v15, v13, v9

    if-gez v15, :cond_4

    .line 23
    invoke-virtual {v7, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    invoke-virtual {v8, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v9, v13

    goto :goto_2

    .line 25
    :cond_5
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->radius:D

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v9

    invoke-static {v3, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v2

    .line 27
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->radius:D

    mul-double v7, v7, v9

    invoke-static {v3, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v2

    .line 30
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 31
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->radius:D

    cmpg-double v1, v2, v6

    if-lez v1, :cond_8

    .line 33
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 34
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/a0/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v4, 0x1

    :goto_4
    return v4
.end method
