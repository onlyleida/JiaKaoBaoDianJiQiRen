.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010$\u001a\u00020\u0006J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0014H\u0002J\u000e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u001cH\u0002J\u0010\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020.H\u0002J\u0006\u0010/\u001a\u00020\u0006J\u0010\u00100\u001a\u00020\u00062\u0008\u00101\u001a\u0004\u0018\u000102J\u0006\u00103\u001a\u00020\u0006J\u0008\u00104\u001a\u00020\u0006H\u0002J\u0006\u00105\u001a\u00020\u0006J\u000e\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u000208R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;",
        "",
        "routeManager",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;",
        "onEnd",
        "Lkotlin/Function0;",
        "",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;Lkotlin/jvm/functions/Function0;)V",
        "dialog",
        "Landroid/app/Dialog;",
        "getDialog",
        "()Landroid/app/Dialog;",
        "setDialog",
        "(Landroid/app/Dialog;)V",
        "engine",
        "Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;",
        "errorCallback",
        "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;",
        "errorObserver",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseError;",
        "examEventCallback",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;",
        "examResultCallback",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;",
        "helper",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachOutputHelper;",
        "modelObserver",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseState;",
        "getOnEnd",
        "()Lkotlin/jvm/functions/Function0;",
        "stateCallback",
        "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
        "stepObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;",
        "exit",
        "handleError",
        "it",
        "handleEvent",
        "",
        "event",
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
        "handleMode",
        "play",
        "voice",
        "",
        "realStart",
        "sendPath",
        "boundDetector",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "showLastTeach",
        "startEngine",
        "stop",
        "unitySetStatus",
        "state",
        "",
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


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

.field private final b:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

.field private d:Landroid/app/Dialog;

.field private final e:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final f:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final g:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

.field private final i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

