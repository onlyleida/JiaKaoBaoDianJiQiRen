.class public Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;
    }
.end annotation


# instance fields
.field private final callback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field

.field private final deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private final engineOpenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

.field private final examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

.field private final handler:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

.field private hasPlayingStartVoice:Z

.field private index:I

.field private isPause:Z

.field private isPlayingStartVoice:Z

.field private isStartExam:Z

.field private final startVoiceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isStartExam:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPlayingStartVoice:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->hasPlayingStartVoice:Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/a;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->callback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->data:Ljava/util/List;

    .line 8
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 9
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    .line 10
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 11
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->deducts:Ljava/util/Map;

    if-eqz p6, :cond_0

    .line 12
    iget-object p6, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p6, p6, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    goto :goto_0

    .line 13
    :cond_0
    iget-object p6, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p6, p6, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    .line 14
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-direct {v1, p2, p4, p5, p6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->handler:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desc:"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model.name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeTag"

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v2, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    if-eqz v2, :cond_1

    const-string v2, ";lights:"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model.lights : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_1
    iget-object v2, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    if-eqz v2, :cond_2

    const-string v2, ";notAllowed:"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model.notAllowed : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v3, p6}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_4

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    const/4 p6, 0x1

    iput-boolean p6, p5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-le p5, p6, :cond_4

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    sub-int/2addr p5, p6

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    iput-boolean p6, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    .line 30
    :cond_4
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    invoke-direct {p1, p2, p4, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->engineOpenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    .line 31
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->startVoiceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;

    return-void
.end method

.method private synthetic a(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ed3\u675f\u6700\u540e\u4e00\u6761\u6307\u4ee4 \u7ed3\u675f\u706f\u5149\u8003\u8bd5 forceEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->stop()V

    return-void
.end method

.method private canContinue()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private finishLightExam(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    :goto_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/f;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/f;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;Z)V

    invoke-static {v2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public synthetic b(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->a(Z)V

    return-void
.end method

.method public checkSignal(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "checkSignal******************"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->data:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->startVoiceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->checkPlayingFinish()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->engineOpenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->startVoiceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->checkPlayingFinish()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 8
    :cond_4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isStartExam:Z

    if-nez v0, :cond_5

    return-void

    .line 9
    :cond_5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->index:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->data:Ljava/util/List;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->index:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLast()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isSpecialLight()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 15
    :cond_7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->handler:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->index:I

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLast()Z

    move-result v5

    int-to-long v6, v1

    const-wide/16 v10, 0x3e8

    mul-long v6, v6, v10

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    move-object v1, v2

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->handleTopic(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;IZJLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 17
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->canContinue()Z

    move-result p1

    if-nez p1, :cond_a

    .line 19
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLast()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isOffLight()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v9, 0x0

    :goto_1
    invoke-direct {p0, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->finishLightExam(Z)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->handler:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->reset()V

    return-void

    .line 21
    :cond_a
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->index:I

    add-int/2addr p1, v9

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->index:I

    .line 22
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    if-le p1, v2, :cond_c

    .line 23
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLast()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isOffLight()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v9, 0x0

    :goto_2
    invoke-direct {p0, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->finishLightExam(Z)V

    .line 24
    :cond_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->handler:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->reset()V

    :cond_d
    :goto_3
    return-void
.end method

.method public isPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isStartExam:Z

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "\u5f00\u59cb\u706f\u5149\u8003\u8bd5"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->index:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isStartExam:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->callback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isStartExam:Z

    if-eqz v0, :cond_1

    const-string v0, "\u7ed3\u675f\u706f\u5149\u8003\u8bd5"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    if-eqz v0, :cond_0

    const-string v0, "examCallback.onFinish()"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "TimeTag"

    .line 6
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->examCallback:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFinish()V

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isStartExam:Z

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->isPause:Z

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->callback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :cond_1
    return-void
.end method
