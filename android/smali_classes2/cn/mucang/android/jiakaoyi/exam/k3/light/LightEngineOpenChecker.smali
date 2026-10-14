.class public Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private canPlayOpenEngineVoice:Z

.field private final config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private final deducts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private engineDialogStartTime:J

.field private engineHintDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

.field private final examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

.field private isDeduct102152:Z

.field private isDeduct102153:Z

.field private isShowEngineHintDialog:Z

.field private needCheckOpenEngine:Z

.field private playOpenEngineVoiceEndTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineDialogStartTime:J

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineHintDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->canPlayOpenEngineVoice:Z

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->playOpenEngineVoiceEndTime:J

    .line 6
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->needCheckOpenEngine:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isDeduct102152:Z

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isDeduct102153:Z

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isShowEngineHintDialog:Z

    .line 10
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 11
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->deducts:Ljava/util/Map;

    .line 12
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    return-void
.end method

.method private synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    sget v2, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_open_engine:I

    .line 3
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_continue_exam:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/e;

    invoke-direct {v8, p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/e;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, v1, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineHintDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->canPlayOpenEngineVoice:Z

    return p1
.end method

.method static synthetic access$100(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    return-object p0
.end method

.method static synthetic access$202(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->playOpenEngineVoiceEndTime:J

    return-wide p1
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/signal/c/e;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->needCheckOpenEngine:Z

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->check102152Deduct(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private check102152Deduct(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isDeduct102152:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isDeduct102152:Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->deducts:Ljava/util/Map;

    const v0, 0x18f08

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    :cond_0
    return-void
.end method

.method private check102153Deduct(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isDeduct102153:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isDeduct102153:Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->deducts:Ljava/util/Map;

    const v0, 0x18f09

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    :cond_0
    return-void
.end method

.method private checkOpenEngine(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->needCheckOpenEngine:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isShowEngineHintDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->isShowEngineHintDialog:Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineDialogStartTime:J

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/d;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/d;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->playOpenEngineVoice()V

    .line 8
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineDialogStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineDialogStartTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->needCheckOpenEngine:Z

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineHintDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 13
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->check102152Deduct(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineHintDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method

.method private playOpenEngineVoice()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->canPlayOpenEngineVoice:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->playOpenEngineVoiceEndTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->canPlayOpenEngineVoice:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 4
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->checkOpenEngine(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineDialogStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->engineHintDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->check102153Deduct(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic d(Lcn/mucang/android/jiakaoyi/signal/c/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Landroid/view/View;)V

    return-void
.end method
