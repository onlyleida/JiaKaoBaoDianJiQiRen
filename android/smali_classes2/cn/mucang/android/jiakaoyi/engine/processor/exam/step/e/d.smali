.class public abstract Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        ">",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;"
    }
.end annotation


# instance fields
.field protected final config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final count:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

.field protected final deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

.field protected doNotExecute:Z

.field protected isPlayScore:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/i/e/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/i/e/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->count:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->doNotExecute:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->isPlayScore:Z

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    return-void
.end method

.method private needAutoCheck()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->checkConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected deductExtraData(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/a;->a()Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected finishWhenTrigger()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->needAutoCheck()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->supportPracticeMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    if-lez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->doNotExecute:Z

    if-eqz v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->k:Z

    if-eqz v0, :cond_3

    return-object v1

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->handleOnce(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    if-lez v0, :cond_9

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->h:Z

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->isPlayScore:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/language/a;->a()Lcn/mucang/android/jiakaoyi/framework/language/Language;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Chinese:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    if-ne v0, v2, :cond_4

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    .line 11
    :goto_0
    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 12
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v3, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    invoke-virtual {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    if-eqz v1, :cond_5

    .line 13
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;->startSpeechLow(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    goto :goto_1

    .line 14
    :cond_5
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->A(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 15
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->enableTwoChannel()Z

    move-result v1

    :cond_7
    if-eqz v1, :cond_8

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->A(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    goto :goto_1

    .line 18
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->s(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    .line 19
    :cond_9
    :goto_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->finishWhenTrigger()Z

    move-result v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v6, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->h:Z

    iget-object v7, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deductExtraData(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>(ZLcn/mucang/android/jiakaoyi/engine/model/Deduct;ZLcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;)V

    return-object v0

    :cond_a
    return-object v1
.end method

.method protected handleOnce(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->sameEventDeductOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->count:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method protected abstract handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
.end method

.method protected isFinished(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p1

    return p1
.end method

.method protected isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method protected sameEventDeductOnce()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setDoNotExecute(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->doNotExecute:Z

    return-void
.end method

.method public setPlayScore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->isPlayScore:Z

    return-void
.end method

.method public stepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->deduct:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    return-object v0
.end method
