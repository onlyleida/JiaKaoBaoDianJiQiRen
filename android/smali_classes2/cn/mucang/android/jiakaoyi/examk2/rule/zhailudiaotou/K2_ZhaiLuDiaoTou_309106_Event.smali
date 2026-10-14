.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;
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


# instance fields
.field private isStop:Z

.field private timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->isStop:Z

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/n;

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/i;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->H:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->isStop:Z

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/i;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz p1, :cond_1

    .line 7
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->isStop:Z

    .line 8
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    :cond_1
    return p3
.end method
