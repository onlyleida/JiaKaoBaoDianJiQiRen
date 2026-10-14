.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305801_Event;
.super Lcn/mucang/android/jiakaoyi/examk2/rule/TeachBaseDeduct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/rule/TeachBaseDeduct<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/rule/TeachBaseDeduct;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Z
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305801_Event;->handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;)Z

    move-result p1

    return p1
.end method

.method protected handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;)Z
    .locals 0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/o;

    .line 3
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/o;->c:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p3

    .line 5
    :cond_0
    iget-boolean p2, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;->s:Z

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 7
    iget-boolean p2, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;->t:Z

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    :cond_2
    return p3
.end method

.method protected wheel()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
