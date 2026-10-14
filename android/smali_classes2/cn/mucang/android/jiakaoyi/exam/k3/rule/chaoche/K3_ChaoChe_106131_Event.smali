.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106131_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public startCahocheTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 2
    iget-boolean v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 4
    :cond_0
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    const-wide/16 v2, 0x0

    if-ne p3, v0, :cond_1

    .line 5
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106131_Event;->startCahocheTime:J

    cmp-long p3, v4, v2

    if-nez p3, :cond_1

    .line 6
    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106131_Event;->startCahocheTime:J

    .line 7
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 9
    :cond_2
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106131_Event;->startCahocheTime:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr p1, v4

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    cmp-long p3, p1, v2

    if-lez p3, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method
