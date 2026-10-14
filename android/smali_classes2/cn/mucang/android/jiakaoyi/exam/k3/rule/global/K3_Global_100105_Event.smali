.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private clutchStepOnStartTime:J

.field private clutchStepOnSumTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->ClutchTime:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p3

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_1

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    .line 4
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnSumTime:J

    return v0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    add-float/2addr v3, v4

    cmpg-float p3, p3, v3

    if-gtz p3, :cond_2

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    .line 7
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnSumTime:J

    return v0

    .line 8
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200205:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_6

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p3, :cond_4

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez p1, :cond_3

    .line 11
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    cmp-long p1, v4, v1

    if-lez p1, :cond_3

    .line 12
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnSumTime:J

    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr v6, v4

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnSumTime:J

    .line 13
    :cond_3
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    goto :goto_0

    .line 14
    :cond_4
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    .line 15
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnSumTime:J

    .line 16
    :goto_0
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnSumTime:J

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v1, p3

    cmp-long p3, p1, v1

    if-gtz p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 17
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p1, :cond_8

    .line 18
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    cmp-long p1, v4, v1

    if-nez p1, :cond_7

    .line 19
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    .line 20
    :cond_7
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    sub-long/2addr p1, v1

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v1, p3

    cmp-long p3, p1, v1

    if-lez p3, :cond_9

    return v3

    .line 21
    :cond_8
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100105_Event;->clutchStepOnStartTime:J

    :cond_9
    return v0
.end method
