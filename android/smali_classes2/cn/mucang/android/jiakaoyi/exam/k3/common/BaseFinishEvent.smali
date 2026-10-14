.class public abstract Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        ">",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected isJudgeGlobalSpeed:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected abstract configDistance()F
.end method

.method protected doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    return-void
.end method

.method protected abstract finishVoiceTips()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
.end method

.method public handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->noInited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->noInited:Z

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->isEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; estimateTotalDistance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->isStepFinish:Z

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->doNotExecute:Z

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->needVoiceTip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->finishVoiceTips()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-result-object v1

    .line 11
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 12
    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v1

    .line 14
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    if-eqz v2, :cond_2

    .line 15
    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    .line 16
    iput-boolean v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->isEnd:Z

    .line 17
    invoke-virtual {v1, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onCheckEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 18
    :cond_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200264:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string p2, ","

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->isJudgeGlobalSpeed:Z

    :cond_0
    return-void
.end method

.method protected isEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    .line 2
    iget-boolean v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->n:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->configDistance()F

    move-result p3

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->h:F

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->configDistance()F

    move-result p3

    .line 6
    :goto_0
    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startEstimateDistance:F

    add-float/2addr p2, p3

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p4, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->n:Z

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result p1

    return p1
.end method

.method protected abstract needVoiceTip()Z
.end method
