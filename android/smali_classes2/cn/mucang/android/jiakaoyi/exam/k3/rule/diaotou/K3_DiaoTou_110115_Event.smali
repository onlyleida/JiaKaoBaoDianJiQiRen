.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasQiang:Z

.field private turnLightTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->turnLightTime:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->hasQiang:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 11

    .line 1
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;

    .line 4
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->isLeftDiaoTou:Z

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v3, 0x1

    .line 8
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v2

    .line 9
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->hasQiang:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 10
    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_2

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->p()J

    move-result-wide v9

    cmp-long p3, v7, v9

    if-gez p3, :cond_2

    .line 11
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->hasQiang:Z

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/QiangZhiLing;->isQiang:Z

    :cond_2
    if-eqz v3, :cond_6

    .line 12
    iget-boolean p3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->isLeftDiaoTou:Z

    if-eqz p3, :cond_3

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    goto :goto_1

    .line 14
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    .line 15
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->turnLightTime:J

    cmp-long p1, v2, v5

    if-gtz p1, :cond_4

    .line 16
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->turnLightTime:J

    .line 17
    :cond_4
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->turnLightTime:J

    sub-long/2addr p1, v2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    cmp-long p3, p1, v2

    if-lez p3, :cond_6

    .line 18
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_5
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110115_Event;->turnLightTime:J

    :cond_6
    return v1
.end method
