.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

.field private checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

.field private globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field public lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field private final records:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200255:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 5
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->calculateBiandao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    .line 8
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    const/4 v2, 0x5

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 11
    :cond_3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->check(Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;)V

    .line 14
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 15
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    .line 16
    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$biandao$TurnState:[I

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v0, :cond_7

    const/4 p1, 0x2

    if-eq v6, p1, :cond_5

    const/4 p1, 0x3

    if-eq v6, p1, :cond_5

    const/4 p1, 0x4

    if-eq v6, p1, :cond_4

    goto/16 :goto_1

    .line 17
    :cond_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto/16 :goto_1

    .line 18
    :cond_5
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v4, p1, :cond_6

    .line 19
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto/16 :goto_1

    .line 20
    :cond_6
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v4, p1, :cond_e

    .line 21
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto/16 :goto_1

    .line 22
    :cond_7
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    const-wide/16 v6, 0x0

    const-wide v8, 0x4097700000000000L    # 1500.0

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_8

    .line 23
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto/16 :goto_1

    .line 25
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz p1, :cond_e

    .line 26
    iget-object p1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 28
    invoke-virtual {p2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    cmpl-double v0, p1, v6

    if-lez v0, :cond_9

    goto/16 :goto_1

    :cond_9
    cmpg-double v0, p1, v6

    if-gez v0, :cond_e

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->isStraightLine(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v2, :cond_a

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p1, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, p2, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 33
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 34
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto/16 :goto_1

    .line 35
    :cond_a
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto/16 :goto_1

    .line 36
    :cond_b
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v4, v0, :cond_e

    if-eqz p2, :cond_c

    .line 37
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 38
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto :goto_1

    .line 39
    :cond_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz p1, :cond_e

    .line 40
    iget-object p1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 42
    invoke-virtual {p2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    cmpl-double v0, p1, v6

    if-lez v0, :cond_e

    .line 44
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->isStraightLine(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v2, :cond_d

    .line 45
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p1, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, p2, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 47
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->records:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 48
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto :goto_1

    .line 49
    :cond_d
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    .line 50
    :cond_e
    :goto_1
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 51
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    return-object p1
.end method

.method public isStraightLine(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 3
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 6
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    return-void
.end method
