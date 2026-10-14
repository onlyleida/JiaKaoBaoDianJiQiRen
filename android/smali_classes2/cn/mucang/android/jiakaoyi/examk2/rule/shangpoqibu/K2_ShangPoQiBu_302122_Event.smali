.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;
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

.field private hasStop:Z

.field private hasSuccess:Z

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

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasSuccess:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasStop:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasHandbrake:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 2
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasStop:Z

    .line 3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasSuccess:Z

    if-nez p2, :cond_1

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_0

    .line 5
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasHandbrake:Z

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 9
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasSuccess:Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 11
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasStop:Z

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 14
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasHandbrake:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302122_Event;->hasSuccess:Z

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return p3
.end method
