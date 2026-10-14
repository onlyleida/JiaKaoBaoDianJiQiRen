.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;
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


# instance fields
.field private final leftRightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->leftRightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->startTime:J

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-byte p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->leftRightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;ZZ)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->leftRightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_2

    .line 5
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->startTime:J

    .line 6
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz p1, :cond_1

    .line 7
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 8
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    if-nez p1, :cond_0

    iget p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    if-eq p1, v0, :cond_4

    .line 9
    :cond_0
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 10
    :cond_1
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 11
    :cond_2
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->startTime:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_3

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->startTime:J

    .line 13
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116130_Event;->startTime:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, p1, v2

    if-lez v0, :cond_4

    .line 14
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    :cond_4
    return p3
.end method
