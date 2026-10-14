.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final InValid:I = -0x186a0


# instance fields
.field private final byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

.field private carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

.field private globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

.field private final globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field public isChangeOneRoad:Z

.field public isChangeTwoRoad:Z

.field private lastCarTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

.field private latestPos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/f/a;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/f/a;-><init>(F)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->latestPos:Ljava/util/LinkedList;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->lastCarTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const-wide/16 v1, 0x320

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;-><init>(FJ)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    return-void
.end method

.method private mean(Ljava/util/List;)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    add-double/2addr v1, v7

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v1, v5

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v3, v5

    .line 6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;
    .locals 10

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->get(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    move-result-object p1

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v5, 0x43fa0000    # 500.0f

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, -0x40800000    # -1.0f

    if-ne p1, v2, :cond_5

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v7

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v8

    invoke-virtual {v2, v7, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v7

    :goto_0
    cmpl-float v0, v7, v6

    if-lez v0, :cond_3

    cmpg-float v0, v7, v4

    if-gez v0, :cond_3

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->isChangeOneRoad:Z

    goto :goto_1

    :cond_3
    cmpl-float v0, v7, v5

    if-lez v0, :cond_4

    cmpg-float v0, v7, v3

    if-gez v0, :cond_4

    .line 10
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->isChangeTwoRoad:Z

    .line 11
    :cond_4
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto/16 :goto_5

    .line 12
    :cond_5
    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne p1, v8, :cond_9

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v7

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v8

    invoke-virtual {v2, v7, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v7

    :goto_2
    cmpl-float v0, v7, v6

    if-lez v0, :cond_7

    cmpg-float v0, v7, v4

    if-gez v0, :cond_7

    .line 14
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->isChangeOneRoad:Z

    goto :goto_3

    :cond_7
    cmpl-float v0, v7, v5

    if-lez v0, :cond_8

    cmpg-float v0, v7, v3

    if-gez v0, :cond_8

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->isChangeTwoRoad:Z

    .line 16
    :cond_8
    :goto_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->isChangeTwoRoad:Z

    .line 18
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->isChangeOneRoad:Z

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->lastCarTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-eq v1, v8, :cond_d

    if-ne v1, v2, :cond_a

    goto :goto_4

    .line 20
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne p1, v1, :cond_c

    .line 21
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->straight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_b

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 25
    :cond_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->getStartAngle()F

    move-result v0

    const v1, -0x383cb000    # -100000.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 27
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    goto :goto_5

    .line 28
    :cond_c
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto :goto_5

    .line 29
    :cond_d
    :goto_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 30
    :cond_e
    :goto_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->lastCarTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v0, v1, :cond_f

    if-eq p1, v1, :cond_f

    .line 31
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 32
    :cond_f
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->lastCarTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->globalState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalBianDaoChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->reset()V

    return-void
.end method
