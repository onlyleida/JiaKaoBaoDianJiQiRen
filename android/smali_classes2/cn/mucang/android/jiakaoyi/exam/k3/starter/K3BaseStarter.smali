.class public Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;",
        ">",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

.field private diaoTouStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

.field private hasInit:Z

.field private isPlayDingDong:Z

.field private isPlayJudgeVoice:Z

.field private isPlayingJudgeVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field private judgeVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field private qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

.field private tingCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

.field private zhixianStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V
    .locals 11
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

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V
    .locals 11
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

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V
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
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V

    .line 4
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isPlayingJudgeVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 5
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->judgeVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-void
.end method


# virtual methods
.method protected canPlayStartVoice(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->e:Z

    return p1
.end method

.method protected canStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->hasInit:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200263:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isPlayDingDong:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->hasInit:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    const-string p1, "\u8d85\u8f66\u9879\u76ee\u6b63\u5728\u8fdb\u884c,\u65e0\u6cd5\u5f00\u59cb\u5176\u4ed6\u9879\u76ee"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_2
    return v1

    .line 12
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->tingCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->tingCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    .line 14
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->tingCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    const-string p1, "\u9760\u8fb9\u505c\u8f66\u9879\u76ee\u6b63\u5728\u8fdb\u884c,\u65e0\u6cd5\u5f00\u59cb\u5176\u4ed6\u9879\u76ee"

    .line 15
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 16
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_5
    return v1

    .line 17
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    if-nez v0, :cond_7

    .line 18
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    .line 19
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->qiBuStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p4, :cond_8

    const-string p1, "\u8d77\u6b65\u9879\u76ee\u6b63\u5728\u8fdb\u884c,\u65e0\u6cd5\u5f00\u59cb\u5176\u4ed6\u9879\u76ee"

    .line 20
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 21
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_8
    return v1

    .line 22
    :cond_9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->diaoTouStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    if-nez v0, :cond_a

    .line 23
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->diaoTouStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    .line 24
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->diaoTouStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p4, :cond_b

    const-string p1, "\u6389\u5934\u9879\u76ee\u6b63\u5728\u8fdb\u884c,\u65e0\u6cd5\u5f00\u59cb\u5176\u4ed6\u9879\u76ee"

    .line 25
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 26
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_b
    return v1

    .line 27
    :cond_c
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->zhixianStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    if-nez v0, :cond_d

    .line 28
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->zhixianStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    .line 29
    :cond_d
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->zhixianStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 30
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BusStation:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_e

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_e

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_School:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_e

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_10

    :cond_e
    if-eqz p4, :cond_f

    const-string p1, "\u76f4\u7ebf\u884c\u9a76\u9879\u76ee\u6b63\u5728\u8fdb\u884c,\u65e0\u6cd5\u5f00\u59cb\u51cf\u901f\u7c7b\u9879\u76ee"

    .line 31
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 32
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_f
    return v1

    .line 33
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->canStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isPlayJudgeVoice:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isPlayingJudgeVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->judgeVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isPlayJudgeVoice:Z

    .line 4
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->judgeVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->judgeVoiceTips:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    sget-object p4, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    :cond_0
    return p1
.end method

.method protected playingStartVoiceAfter(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->playingStartVoiceAfter(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V

    .line 2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isPlayDingDong:Z

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/exam/R$raw;->dingdong:I

    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter$1;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;)V

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->c(ILcn/mucang/android/jiakaoyi/framework/h/b;)V

    :cond_0
    return-void
.end method
