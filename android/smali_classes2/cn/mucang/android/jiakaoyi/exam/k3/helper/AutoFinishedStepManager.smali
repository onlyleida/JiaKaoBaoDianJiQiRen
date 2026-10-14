.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final autoChaoCheChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;

.field public finishAutoBianDao:Z

.field private globalData:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

.field private globalJiaJianDangChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

.field private jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

.field private final k3GlobalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->finishAutoBianDao:Z

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->globalData:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->k3GlobalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->autoChaoCheChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;

    return-void
.end method


# virtual methods
.method public startCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->k3GlobalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200240:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212155:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->globalJiaJianDangChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->k3GlobalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->globalJiaJianDangChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->globalJiaJianDangChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->autoChaoCheChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->globalData:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-virtual {v0, p1, p2, p3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)Ljava/util/HashMap;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->autoChaoCheChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoChaoCheChecker;->finishAutoBianDao:Z

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AutoFinishedStepManager;->finishAutoBianDao:Z

    if-eqz p1, :cond_5

    if-nez v1, :cond_4

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 15
    const-class p1, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/AutoFinishStep;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/AutoFinishStep;

    invoke-direct {p2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/AutoFinishStep;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
