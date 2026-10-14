.class public Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private carStopStartTime:J

.field private lastDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->carStopStartTime:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->lastDistance:F

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/b/l;

    .line 2
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 4
    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    goto :goto_0

    .line 5
    :cond_0
    iget p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->lastDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz p3, :cond_3

    .line 6
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->carStopStartTime:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    .line 7
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->carStopStartTime:J

    .line 8
    :cond_2
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->carStopStartTime:J

    sub-long/2addr p1, v3

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v3, p3

    cmp-long p3, p1, v3

    if-ltz p3, :cond_4

    return v2

    .line 9
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->lastDistance:F

    .line 10
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312110_Event;->carStopStartTime:J

    :cond_4
    return v1
.end method
