.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BianDaoChecker"


# instance fields
.field private biandaoStartDistance:F

.field private byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

.field private carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

.field private changeAngel:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public hadTurnLeft:Z

.field public hadTurnRight:Z

.field private final hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

.field private isRunBeforeStart:Z

.field private lastCarTurnSate:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

.field private lastDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field private lastPos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

.field private offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

.field public startTurnLeft:Z

.field public startTurnRight:Z

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

.field private stateData:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

.field public tempState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->tempState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->biandaoStartDistance:F

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastDirection:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/f/a;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/f/a;-><init>(F)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->isRunBeforeStart:Z

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->changeAngel:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 9
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->stateData:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    .line 10
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    .line 11
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;-><init>(D)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    .line 13
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    return-void
.end method


# virtual methods
.method public beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->isRunBeforeStart:Z

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/f/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_9

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    move-result-object p2

    .line 3
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$BianDaoState:[I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    if-eq p3, v0, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastCarTurnSate:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p3, v1, :cond_6

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq p2, p3, :cond_1

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, p3, :cond_6

    .line 5
    :cond_1
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastCarTurnSate:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p3, v1, :cond_6

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq p2, p3, :cond_3

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, p3, :cond_6

    .line 7
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_0

    .line 8
    :cond_4
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, p3, :cond_5

    .line 9
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_0

    .line 10
    :cond_5
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, p3, :cond_6

    .line 11
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    .line 12
    :cond_6
    :goto_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p3, v1, :cond_7

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v1, v2, :cond_7

    .line 13
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->hadTurnLeft:Z

    .line 14
    :cond_7
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p3, v1, :cond_8

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p3, v1, :cond_8

    .line 15
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->hadTurnRight:Z

    .line 16
    :cond_8
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastCarTurnSate:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto :goto_1

    .line 17
    :cond_9
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->checkLpBianDao(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 18
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    const/4 v1, 0x0

    if-eq p2, p3, :cond_a

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, p3, :cond_a

    const-string p2, "\u68c0\u6d4b\u5230\u5411\u5de6\u53d8\u9053"

    .line 19
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 20
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->startTurnLeft:Z

    goto :goto_2

    .line 21
    :cond_a
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->startTurnLeft:Z

    .line 22
    :goto_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-eq p2, p3, :cond_b

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, p3, :cond_b

    const-string p2, "\u68c0\u6d4b\u5230\u5411\u53f3\u53d8\u9053"

    .line 23
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 24
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->startTurnRight:Z

    goto :goto_3

    .line 25
    :cond_b
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->startTurnRight:Z

    .line 26
    :goto_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-eq p2, p3, :cond_c

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u53d8\u9053\u72b6\u6001 lastState "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ; state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ; estimateTotalDistance "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 28
    :cond_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    return-void
.end method

.method public checkLpBianDao(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->isRunBeforeStart:Z

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->stateData:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    if-nez v1, :cond_c

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;-><init>(FLcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/f/a;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v2, v3, :cond_6

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->stateData:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v2, p1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;FJ)V

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne v2, v3, :cond_1

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->tempState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto/16 :goto_1

    .line 10
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne v2, v3, :cond_2

    .line 11
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->tempState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->stateData:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 13
    new-instance v2, Landroid/location/Location;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 14
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 16
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_5

    .line 20
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_5
    :goto_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6

    .line 21
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->tempState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    .line 22
    :cond_6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-eq v2, v3, :cond_7

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v2, v4, :cond_b

    .line 23
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->stateData:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->changeAngel:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_b

    .line 24
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->lastPos:Ljava/util/LinkedList;

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/a/e;->a(Landroid/location/Location;Ljava/util/List;F)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    .line 25
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double p1, v4, v6

    if-gez p1, :cond_8

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_b

    .line 26
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_9

    .line 27
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->hadTurnRight:Z

    :cond_9
    if-ne p1, v3, :cond_a

    .line 28
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->hadTurnLeft:Z

    .line 29
    :cond_a
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    :cond_b
    return-void

    .line 30
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4f4e\u7cbe\u5ea6\u53d8\u9053\u68c0\u6d4b\u4e0d\u9002\u7528\u4e0e\u8d85\u8f66\u9879\u76ee"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4f4e\u7cbe\u5ea6\u53d8\u9053\u9700\u8981\u8c03\u7528 beforeStart \u65b9\u6cd5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
