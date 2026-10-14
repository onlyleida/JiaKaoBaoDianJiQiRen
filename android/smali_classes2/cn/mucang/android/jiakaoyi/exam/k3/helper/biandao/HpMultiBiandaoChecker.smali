.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

.field public isCheckReverse:Z

.field private isInit:Z

.field private lastBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field private lastBiandaoTime:J

.field private lastCollisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field private lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

.field public minIntervalTime:J

.field public startTurningLeft:Z

.field public startTurningRight:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->startTurningRight:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->startTurningLeft:Z

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastCollisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBiandaoTime:J

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->isInit:Z

    .line 8
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->minIntervalTime:J

    .line 9
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->isCheckReverse:Z

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    return-void
.end method

.method private getTwoLineMinDistance(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)D
    .locals 6

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2
    :cond_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 3
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 4
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_4

    .line 10
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 11
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    :cond_4
    move-object p1, v2

    move-object v0, p1

    .line 17
    :goto_0
    iget v5, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    if-ne v5, v4, :cond_6

    .line 18
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 19
    iget-boolean v5, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v5, :cond_5

    .line 20
    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_8

    .line 21
    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 23
    :cond_5
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    :cond_6
    if-ne v5, v3, :cond_8

    .line 25
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 26
    iget-boolean v5, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v5, :cond_7

    .line 27
    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_8

    .line 28
    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 30
    :cond_7
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 31
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    :cond_8
    move-object p2, v2

    :goto_1
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 32
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 33
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    .line 34
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1

    :cond_9
    const-wide p1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p1
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->isInit:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->isInit:Z

    const-wide/16 v3, -0x1

    .line 4
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBiandaoTime:J

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastCollisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v0, p2, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u591a\u53d8\u9053\u8f66\u8f86\u8f6c\u5411\u72b6\u6001 lastTurnState "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ; turnState "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ; estimateTotalDistance "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v0, v4, :cond_2

    if-ne p2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->startTurningLeft:Z

    .line 11
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v0, v5, :cond_3

    if-ne p2, v5, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->startTurningRight:Z

    .line 12
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const-string v6, ";end "

    const-string v7, "\u53d8\u9053\u7ebf start "

    const/4 v8, 0x2

    const-string v9, "\u53d8\u9053\u7ebf "

    if-eqz v4, :cond_7

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 14
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 15
    instance-of v10, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v10, :cond_b

    .line 16
    move-object v10, v4

    check-cast v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 17
    iget-boolean v11, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    const-string v12, "\u53d8\u9053\u7ebf null"

    if-eqz v11, :cond_5

    .line 18
    iget-object v9, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    if-eqz v9, :cond_4

    .line 19
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v8, :cond_4

    .line 20
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 23
    :cond_4
    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :cond_5
    iget-object v6, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v6, :cond_6

    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 26
    :cond_6
    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    if-eqz v0, :cond_a

    .line 27
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 28
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 29
    instance-of v10, v4, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v10, :cond_b

    .line 30
    move-object v10, v4

    check-cast v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 31
    iget-boolean v11, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v11, :cond_9

    .line 32
    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    if-eqz v10, :cond_8

    .line 33
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v8, :cond_8

    .line 34
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 35
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 36
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 37
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :cond_9
    iget-object v6, v10, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    move-object v4, v1

    move-object v0, v5

    .line 40
    :cond_b
    :goto_2
    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-eq v0, v6, :cond_d

    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v7, :cond_c

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 41
    :cond_d
    :goto_3
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastCollisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz v7, :cond_14

    if-eqz v4, :cond_14

    .line 42
    iget-boolean v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->isCheckReverse:Z

    const-wide v9, 0x4062c00000000000L    # 150.0

    if-eqz v8, :cond_11

    .line 43
    invoke-direct {p0, v7, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->getTwoLineMinDistance(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)D

    move-result-wide v7

    cmpl-double v11, v7, v9

    if-lez v11, :cond_e

    .line 44
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBiandaoTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->minIntervalTime:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_14

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    .line 45
    :cond_e
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v7, v6, :cond_f

    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-eq v0, v8, :cond_10

    :cond_f
    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v7, v8, :cond_14

    if-ne v0, v6, :cond_14

    .line 46
    :cond_10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBiandaoTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->minIntervalTime:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_14

    goto :goto_4

    .line 47
    :cond_11
    invoke-direct {p0, v7, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->getTwoLineMinDistance(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)D

    move-result-wide v7

    cmpl-double v11, v7, v9

    if-lez v11, :cond_14

    .line 48
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v7, v6, :cond_12

    if-eq v0, v6, :cond_13

    :cond_12
    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v7, v6, :cond_14

    if-ne v0, v6, :cond_14

    .line 49
    :cond_13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBiandaoTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->minIntervalTime:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_14

    goto :goto_4

    :cond_14
    const/4 v6, 0x0

    .line 50
    :goto_5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 51
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBiandaoTime:J

    .line 52
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastCollisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 53
    :goto_6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eqz v6, :cond_15

    const-wide/16 p1, 0x0

    .line 54
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBiandaoTime:J

    .line 55
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 56
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->lastCollisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return v3

    :cond_15
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpMultiBiandaoChecker;->isInit:Z

    return-void
.end method
