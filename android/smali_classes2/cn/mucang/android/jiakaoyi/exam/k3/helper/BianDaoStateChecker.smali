.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field public collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field public end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field public start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->getBianDaoDirection(Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState:[I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_3

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v1, v2, :cond_2

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v1, v2, :cond_3

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    .line 9
    :cond_3
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_9

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_9

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v1, v2, :cond_5

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_1

    .line 15
    :cond_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v1, v2, :cond_6

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    .line 17
    :cond_6
    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_9

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_9

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_2

    .line 20
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_9

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_8

    .line 22
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_2

    .line 23
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_9

    .line 24
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    .line 25
    :cond_9
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v0, v1, :cond_b

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_a

    .line 27
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 28
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_3

    .line 30
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_e

    .line 31
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 32
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 33
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_3

    .line 34
    :cond_b
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v0, v1, :cond_d

    .line 35
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_c

    .line 36
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 37
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 38
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_3

    .line 39
    :cond_c
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v0, v1, :cond_e

    .line 40
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 41
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 42
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->collisionLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 44
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 45
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 46
    :cond_e
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->bianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoStateChecker;->lastFrameBianDaoDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    return-void
.end method

.method public getBianDaoDirection(Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz p1, :cond_1

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    :cond_1
    :goto_0
    return-object v0
.end method
