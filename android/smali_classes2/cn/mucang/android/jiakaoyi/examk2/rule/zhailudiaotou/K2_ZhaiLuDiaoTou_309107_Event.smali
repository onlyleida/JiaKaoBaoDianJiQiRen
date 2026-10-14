.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309107_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/n;

    .line 2
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    sub-long/2addr p2, v0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    const/4 p1, 0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
