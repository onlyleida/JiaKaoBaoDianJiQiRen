.class public Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312105_Event;
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
.field criterion:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/l;

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312105_Event;->criterion:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 5
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->y:D

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v4, p2

    cmpg-double p2, v0, v4

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312105_Event;->criterion:Z

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    sub-float/2addr v4, p2

    float-to-double v4, v4

    sub-double/2addr v0, v4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    cmpg-double p2, v0, v4

    if-gtz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312105_Event;->criterion:Z

    .line 8
    :cond_3
    :goto_2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312105_Event;->criterion:Z

    if-eqz p2, :cond_5

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    :cond_5
    :goto_3
    return v3
.end method
