.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;
.super Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public j:Z

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;-><init>()V

    return-void
.end method

.method private c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {p3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 13

    move-object v0, p1

    move-object/from16 v1, p3

    move-object/from16 v6, p4

    move-wide/from16 v2, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v4, v7, v8}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-static {v1, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 4
    invoke-static {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    invoke-virtual/range {p3 .. p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 7
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 8
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 9
    invoke-virtual {v5, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v7, v9, v11

    if-lez v7, :cond_1

    if-eqz p2, :cond_0

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    neg-double v0, v0

    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 14
    :goto_0
    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 15
    invoke-virtual {v5, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    cmpl-double v6, v4, v11

    if-lez v6, :cond_4

    if-eqz p2, :cond_3

    .line 16
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_3
    neg-double v2, v2

    .line 17
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    neg-double v2, v2

    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_6
    move-object v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 20
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    move-object/from16 v1, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    goto :goto_1

    :cond_7
    move-wide v0, v2

    :goto_1
    return-wide v0
.end method

.method private f(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)D
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    add-int/lit8 p5, p5, -0x1

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {p1, v5, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    .line 4
    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    :cond_0
    return-wide p3
.end method

.method private g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 5

    .line 1
    invoke-static {p1, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/u;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "betweenTwoPoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " dis1 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " dis2 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " dis3 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-static {v0, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    :cond_1
    return-wide p2
.end method

.method private j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 3
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    const/4 v1, 0x1

    if-ne p3, p2, :cond_8

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 5
    :goto_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 6
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 9
    :goto_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    .line 10
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 13
    :cond_4
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    .line 15
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 16
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    if-eq p1, p3, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0

    .line 17
    :cond_8
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz p2, :cond_d

    const/4 p2, 0x1

    .line 18
    :goto_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_a

    .line 19
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_9

    return v1

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    const/4 p2, 0x1

    .line 22
    :goto_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_c

    .line 23
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_b

    return v1

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    return v0

    .line 26
    :cond_d
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 27
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Z)D
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    :goto_0
    move-object v12, v0

    move-object v11, v1

    .line 5
    iget-boolean v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    if-eqz v0, :cond_3

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v0, v0

    const/4 v2, 0x1

    move-wide v5, v0

    const/4 v8, 0x1

    .line 7
    :goto_1
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 8
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    add-int/lit8 v1, v8, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v11

    move-object v4, v12

    move/from16 v18, v8

    move-object/from16 v8, v17

    .line 10
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    add-int/lit8 v8, v18, 0x1

    goto :goto_1

    .line 11
    :cond_1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v0, v0

    sub-double/2addr v0, v5

    cmpg-double v2, v0, v15

    if-gez v2, :cond_2

    .line 12
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    return-wide v0

    .line 13
    :cond_2
    iget v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->l:I

    int-to-double v0, v0

    mul-double v0, v0, v13

    sub-double/2addr v5, v0

    return-wide v5

    .line 14
    :cond_3
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v5, v0

    .line 15
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v11

    move-object v4, v12

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 16
    sget v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v2, v2

    sub-double/2addr v2, v0

    cmpg-double v4, v2, v15

    if-gez v4, :cond_4

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    return-wide v0

    .line 18
    :cond_4
    iget v2, v9, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->l:I

    int-to-double v2, v2

    mul-double v2, v2, v13

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 11

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v3, v0

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-wide v8, v3

    .line 3
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v10, v0

    .line 4
    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)D

    move-result-wide v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    .line 6
    :cond_1
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double p1, p1

    sub-double/2addr p1, v8

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    .line 7
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double p1, p1

    return-wide p1

    .line 8
    :cond_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->l:I

    int-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    sub-double/2addr v8, p1

    return-wide v8
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 9

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v3, v0

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 3
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, p2

    .line 7
    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    move-wide v3, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double v0, v0

    sub-double/2addr v0, v3

    cmpg-double v2, v0, v7

    if-gez v2, :cond_4

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 13
    :cond_4
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->a:I

    int-to-double p1, p1

    sub-double/2addr p1, v3

    cmpg-double v0, p1, v7

    if-gez v0, :cond_5

    .line 14
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double p1, p1

    return-wide p1

    :cond_5
    return-wide v3
.end method
