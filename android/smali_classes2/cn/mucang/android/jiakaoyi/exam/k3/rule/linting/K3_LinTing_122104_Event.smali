.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122104_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private stoppedAtTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/32 p1, -0xf423f

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122104_Event;->stoppedAtTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;

    .line 2
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122104_Event;->stoppedAtTime:J

    const-wide/32 v2, -0xf423f

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122104_Event;->stoppedAtTime:J

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 7
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122104_Event;->stoppedAtTime:J

    sub-long/2addr p2, v2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;->p222110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
