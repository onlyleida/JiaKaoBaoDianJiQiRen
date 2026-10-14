.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103105_Event;
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
.field private atTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/32 p1, -0xf423f

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103105_Event;->atTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    const-wide/32 v1, -0xf423f

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 4
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103105_Event;->atTime:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 5
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103105_Event;->atTime:J

    :cond_0
    if-eqz v0, :cond_2

    .line 6
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103105_Event;->atTime:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    sub-long/2addr p2, v3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    cmp-long p1, p2, v3

    if-gez p1, :cond_1

    .line 7
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103105_Event;->atTime:J

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_1
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103105_Event;->atTime:J

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
