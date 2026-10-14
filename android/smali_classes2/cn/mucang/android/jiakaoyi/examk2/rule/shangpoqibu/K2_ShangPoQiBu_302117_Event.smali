.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;
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
.field private isHaveHandbrakeOpen:Z

.field private startCheckTime:J

.field private stopTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->isHaveHandbrakeOpen:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 10

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_4

    .line 3
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    .line 4
    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->stopTime:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_0

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->stopTime:J

    .line 6
    :cond_0
    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->isHaveHandbrakeOpen:Z

    if-nez v6, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p1, :cond_1

    .line 7
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->isHaveHandbrakeOpen:Z

    .line 8
    :cond_1
    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->startCheckTime:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_2

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->startCheckTime:J

    .line 10
    :cond_2
    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->startCheckTime:J

    sub-long v6, v0, v6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v8, p1

    cmp-long p1, v6, v8

    if-gtz p1, :cond_3

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->isHaveHandbrakeOpen:Z

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v3

    .line 12
    :cond_3
    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->startCheckTime:J

    sub-long/2addr v0, v6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v6, p1

    cmp-long p1, v0, v6

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->isHaveHandbrakeOpen:Z

    if-nez p1, :cond_4

    .line 13
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 14
    :cond_4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    if-nez p1, :cond_6

    .line 15
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->startCheckTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_5

    .line 16
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 17
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->isHaveHandbrakeOpen:Z

    return p1

    .line 18
    :cond_5
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->startCheckTime:J

    .line 19
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->stopTime:J

    .line 20
    :cond_6
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->startCheckTime:J

    cmp-long p3, p1, v4

    if-lez p3, :cond_7

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302117_Event;->isHaveHandbrakeOpen:Z

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v3
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
