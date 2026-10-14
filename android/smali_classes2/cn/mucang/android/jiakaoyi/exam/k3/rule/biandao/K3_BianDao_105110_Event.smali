.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105110_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private targetDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandao/K3_BianDao_105110_Event;->targetDistance:F

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;

    .line 3
    iget-boolean p3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isOnlyCheckTurnLight:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    :cond_0
    return p2

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p1, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_0
    return p2
.end method
