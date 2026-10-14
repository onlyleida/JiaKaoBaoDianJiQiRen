.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;
    }
.end annotation

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
.field protected hasPlaying:Z

.field private hasReachCondition:Z

.field private final isFilterRepeat:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field private isPlayDingDong:Z

.field private final isPlayStartVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field protected final judgeDistance:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field protected final judgeTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field protected final pos:Landroid/location/Location;

.field private final positionHelper:Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

.field private reachDistance:Z

.field private startToWaitDistance:Z

.field private startVoice:Ljava/lang/String;

.field protected final startVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field private targetDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            "Landroid/location/Location;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            "Landroid/location/Location;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->hasReachCondition:Z

    const/high16 p2, -0x40800000    # -1.0f

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->targetDistance:F

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startToWaitDistance:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->reachDistance:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->isPlayDingDong:Z

    .line 8
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->pos:Landroid/location/Location;

    .line 9
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->judgeTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    .line 10
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->judgeDistance:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 11
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 12
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->hasPlaying:Z

    .line 13
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->isPlayStartVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 14
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->isFilterRepeat:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 15
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->b()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->a()I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p1, p2, p4, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;-><init>(FFLandroid/location/Location;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->positionHelper:Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    .line 16
    iget-object p1, p6, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoice:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canPlayStartVoice(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected canStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getStartVoiceTips(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;
    .locals 3

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 2
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->l:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p2, v2, :cond_2

    .line 8
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 9
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->routeName:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, ""

    :cond_1
    const-string p2, "*"

    .line 11
    invoke-virtual {v1, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;

    invoke-direct {p1, p3, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 1
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v10

    .line 3
    :cond_0
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->p:Z

    if-nez v0, :cond_1

    return v10

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->canStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->reachStartPos(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v11, 0x1

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->isPlayTeachVoice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v11, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->hasPlaying:Z

    .line 9
    :cond_2
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->hasPlaying:Z

    const/4 v12, 0x0

    if-nez v0, :cond_a

    .line 10
    iput-boolean v11, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->hasPlaying:Z

    .line 11
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v0, :cond_5

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    const-string v2, ","

    if-eqz v1, :cond_3

    const-string v1, "loc("

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_3
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    if-eqz v1, :cond_4

    const-string v1, ",brake("

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "),"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->c:D

    .line 22
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 23
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, ""

    .line 30
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ; forceTrigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ; route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; estimateTotalDistance "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v6, v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->canPlayStartVoice(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->isPlayStartVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    :cond_6
    invoke-virtual {v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->getStartVoiceTips(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;

    move-result-object v13

    .line 35
    iget-object v14, v13, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;->c:Ljava/lang/String;

    iput-object v14, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoice:Ljava/lang/String;

    .line 36
    sget-object v15, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v10, v5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V

    iget v0, v13, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;->a:I

    iget-object v1, v13, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;->b:Ljava/lang/String;

    invoke-static {v14, v15, v10, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 37
    :cond_7
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->judgeDistance:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    .line 38
    :goto_1
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->None:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v1, v2, :cond_a

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->judgeTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    cmpl-float v0, v0, v12

    if-lez v0, :cond_a

    .line 39
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->Ready:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    const/4 v0, 0x0

    .line 40
    invoke-virtual {v7, v8, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    .line 41
    :cond_a
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startToWaitDistance:Z

    if-nez v0, :cond_d

    .line 42
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->judgeTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    if-nez v0, :cond_b

    .line 43
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoice:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 44
    iput-boolean v11, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startToWaitDistance:Z

    goto :goto_2

    .line 45
    :cond_b
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_c

    .line 46
    iput-boolean v11, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startToWaitDistance:Z

    goto :goto_2

    .line 47
    :cond_c
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startVoice:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 48
    iput-boolean v11, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startToWaitDistance:Z

    .line 49
    :cond_d
    :goto_2
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startToWaitDistance:Z

    if-eqz v0, :cond_f

    if-eqz v9, :cond_f

    .line 50
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_e

    .line 51
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return v11

    .line 52
    :cond_f
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->startToWaitDistance:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->reachDistance:Z

    if-nez v0, :cond_13

    .line 53
    iget v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->targetDistance:F

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_11

    .line 54
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->judgeDistance:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v12, v0

    .line 55
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    add-float/2addr v0, v12

    iput v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->targetDistance:F

    .line 56
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v1, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->targetDistance:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    const/4 v10, 0x1

    goto :goto_4

    :cond_12
    const/4 v10, 0x0

    :goto_4
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->reachDistance:Z

    .line 57
    :cond_13
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->reachDistance:Z

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public needRepeatHandle()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->isFilterRepeat:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public needToCheck()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->pos:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected playingStartVoiceAfter(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V
    .locals 0

    return-void
.end method

.method protected reachStartPos(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 1

    const/4 p3, 0x1

    if-eqz p4, :cond_0

    return p3

    .line 1
    :cond_0
    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->hasReachCondition:Z

    if-eqz p4, :cond_1

    return p3

    .line 2
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object p4

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    instance-of p4, p2, Lcn/mucang/android/jiakaoyi/engine/config/param/a;

    if-eqz p4, :cond_2

    .line 3
    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/config/param/a;

    .line 4
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/engine/config/param/a;->onlyUseDistance()Z

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->positionHelper:Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    invoke-virtual {p4, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->hasReachCondition:Z

    return p3

    :cond_3
    return v0
.end method
