.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

.field private hasReachAngle:Z

.field public lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

.field private pressStopLine:Z

.field private reachDistance:F

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

.field private straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

.field public final turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->hasReachAngle:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->reachDistance:F

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;-><init>(D)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 4
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ZuoZhuanStateData$State:[I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    invoke-virtual {p2, p1, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;FJ)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    const-string v1, "\u68c0\u6d4b\u5230\u5de6\u8f6c\u5f2f"

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-eq p2, v2, :cond_2

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->pressStopLine:Z

    if-nez p2, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->pressStopLine:Z

    .line 10
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->start()V

    .line 12
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-eq p2, v2, :cond_4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne p2, v3, :cond_4

    .line 15
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    .line 16
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->start()V

    .line 17
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-eq p2, v2, :cond_4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne p2, v3, :cond_4

    .line 19
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->start()V

    .line 21
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->hasReachAngle:Z

    if-nez p2, :cond_6

    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->a(F)F

    move-result p2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->hasReachAngle:Z

    if-eqz v0, :cond_7

    .line 23
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->reachDistance:F

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_7

    .line 24
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->reachDistance:F

    .line 25
    :cond_7
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->hasReachAngle:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    .line 26
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->onCheck(FFJ)Z

    move-result p2

    if-nez p2, :cond_8

    .line 27
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->reachDistance:F

    sub-float/2addr p2, p3

    const/high16 p3, 0x41700000    # 15.0f

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_9

    .line 28
    :cond_8
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->TurningEND:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    .line 29
    :cond_9
    :goto_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-eq p2, p3, :cond_a

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8def\u53e3\u5de6\u8f6c\u72b6\u6001 lastState "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ; state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

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

    .line 31
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    return-void
.end method
