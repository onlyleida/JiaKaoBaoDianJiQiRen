.class public Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private isOpenSeatBelt:Z

.field private timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->isOpenSeatBelt:Z

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/f;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/e;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->y:Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/e;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->y:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->isOpenSeatBelt:Z

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-nez p1, :cond_1

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->isOpenSeatBelt:Z

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_310105_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    :cond_1
    return v0
.end method
