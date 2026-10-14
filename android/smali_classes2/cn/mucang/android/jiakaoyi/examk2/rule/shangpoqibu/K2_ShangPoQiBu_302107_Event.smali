.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;
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
.field private leftLightOnTime:J

.field private stopped:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v0

    .line 3
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ne p3, v1, :cond_1

    .line 4
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;->stopped:Z

    if-eqz v0, :cond_0

    .line 5
    iget-boolean p3, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz p3, :cond_0

    .line 6
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;->leftLightOnTime:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    .line 7
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;->leftLightOnTime:J

    goto :goto_0

    .line 8
    :cond_0
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;->leftLightOnTime:J

    .line 9
    :cond_1
    :goto_0
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;->stopped:Z

    if-eqz p3, :cond_4

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p3, :cond_4

    .line 12
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;->leftLightOnTime:J

    const/4 p1, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    .line 13
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr p2, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v5, p2, v0

    if-gez v5, :cond_2

    .line 14
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302107_Event;->leftLightOnTime:J

    .line 15
    invoke-virtual {p0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p1

    .line 16
    :cond_2
    invoke-virtual {p0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v4

    .line 17
    :cond_3
    invoke-virtual {p0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p1

    :cond_4
    return v4
.end method
