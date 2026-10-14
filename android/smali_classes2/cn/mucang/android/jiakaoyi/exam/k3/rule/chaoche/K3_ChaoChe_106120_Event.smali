.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106120_Event;
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
.field private final leftLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

.field private final rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/a/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-direct {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/a/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106120_Event;->leftLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/a/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-direct {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/a/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106120_Event;->rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 2
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p3, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106120_Event;->leftLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106120_Event;->leftLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/exam/a/d;->b()V

    .line 5
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p2, p3, :cond_2

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106120_Event;->rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->b()V

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106120_Event;->rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1
.end method
