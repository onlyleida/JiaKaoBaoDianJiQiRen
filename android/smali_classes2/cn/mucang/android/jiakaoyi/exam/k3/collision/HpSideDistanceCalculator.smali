.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private final bodyLeftResult:D

.field private final bodyRightResult:D

.field private final invalid:D

.field private final leftLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private final rightLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private final twoSideOffsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->allLines:Ljava/util/List;

    const-wide v1, -0x3f3c788000000000L    # -9999.0

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->invalid:D

    .line 4
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->bodyLeftResult:D

    .line 5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->bodyRightResult:D

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->leftLines:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->rightLines:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_3
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 17
    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_4
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->twoSideOffsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    return-void
.end method

.method private getCalculateLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v2, :cond_2

    .line 4
    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 5
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v3, :cond_1

    .line 6
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v2, :cond_0

    .line 12
    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 13
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v3, :cond_3

    .line 14
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->allLines:Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->allLines:Ljava/util/List;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->getCalculateLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->leftLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 6
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->rightLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 8
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-lez v6, :cond_e

    const/4 v6, 0x0

    move-wide v10, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_d

    .line 12
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 13
    instance-of v15, v14, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v15, :cond_3

    .line 14
    move-object v15, v14

    check-cast v15, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 15
    iget-boolean v9, v15, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v9, :cond_2

    .line 16
    iget-object v9, v15, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    goto :goto_2

    .line 17
    :cond_2
    iget-object v9, v15, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object v15, v9

    goto :goto_1

    .line 18
    :cond_3
    instance-of v9, v14, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v9, :cond_5

    .line 19
    move-object v9, v14

    check-cast v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 20
    iget-boolean v15, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v15, :cond_4

    .line 21
    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    goto :goto_2

    .line 22
    :cond_4
    iget-object v15, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :goto_1
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_2
    const/4 v15, 0x0

    :goto_3
    const-wide/16 v16, 0x0

    if-eqz v9, :cond_a

    .line 23
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_9

    const/4 v15, 0x1

    move-object/from16 v18, v1

    .line 24
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_8

    add-int/lit8 v1, v15, -0x1

    .line 25
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v19, v12

    .line 27
    iget-object v12, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v12, v1, v9}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 28
    iget-object v12, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v12, v1, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 29
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 30
    iget-object v12, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 31
    invoke-virtual {v9, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    .line 32
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v23

    cmpl-double v1, v21, v16

    if-lez v1, :cond_6

    cmpg-double v1, v23, v7

    if-gez v1, :cond_7

    move-object v12, v14

    move-wide/from16 v7, v23

    goto :goto_5

    :cond_6
    cmpg-double v1, v21, v16

    if-gez v1, :cond_7

    cmpg-double v1, v23, v10

    if-gez v1, :cond_7

    move-object v13, v14

    move-object/from16 v12, v19

    move-wide/from16 v10, v23

    goto :goto_5

    :cond_7
    move-object/from16 v12, v19

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v20

    goto :goto_4

    :cond_8
    move-object/from16 v19, v12

    goto :goto_6

    :cond_9
    move-object/from16 v18, v1

    goto :goto_6

    :cond_a
    move-object/from16 v18, v1

    if-eqz v15, :cond_c

    .line 33
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v15, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v9, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 34
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 35
    iget-object v15, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 36
    invoke-virtual {v9, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    .line 37
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    cmpl-double v1, v19, v16

    if-lez v1, :cond_b

    cmpg-double v1, v21, v7

    if-gez v1, :cond_c

    move-object v12, v14

    move-wide/from16 v7, v21

    goto :goto_6

    :cond_b
    cmpg-double v1, v19, v16

    if-gez v1, :cond_c

    cmpg-double v1, v21, v10

    if-gez v1, :cond_c

    move-object v13, v14

    move-wide/from16 v10, v21

    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    goto/16 :goto_0

    :cond_d
    move-wide/from16 v20, v7

    move-wide/from16 v22, v10

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    goto :goto_7

    :cond_e
    move-wide/from16 v20, v7

    move-wide/from16 v22, v20

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 38
    :goto_7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->twoSideOffsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v25}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->setResult(DDLcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object v1

    return-object v1

    .line 39
    :cond_f
    :goto_8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->twoSideOffsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object v1

    return-object v1

    .line 40
    :cond_10
    :goto_9
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSideDistanceCalculator;->twoSideOffsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object v1

    return-object v1
.end method
