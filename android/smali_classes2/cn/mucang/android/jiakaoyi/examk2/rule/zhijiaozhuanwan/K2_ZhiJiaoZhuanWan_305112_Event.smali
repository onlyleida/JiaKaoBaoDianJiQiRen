.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305112_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasFrontCar:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305112_Event;->hasFrontCar:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305112_Event;->hasFrontCar:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305112_Event;->hasFrontCar:Z

    return p1

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305112_Event;->hasFrontCar:Z

    :cond_1
    return v0
.end method
