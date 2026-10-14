.class public final Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u001f\u001a\u00020\u0011J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0006\u0010#\u001a\u00020!J\u0006\u0010$\u001a\u00020!J\u0018\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00110\u001cj\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0011`\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/AutoStartTingCheChecker;",
        "",
        "k3EngineManager",
        "Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;",
        "config",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        "examDistanceGetter",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;",
        "",
        "(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;)V",
        "callback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "getConfig",
        "()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        "getExamDistanceGetter",
        "()Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;",
        "isCanStartTingChe",
        "",
        "()Z",
        "setCanStartTingChe",
        "(Z)V",
        "isStartTingCheRunnable",
        "getK3EngineManager",
        "()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;",
        "reachStartDistance",
        "startTingCheRunnable",
        "Ljava/lang/Runnable;",
        "tineCheStepMap",
        "Ljava/util/HashMap;",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "Lkotlin/collections/HashMap;",
        "canStartTingChe",
        "dialogStartTingche",
        "",
        "tingCheStart",
        "start",
        "stop",
        "updateEndStep",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "stepResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;",
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
.field private final a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

.field private final b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

.field private final c:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private final g:Ljava/lang/Runnable;

.field private final h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/framework/h/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "k3EngineManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "examDistanceGetter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->c:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->g:Ljava/lang/Runnable;

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->e:Z

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v4, "config.p216136.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->e()Lcn/mucang/android/jiakaoyi/framework/h/c;

    move-result-object v3

    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "examDistanceGetter.get()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fbe\u5230\u91cc\u7a0b\u64ad\u9760\u8fb9\u505c\u8f66 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->e()Lcn/mucang/android/jiakaoyi/framework/h/c;

    move-result-object v4

    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; p216136 value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->e:Z

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 7
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->b(Z)V

    goto :goto_3

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_6

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/c;->u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    :goto_2
    const-wide/16 v3, 0x1f4

    .line 10
    :cond_5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f:Z

    .line 11
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/r/a;

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->g:Ljava/lang/Runnable;

    .line 14
    invoke-direct {v2, v5, v6}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 15
    invoke-static {v2, v3, v4}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 16
    :cond_6
    :goto_3
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->e:Z

    if-eqz v2, :cond_e

    if-nez p1, :cond_e

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 p1, 0x0

    goto :goto_4

    :cond_8
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_e

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    const/4 v2, 0x3

    if-nez p1, :cond_9

    goto :goto_5

    .line 20
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 22
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f:Z

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->g:Ljava/lang/Runnable;

    .line 24
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    .line 25
    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_7

    :cond_a
    :goto_5
    const/4 v2, 0x4

    if-nez p1, :cond_b

    goto :goto_6

    .line 26
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 27
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->j(Z)V

    goto :goto_7

    :cond_c
    :goto_6
    if-nez p1, :cond_d

    goto :goto_7

    .line 28
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 29
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f:Z

    .line 30
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->b(Z)V

    :cond_e
    :goto_7
    return-void
.end method

.method private final b(Z)V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_tingche_hint_msg:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->engine_tingche:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 4
    new-instance v9, Lcn/mucang/android/jiakaoyi/k3setting/exam/a;

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v9, v3, v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/a;-><init>(ZLcn/mucang/android/jiakaoyi/k3setting/exam/y0;)V

    .line 5
    new-instance v15, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const-string v3, "getString(R.string.k3setting_tingche_hint_msg)"

    .line 6
    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0xcd

    const/4 v14, 0x0

    move-object v3, v15

    .line 7
    invoke-direct/range {v3 .. v14}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    invoke-direct {v0, v1, v15}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final c(ZLcn/mucang/android/jiakaoyi/k3setting/exam/y0;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/c;->u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    :goto_0
    const-wide/16 v0, 0x1f4

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    const/4 p0, 0x1

    .line 2
    iput-boolean p0, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f:Z

    .line 3
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/r/a;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p2

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->g:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0, p2, p1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 7
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic g(ZLcn/mucang/android/jiakaoyi/k3setting/exam/y0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->c(ZLcn/mucang/android/jiakaoyi/k3setting/exam/y0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->l(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->f()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->exeThisStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method


# virtual methods
.method public final d()Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    return-object v0
.end method

.method public final e()Lcn/mucang/android/jiakaoyi/framework/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->c:Lcn/mucang/android/jiakaoyi/framework/h/c;

    return-object v0
.end method

.method public final f()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    return-object v0
.end method

.method public final j(Z)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216155:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v1, "config.p216155.value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, ","

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    check-cast v0, [Ljava/lang/String;

    .line 6
    array-length v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 7
    array-length v2, v0

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 9
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "216155\u914d\u7f6e\u6709\u95ee\u9898"

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 13
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 1

    const-string v0, "stepHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->d:Ljava/util/HashMap;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const-string v0, "stepHandler.examStep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
