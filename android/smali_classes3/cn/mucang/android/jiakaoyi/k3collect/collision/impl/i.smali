.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;
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

.field public f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public h:Z

.field public i:I


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

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "DI",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p6, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 p5, p5, -0x1

    .line 2
    invoke-interface {p6, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    :cond_0
    return-wide p3
.end method

.method private f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 0

    .line 1
    invoke-static {p1, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p4

    .line 2
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
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

    if-ne p3, p2, :cond_9

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 5
    :goto_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 6
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

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
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_8

    .line 10
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 13
    :cond_4
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    .line 15
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 16
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p2, p3, :cond_7

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    if-eq p1, p3, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    return v0

    .line 17
    :cond_9
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz p2, :cond_e

    const/4 p2, 0x1

    .line 18
    :goto_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    .line 19
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_a

    return v1

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_b
    const/4 p2, 0x1

    .line 22
    :goto_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_d

    .line 23
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    invoke-direct {p0, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_c

    return v1

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_d
    return v0

    .line 26
    :cond_e
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Z)D
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    :goto_0
    move-object v10, v0

    move-object v9, v1

    .line 5
    iget-boolean v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v0, :cond_4

    const/16 v17, 0x1

    move-wide v3, v15

    const/4 v6, 0x1

    .line 6
    :goto_1
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 7
    iget-object v5, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v18, v5

    move v5, v6

    move/from16 v19, v6

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/List;)D

    move-result-wide v3

    .line 8
    iget-object v6, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    move-object v2, v10

    move/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/List;)D

    move-result-wide v3

    add-int/lit8 v6, v19, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    .line 9
    :goto_2
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 10
    iget-object v5, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v17, v5

    move v5, v6

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/List;)D

    move-result-wide v3

    .line 11
    iget-object v6, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    move-object v2, v10

    move/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/List;)D

    move-result-wide v3

    add-int/lit8 v6, v18, 0x1

    goto :goto_2

    :cond_2
    sub-double/2addr v15, v3

    cmpg-double v0, v15, v13

    if-gez v0, :cond_3

    .line 12
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    return-wide v0

    .line 13
    :cond_3
    iget v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->i:I

    int-to-double v0, v0

    mul-double v0, v0, v11

    sub-double/2addr v3, v0

    return-wide v3

    :cond_4
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 14
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 15
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 16
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 17
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    sub-double/2addr v15, v0

    cmpg-double v2, v15, v13

    if-gez v2, :cond_5

    .line 18
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    return-wide v0

    .line 19
    :cond_5
    iget v2, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->i:I

    int-to-double v2, v2

    mul-double v2, v2, v11

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 16

    move-object/from16 v7, p0

    .line 1
    iget-boolean v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    move-wide v3, v12

    const/4 v15, 0x1

    .line 2
    :goto_0
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_0

    .line 3
    iget-object v6, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/List;)D

    move-result-wide v3

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1

    .line 5
    iget-object v6, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/List;)D

    move-result-wide v3

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    sub-double/2addr v12, v3

    cmpg-double v0, v12, v10

    if-gez v0, :cond_2

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    return-wide v0

    .line 7
    :cond_2
    iget v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->i:I

    int-to-double v0, v0

    mul-double v0, v0, v8

    sub-double/2addr v3, v0

    return-wide v3

    :cond_3
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 8
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 9
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    sub-double/2addr v12, v0

    cmpg-double v2, v12, v10

    if-gez v2, :cond_4

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    return-wide v0

    .line 11
    :cond_4
    iget v2, v7, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->i:I

    int-to-double v2, v2

    mul-double v2, v2, v8

    sub-double/2addr v0, v2

    return-wide v0
.end method
