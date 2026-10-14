.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private autoChaoCheStartDistance:F

.field private bianDaoStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

.field public canExeBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field private chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

.field public distanceLimit:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public finishAutoBianDao:Z

.field private finishAutoChaoChe:Z

.field private frameResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private hadChaoChe:Z

.field private hadReachDistance:Z

.field private hadReachSpeed:Z

.field public isAutoBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public isAutoChaoChe:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field private lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

.field private qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

.field public speedLimit:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadChaoChe:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200206:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->isAutoBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200202:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->isAutoChaoChe:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200204:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->speedLimit:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200203:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->distanceLimit:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 12
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200265:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->canExeBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    return-void
.end method

.method private resetAutoChaoChe()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadChaoChe:Z

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->autoChaoCheStartDistance:F

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadReachSpeed:Z

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;",
            ")",
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->bianDaoStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->bianDaoStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->v()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    if-nez p4, :cond_4

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->resetAutoChaoChe()V

    .line 12
    :cond_4
    sget-object p4, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto/16 :goto_2

    .line 13
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadChaoChe:Z

    if-eqz v1, :cond_7

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->speedLimit:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    .line 15
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadReachSpeed:Z

    .line 16
    :cond_6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->autoChaoCheStartDistance:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->autoChaoCheStartDistance:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->distanceLimit:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    .line 17
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadReachDistance:Z

    .line 18
    :cond_7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne v1, v3, :cond_9

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne p4, v0, :cond_8

    .line 20
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    if-nez v0, :cond_10

    .line 21
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->resetAutoChaoChe()V

    goto/16 :goto_1

    .line 22
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto/16 :goto_1

    .line 23
    :cond_9
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne v1, v3, :cond_c

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne p4, v1, :cond_10

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->isAutoBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    if-nez v1, :cond_b

    .line 26
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    .line 27
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->canExeBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    .line 28
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 29
    :cond_a
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->bianDaoStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 31
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->bianDaoStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto/16 :goto_1

    .line 32
    :cond_b
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    if-nez v0, :cond_10

    .line 33
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->isAutoChaoChe:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadChaoChe:Z

    if-nez v0, :cond_10

    .line 34
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadChaoChe:Z

    .line 35
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->autoChaoCheStartDistance:F

    goto/16 :goto_1

    .line 36
    :cond_c
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne v1, v3, :cond_10

    .line 37
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne p4, v1, :cond_10

    .line 38
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->isAutoBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    if-nez v1, :cond_e

    .line 39
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    .line 40
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->canExeBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    .line 41
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 42
    :cond_d
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->bianDaoStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->bianDaoStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_1

    .line 45
    :cond_e
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    if-nez v1, :cond_10

    .line 46
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadChaoChe:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadReachSpeed:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->hadReachDistance:Z

    if-eqz v1, :cond_f

    .line 47
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    .line 48
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_1

    .line 51
    :cond_f
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->resetAutoChaoChe()V

    .line 52
    :cond_10
    :goto_1
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 53
    :goto_2
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    if-nez p4, :cond_11

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200256:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_11

    .line 54
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p4

    if-eqz p4, :cond_11

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result p4

    if-eqz p4, :cond_11

    .line 55
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p4

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressBanMaLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p4, p1, p2, v2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 56
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->resetAutoChaoChe()V

    .line 57
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 58
    :cond_11
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 59
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->isAutoBianDao:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    if-nez p1, :cond_12

    .line 60
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-array v0, v2, [I

    const v1, 0x19a96

    aput v1, v0, p4

    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    .line 61
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->isAutoChaoChe:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoChaoChe:Z

    if-nez p1, :cond_13

    .line 63
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-array v0, v2, [I

    const v1, 0x19e78

    aput v1, v0, p4

    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    .line 64
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->frameResult:Ljava/util/HashMap;

    return-object p1
.end method
