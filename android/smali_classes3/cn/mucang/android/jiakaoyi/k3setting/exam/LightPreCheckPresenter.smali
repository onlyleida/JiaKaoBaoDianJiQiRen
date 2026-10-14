.class public final Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u00013BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020)H\u0002J\u0010\u0010-\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\u0006\u0010.\u001a\u00020)J\u0006\u0010/\u001a\u00020)J\u0008\u00100\u001a\u00020)H\u0002J\u0006\u00101\u001a\u00020)J\u0008\u00102\u001a\u00020)H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R&\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "isLightExam",
        "",
        "config",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
        "deducts",
        "",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
        "examCallback",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
        "callbackFinish",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "(Landroid/app/Activity;ZLcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "callback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "closeLightDialog",
        "Landroid/app/Dialog;",
        "getConfig",
        "()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
        "getDeducts",
        "()Ljava/util/Map;",
        "setDeducts",
        "(Ljava/util/Map;)V",
        "isDeduct102104",
        "isShowCloseLightDialog",
        "isShowLightSelectDialog",
        "lightSelectDialog",
        "needDoLight",
        "openEngineChecker",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;",
        "showCloseLightTime",
        "",
        "state",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;",
        "checkCloseLight",
        "",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "closeAllDialog",
        "closeLightDeduct",
        "pauseExam",
        "resumeExam",
        "showLightSelectDialog",
        "stopExam",
        "unListen",
        "State",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Z

.field private final c:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

.field private final f:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Landroid/app/Dialog;

.field private k:Landroid/app/Dialog;

.field private l:Z

.field private m:Z

.field private n:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

.field private final o:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

.field private final p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deducts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "examCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackFinish"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->a:Landroid/app/Activity;

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->b:Z

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->c:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->d:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->e:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->m:Z

    .line 9
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;->None:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->n:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    invoke-direct {p1, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->o:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/l0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/l0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 12
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;->ExamIng:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->n:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    .line 13
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->n:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;->ExamIng:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->b:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->k()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->k:Landroid/app/Dialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    return-void

    .line 5
    :cond_4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->m:Z

    if-eqz v0, :cond_9

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    return-void

    .line 8
    :cond_7
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->f()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->o:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightEngineOpenChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 11
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->o()V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->m:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->c:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v2, "config.p202101.value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->c:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v2, "config.p202139.value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->i:J

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->h:Z

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_exam_before_close_lights:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$a;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$a;-><init>()V

    .line 7
    invoke-static {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 8
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(R.string.k3set\u2026exam_before_close_lights)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget v4, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_continue_exam:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.k3setting_continue_exam)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcn/mucang/android/jiakaoyi/k3setting/exam/k0;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/k0;

    .line 11
    invoke-virtual {v2, v3, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->j:Landroid/app/Dialog;

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 13
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/h;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->i:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1770

    cmp-long p1, v2, v4

    if-lez p1, :cond_6

    .line 15
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->j:Landroid/app/Dialog;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-ne p1, v1, :cond_3

    :goto_1
    if-eqz v1, :cond_6

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->j:Landroid/app/Dialog;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    return-void
.end method

.method private final d()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->j:Landroid/app/Dialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->j:Landroid/app/Dialog;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->k:Landroid/app/Dialog;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    :goto_3
    return-void
.end method

.method private final e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->c:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v1, "config.p202101.value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->l:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/h;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->l:Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->d:Ljava/util/Map;

    const v0, 0x18ed8

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->e:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->l(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->m(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private final k()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->c:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v1, "config.p202140.value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->g:Z

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_is_start_light_simulate:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_start_light_simulate:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_do_not_light_simulate:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 9
    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/exam/i0;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;)V

    .line 10
    new-instance v9, Lcn/mucang/android/jiakaoyi/k3setting/exam/j0;

    invoke-direct {v9, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/j0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;)V

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v4, 0x0

    const-string v3, "getString(R.string.k3set\u2026_is_start_light_simulate)"

    .line 12
    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, v2

    .line 13
    invoke-direct/range {v3 .. v12}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 14
    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->k:Landroid/app/Dialog;

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->m:Z

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->m:Z

    return-void
.end method

.method private final o()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method


# virtual methods
.method public final f()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->c:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    return-object v0
.end method

.method public final n()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;->Stop:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->n:Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter$State;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->o()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;->d()V

    return-void
.end method
