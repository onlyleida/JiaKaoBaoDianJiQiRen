.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/b;
.implements Lcn/mucang/android/jiakaoyi/engine/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001c\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0012H\u0007J\u0008\u0010!\u001a\u00020\u0012H\u0007R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;",
        "()V",
        "resultObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepStartEvent;",
        "reverse",
        "",
        "stepObserver",
        "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;",
        "subStepObserver",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
        "traceTipObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/ErrorTipModel;",
        "trainLevelJob",
        "Lkotlinx/coroutines/Job;",
        "checkTrainLevel",
        "",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "onOneError",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "onResult",
        "result",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;",
        "onStep",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "stepResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;",
        "start",
        "stop",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;

.field private static b:Z

.field private static c:Lkotlinx/coroutines/t1;

.field private static final d:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/l;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->d:Landroidx/lifecycle/a0;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/k;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->e:Landroidx/lifecycle/a0;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/n;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->f:Landroidx/lifecycle/a0;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/m;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->g:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->RecommendedGuide:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->c:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;

    invoke-direct {v6, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->c:Lkotlinx/coroutines/t1;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/engine/trace/model/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->f(Lcn/mucang/android/jiakaoyi/engine/trace/model/a;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->h(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->j(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->k(Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/engine/trace/model/a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->l()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->f(I)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->w(I)V

    goto :goto_4

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->e()V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->c()Z

    move-result v0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->b()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->e(Z)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->e()Z

    move-result v0

    if-ne v0, v2, :cond_4

    :goto_3
    if-eqz v2, :cond_6

    return-void

    .line 9
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->m()V

    .line 10
    :goto_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->y(Lcn/mucang/android/jiakaoyi/engine/trace/model/a;Z)V

    return-void
.end method

.method public static final g()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->m()V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->o(Lcn/mucang/android/jiakaoyi/engine/f/b;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->n(Lcn/mucang/android/jiakaoyi/engine/f/a;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->h(Z)V

    .line 3
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->list:Ljava/util/Map;

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 6
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepPositionModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepPositionModel;-><init>()V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->c()V

    .line 8
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->K()V

    .line 9
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;-><init>()V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 10
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;-><init>()V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto/16 :goto_3

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->b:Z

    if-eqz v0, :cond_9

    .line 12
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p0

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;

    const-string v2, "step"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->h(Z)V

    const/4 v2, 0x2

    .line 16
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v2

    .line 17
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->r()Z

    move-result v3

    sput-boolean v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->b:Z

    .line 18
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    if-ne p0, v0, :cond_9

    .line 19
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;-><init>()V

    .line 20
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->type:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->typeList()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->list:Ljava/util/Map;

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->points:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_2

    .line 23
    :cond_1
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->j()Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_7

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v5, 0x1

    .line 25
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-gt v0, v7, :cond_4

    const/16 v8, 0x8

    if-gt v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    .line 26
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->points:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-lt v6, v4, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_0

    .line 27
    :cond_7
    :goto_2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 28
    iget-object p0, v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 29
    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz v0, :cond_9

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepPositionModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepPositionModel;-><init>()V

    .line 31
    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepPositionModel;->position:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 34
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepPositionModel;->angle:F

    .line 35
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-eqz p0, :cond_8

    const/16 p0, 0xb4

    int-to-float p0, p0

    add-float/2addr v1, p0

    .line 36
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepPositionModel;->angle:F

    .line 37
    :cond_8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public static final i()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->n()V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->v(Lcn/mucang/android/jiakaoyi/engine/f/b;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->u(Lcn/mucang/android/jiakaoyi/engine/f/a;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 1

    const-string v0, "it"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->c(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;)V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x12

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 1

    const-string v0, "deduct"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->p(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 2
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->b:Z

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->h(ZLcn/mucang/android/jiakaoyi/engine/model/a;)V

    const-string p1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u89e6\u53d1\u9519\u8bef\u4e2d\u65ad\u5f55\u5236"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->e(Z)V

    return-void
.end method

.method public onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    return-void
.end method
