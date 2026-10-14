.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private currentDistance:F

.field private engineOff:Z

.field private hasCheck:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->currentDistance:F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->hasCheck:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->engineOff:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->hasCheck:Z

    if-nez p3, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401173:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->hasCheck:Z

    return p2

    .line 6
    :cond_1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->hasCheck:Z

    const/4 v1, 0x0

    if-nez p3, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isNotStop()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float p3, p3, v2

    if-lez p3, :cond_4

    const/4 p3, 0x0

    if-nez p2, :cond_3

    .line 8
    iget v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->currentDistance:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_2

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->currentDistance:F

    .line 10
    :cond_2
    iget v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->currentDistance:F

    cmpl-float v2, v2, p3

    if-lez v2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->currentDistance:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401165:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 11
    iput p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->currentDistance:F

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->hasCheck:Z

    return v1

    .line 13
    :cond_3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->hasCheck:Z

    .line 14
    iput p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->currentDistance:F

    .line 15
    :cond_4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401173:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 16
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->engineOff:Z

    if-eqz p3, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    if-eqz p3, :cond_5

    .line 17
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->engineOff:Z

    return p2

    .line 18
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    if-nez p1, :cond_6

    .line 19
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300107_Event;->engineOff:Z

    :cond_6
    return v0
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
