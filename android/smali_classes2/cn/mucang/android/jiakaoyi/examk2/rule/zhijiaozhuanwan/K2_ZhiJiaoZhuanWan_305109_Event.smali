.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305109_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/o;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    .line 3
    iget-boolean p3, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 4
    iget p3, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->A:I

    const/4 v1, 0x2

    if-lt p3, v1, :cond_0

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->z:J

    sub-long/2addr p2, v1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    cmp-long p1, p2, v1

    if-lez p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
