.class public Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303109_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303109_Event;->startTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/j;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/g;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303109_Event;->startTime:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    .line 4
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303109_Event;->startTime:J

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303109_Event;->startTime:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr p1, v2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v2, p3

    cmp-long p3, p1, v2

    if-gez p3, :cond_1

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303109_Event;->startTime:J

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303109_Event;->startTime:J

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
