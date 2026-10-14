.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasHandbrake:Z

.field private final timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;->hasHandbrake:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    .line 2
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/k;->g:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 4
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;->hasHandbrake:Z

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p3, :cond_0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;->hasHandbrake:Z

    .line 6
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 7
    iput-boolean p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/k;->g:Z

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 9
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302123_Event;->hasHandbrake:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz p1, :cond_1

    return p3

    :cond_1
    return v0
.end method
