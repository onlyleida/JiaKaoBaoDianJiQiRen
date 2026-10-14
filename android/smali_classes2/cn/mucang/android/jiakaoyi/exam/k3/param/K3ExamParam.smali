.class public Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;
.super Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/config/param/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/engine/config/param/a;"
    }
.end annotation


# instance fields
.field private isPlayTeachVoice:Z

.field private final needOrderExe:Z

.field private final onlyUseDistance:Z

.field public p200161:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p200185:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p200186:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p200257:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p200260:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public practiceModel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->needOrderExe:Z

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->onlyUseDistance:Z

    const-string v0, "K3TeachVoiceSwitch"

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->isPlayTeachVoice:Z

    return-void
.end method


# virtual methods
.method public canCheckGlobalEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200185:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200186:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableTeachVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->isPlayTeachVoice:Z

    return-void
.end method

.method public enableTwoChannel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200257:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->enableTwoChannel()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic fillGlobalConfig(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->fillGlobalConfig(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-result-object p1

    return-object p1
.end method

.method public fillGlobalConfig(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
    .locals 1

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200260:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200260:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200185:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200185:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200186:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200186:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200161:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200161:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200257:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200257:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->checkComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "K3ExamParam \u53c2\u6570\u5c5e\u6027\u521b\u5efa\u5f02\u5e38\u8bf7\u68c0\u67e5\u3002\u3002"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMisFireRpm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200260:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMisFireTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200185:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPassScore()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->p200161:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->getPassScore()I

    move-result v0

    return v0
.end method

.method public isPlayTeachVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->isPlayTeachVoice:Z

    return v0
.end method

.method public needOrderExe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->needOrderExe:Z

    return v0
.end method

.method public onlyUseDistance()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->onlyUseDistance:Z

    return v0
.end method