.field private final j:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lkotlin/jvm/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "routeManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEnd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->b:Lkotlin/jvm/b/a;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$b;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->e:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/g;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->f:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/j;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/q;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->h:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;-><init>(ZZILkotlin/jvm/internal/o;)V

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$helper$1$1;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$helper$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->h(Lkotlin/jvm/b/a;)V

    .line 8
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->j:Landroidx/lifecycle/a0;

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/i;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/o;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->V(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V

    return-void
.end method

.method public static synthetic B(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->R(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->b0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic D(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->l(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->i(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->n(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V

    return-void
.end method

.method private final M(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    return-void
.end method

.method private static final P(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;

    invoke-direct {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->h(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final Q(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;

    invoke-direct {v0, p3, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/k;-><init>(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final R(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_send_route_data_fail:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->X()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 4
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_lead_to_step:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(R.string.teachbase_lead_to_step)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->M(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void
.end method

.method private final U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->canStart()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->start()Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final V(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->U()V

    :goto_1
    return-void
.end method

.method private static final W(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->d()Lkotlin/jvm/b/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->b:Z

    const-string v3, "java.lang.String.format(format, *args)"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_arrived_step_area:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(R.string.teachbase_arrived_step_area)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v2, [Ljava/lang/Object;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    :goto_1
    aput-object v4, v5, v1

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->M(Ljava/lang/String;)V

    goto :goto_4

    .line 4
    :cond_4
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    iget v5, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->f(I)I

    move-result v0

    const/4 v5, -0x1

    if-le v0, v5, :cond_7

    .line 6
    sget-object v5, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_finish_step_next_teach:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.teach\u2026e_finish_step_next_teach)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, v4

    goto :goto_2

    :cond_5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    :goto_2
    aput-object p1, v7, v1

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    :goto_3
    aput-object v4, v7, v2

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->M(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private static final Z(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->X()V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    return-object p0
.end method

.method private static final a0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachPause:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_0
    return-void
.end method

.method private static final b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    return-void
.end method

.method private static final b0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachResume:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_0
    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    :goto_0
    return-void
.end method

.method private final h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u5f02\u5e38\u4e0a\u62a5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/r;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/r;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6267\u884c\u5f02\u5e38\u4e0a\u62a5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v3, 0xff0c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->Normal:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-ne v2, v3, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    goto/16 :goto_a

    .line 4
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->DriveEnd:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->GPSRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-eq v2, v3, :cond_15

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->RadarBrakeRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-ne v2, v3, :cond_3

    goto/16 :goto_b

    .line 6
    :cond_3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 7
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_a

    .line 8
    :cond_4
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->RadarBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    const-string v6, "getString(R.string.teachbase_teach_pause_error)"

    const-string v7, ""

    const-string v8, "java.lang.String.format(format, *args)"

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-ne v3, v5, :cond_7

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v3

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v3, v5, :cond_6

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move-object v7, v3

    goto :goto_0

    .line 11
    :cond_6
    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_pause_error:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_0
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_obstacle_brake_wait_continue_teach:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(R.string.teach\u2026rake_wait_continue_teach)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_stop:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/n;

    goto :goto_1

    .line 15
    :cond_7
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->GPS:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-ne v3, v5, :cond_8

    .line 16
    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_pause_error:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_weak_pause_teach:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(R.string.teachbase_gps_weak_pause_teach)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_stop:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/m;

    :goto_1
    move-object v13, v3

    move-object v14, v5

    move-object v15, v6

    move-object v12, v7

    goto :goto_2

    :cond_8
    move-object v13, v7

    move-object v12, v9

    move-object v14, v12

    move-object v15, v14

    .line 20
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g()Landroid/app/Dialog;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_14

    .line 21
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g()Landroid/app/Dialog;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 22
    :goto_4
    invoke-static {v12}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 23
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v13, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 24
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    goto/16 :goto_8

    .line 25
    :cond_d
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    .line 26
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->OtherBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-ne v3, v6, :cond_e

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v3

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v3, v6, :cond_e

    .line 27
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getCode()I

    move-result v3

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    .line 29
    :goto_5
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->P0Error:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-ne v0, v6, :cond_11

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    move-result-object v6

    if-nez v6, :cond_f

    move-object v6, v9

    goto :goto_6

    :cond_f
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-static {v6}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 30
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v9

    :goto_7
    move-object v5, v9

    .line 31
    :cond_11
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_stop_out:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 32
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/e;

    sget-object v6, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_auto_teach_end:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.teachbase_auto_teach_end)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_auto_teach_end_tip:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.teachbase_auto_teach_end_tip)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    :goto_8
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->S(Landroid/app/Dialog;)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/p;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_14
    :goto_a
    return-void

    .line 36
    :cond_15
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_c

    :cond_16
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 37
    :goto_c
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private static final j(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final k(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->S(Landroid/app/Dialog;)V

    return-void
.end method

.method private final n(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->desc:Ljava/lang/String;

    const-string v1, "\u6536\u5230\u72b6\u6001\u4e0a\u62a5:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->e()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_sending_route_data:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/a;

    invoke-direct {v2, p1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/a;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->X()V

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->N()V

    :goto_1
    return-void
.end method

.method private static final o(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/t;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->h(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b;

    invoke-direct {v0, p2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b;-><init>(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final q(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->t()V

    goto :goto_0

    .line 3
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_send_route_data_fail:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->X()V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void
.end method

.method public static synthetic r(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->o(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic s(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->q(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->W(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->Q(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->P(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->Z(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->L(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V

    return-void
.end method


# virtual methods
.method public final N()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachResume:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez v0, :cond_3

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const-wide/16 v1, 0x0

    .line 5
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->e:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->f:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 9
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    .line 10
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->h:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->k:Ljava/util/HashMap;

    const/4 v10, 0x5

    move-object v1, v0

    .line 13
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    .line 15
    :goto_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachStart:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 16
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->AutoTeachStart:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->g(I)V

    return-void
.end method

.method public final O(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "\u53d1\u9001\u5f00\u59cb\u8def\u7ebf,\u5bfc\u822a\u8def\u7ebf\u751f\u6210\u7684\u793a\u6559\u51c6\u5907\u533a"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u5f00\u59cb\u8def\u7ebf,\u9879\u76ee\u7684\u793a\u6559\u51c6\u5907\u533a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",\u539f\u59cb\u6570\u636e\u957f\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-static {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->e(Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "\u8def\u7ebf\u6570\u636e\u4e3a\u7a7a"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->X()V

    return-void

    .line 10
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "getCurrentActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 11
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_sending_route_data:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 12
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/e;

    invoke-direct {v3, v0, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/e;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 15
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->j:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final S(Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->d:Landroid/app/Dialog;

    return-void
.end method

.method public final T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->k()V

    return-void
.end method

.method public final X()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->b:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->b()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    .line 6
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->AutoTeachEnd:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->g(I)V

    :cond_3
    return-void
.end method

.method public final Y(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unity \u8bbe\u7f6e\u72b6\u6001:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    move-result-object p1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachPause:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    if-ne p1, v0, :cond_1

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_pause:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.teachbase_teach_pause)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->M(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Pause:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/s;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachResume:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    if-ne p1, v0, :cond_2

    .line 9
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_resume:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.teachbase_teach_resume)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->M(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Resume:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 6
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    .line 7
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/h;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final g()Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method public final m(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->d:Landroid/app/Dialog;

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method
