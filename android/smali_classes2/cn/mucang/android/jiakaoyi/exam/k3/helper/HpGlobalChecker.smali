.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

.field public lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

.field private lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

.field public startTurningLeft:Z

.field public startTurningRight:Z

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

.field public turningLeft:Z

.field public turningRight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    return-void
.end method

.method private changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    move-result-object p2

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningLeft:Z

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningRight:Z

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v4, v0, :cond_2

    if-ne p2, v0, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->startTurningLeft:Z

    if-eq v4, v3, :cond_3

    if-ne p2, v3, :cond_3

    const/4 v1, 0x1

    .line 5
    :cond_3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->startTurningRight:Z

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State:[I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V

    goto :goto_3

    .line 8
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne v0, v3, :cond_b

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_6

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V

    .line 11
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_b

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V

    goto :goto_3

    .line 13
    :cond_7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne v1, v0, :cond_b

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_8

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V

    .line 16
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_b

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V

    goto :goto_3

    .line 18
    :cond_9
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningLeft:Z

    if-eqz v0, :cond_a

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V

    goto :goto_3

    .line 20
    :cond_a
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningRight:Z

    if-eqz v0, :cond_b

    .line 21
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)V

    .line 22
    :cond_b
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v0, p2, :cond_c

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Global\u662f\u8f66\u8f86\u8f6c\u5411\u72b6\u6001 lastTurnState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; turnState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; estimateTotalDistance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 24
    :cond_c
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    return-void
.end method
