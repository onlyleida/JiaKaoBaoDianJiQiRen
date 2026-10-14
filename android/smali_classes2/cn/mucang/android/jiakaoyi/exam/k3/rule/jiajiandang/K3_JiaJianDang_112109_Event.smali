.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiajiandang/K3_JiaJianDang_112109_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private matcher:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;

    .line 4
    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-eqz p3, :cond_2

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiajiandang/K3_JiaJianDang_112109_Event;->matcher:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    return v1

    .line 6
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiajiandang/K3_JiaJianDang_112109_Event;->matcher:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->match(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiajiandang/K3_JiaJianDang_112109_Event;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200179:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    :cond_3
    return p1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 2

    .line 1
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiajiandang/K3_JiaJianDang_112109_Event;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200178:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-direct {p2, p3, v1, v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiajiandang/K3_JiaJianDang_112109_Event;->matcher:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;

    return-void
.end method
