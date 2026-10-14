.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

.field private checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

.field private diaoTouAngleChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;

.field private final diaoTouDirection:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

.field private diaotouFinishDistance:F

.field public isLeftDiaoTou:Z

.field public lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

.field public final turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->isLeftDiaoTou:Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    const/16 v2, 0x7d0

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;-><init>(I)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;-><init>(D)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->isLeftDiaoTou:Z

    .line 9
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaoTouDirection:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->isLeftDiaoTou:Z

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaoTouDirection:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    :goto_0
    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaoTouAngleChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaoTouAngleChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaoTouAngleChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->insert(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 7
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-ne p2, v0, :cond_2

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    invoke-virtual {p2, p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;FJ)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaoTouDirection:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne p2, p3, :cond_6

    .line 10
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->diaotou:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->start()V

    const-string p2, "\u68c0\u6d4b\u5230\u6389\u5934"

    .line 12
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->diaotou:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-ne p2, v0, :cond_6

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    .line 16
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaotouFinishDistance:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaotouFinishDistance:F

    .line 18
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaotouFinishDistance:F

    sub-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_6

    .line 19
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    goto :goto_0

    .line 20
    :cond_4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaotouFinishDistance:F

    goto :goto_0

    .line 21
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->onCheck(FFJ)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->diaoTouAngleChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->isEnd()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 22
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    .line 23
    :cond_6
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-eq p2, p3, :cond_7

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u6389\u5934\u72b6\u6001 lastState "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ; state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

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

    .line 25
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    return-void
.end method
