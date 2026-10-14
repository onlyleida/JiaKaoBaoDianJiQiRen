.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private clutchStepOnStartTime:J

.field private clutchStepOnSumTime:J

.field private p200205:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    add-float/2addr v1, v2

    const-wide/16 v2, 0x0

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_1

    .line 3
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnStartTime:J

    .line 4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnSumTime:J

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->p()V

    return v0

    .line 6
    :cond_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->p200205:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-nez p3, :cond_2

    .line 7
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 8
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200205:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->p200205:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 9
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->p200205:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p3, :cond_4

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez p1, :cond_3

    .line 12
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnStartTime:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    .line 13
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnSumTime:J

    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr v6, v4

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnSumTime:J

    .line 14
    :cond_3
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnStartTime:J

    goto :goto_0

    .line 15
    :cond_4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnStartTime:J

    .line 16
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnSumTime:J

    .line 17
    :goto_0
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103102_Event;->clutchStepOnSumTime:J

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    cmp-long p3, p1, v2

    if-gtz p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 18
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->b()J

    move-result-wide p1

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    cmp-long p3, p1, v2

    if-gtz p3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
