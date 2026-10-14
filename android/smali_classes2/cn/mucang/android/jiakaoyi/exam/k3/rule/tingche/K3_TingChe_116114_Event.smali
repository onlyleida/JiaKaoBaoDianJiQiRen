.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final maxCount:I = 0xf


# instance fields
.field private brakeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isDoorOpen:Z

.field private isHandbrakeOpen:Z

.field private isReady:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->brakeList:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isHandbrakeOpen:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isReady:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isDoorOpen:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    .line 2
    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result p1

    const/16 v3, 0xf

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->brakeList:Ljava/util/LinkedList;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->brakeList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v3, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->brakeList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->brakeList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 8
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isReady:Z

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 9
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->brakeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->brakeList:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-ge p2, v0, :cond_4

    const/4 v1, 0x1

    .line 11
    :cond_4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isHandbrakeOpen:Z

    goto :goto_3

    .line 12
    :cond_5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isReady:Z

    .line 13
    :goto_3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 14
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isDoorOpen:Z

    if-nez p2, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->OpenDoor:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne p1, p2, :cond_6

    .line 15
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isDoorOpen:Z

    .line 16
    :cond_6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isDoorOpen:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isReady:Z

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 18
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116114_Event;->isHandbrakeOpen:Z

    xor-int/2addr p1, v2

    return p1

    :cond_7
    return v2
.end method
