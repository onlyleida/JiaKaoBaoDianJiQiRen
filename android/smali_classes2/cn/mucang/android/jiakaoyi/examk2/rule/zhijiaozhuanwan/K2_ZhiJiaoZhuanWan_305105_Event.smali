.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;
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
.field private isHaveCloseLight:Z

.field private isHaveLightOn:Z

.field private isHaveTouch37Line:Z

.field private touch37PreviousLightOn:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveTouch37Line:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveCloseLight:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveLightOn:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->touch37PreviousLightOn:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/o;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    .line 3
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveTouch37Line:Z

    const/4 v0, 0x1

    if-nez p3, :cond_0

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    if-nez v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->touch37PreviousLightOn:Z

    .line 5
    :cond_0
    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->C:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveTouch37Line:Z

    .line 7
    :cond_1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveCloseLight:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveTouch37Line:Z

    if-eqz p3, :cond_2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    if-eqz p2, :cond_2

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveCloseLight:Z

    .line 9
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 10
    :goto_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->touch37PreviousLightOn:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305105_Event;->isHaveCloseLight:Z

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p3

    :cond_5
    return v0
.end method
