.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105114_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final turnLeftBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

.field private final turnRightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/a/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-direct {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/a/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105114_Event;->turnLeftBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/a/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-direct {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/a/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105114_Event;->turnRightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    .line 3
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105114_Event;->turnLeftBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105114_Event;->turnLeftBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/a/d;->b()V

    .line 7
    :cond_2
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_5

    .line 8
    :cond_3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, p3, :cond_4

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105114_Event;->turnRightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    .line 10
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105114_Event;->turnRightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->b()V

    :cond_5
    return v1
.end method
