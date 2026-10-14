.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105102_Event;
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
.field private hasQiang:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105102_Event;->hasQiang:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 12

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;

    .line 2
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isOnlyCheckTurnLight:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105102_Event;->hasQiang:Z

    if-nez v4, :cond_4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    cmp-long v9, v7, v4

    if-lez v9, :cond_1

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->p()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 8
    iget-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    cmp-long v3, v8, v4

    if-lez v3, :cond_2

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->p()J

    move-result-wide v3

    cmp-long p3, v8, v3

    if-gez p3, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-nez v7, :cond_3

    if-eqz v6, :cond_4

    .line 9
    :cond_3
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/QiangZhiLing;->isQiang:Z

    .line 10
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105102_Event;->hasQiang:Z

    .line 11
    :cond_4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz v0, :cond_5

    .line 12
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_5

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p3, v0, :cond_5

    .line 13
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 14
    :cond_5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_7

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 16
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->startTurnRight:Z

    if-eqz p2, :cond_7

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    .line 18
    :cond_6
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, p3, :cond_7

    .line 19
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 20
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    :cond_7
    return v1
.end method
