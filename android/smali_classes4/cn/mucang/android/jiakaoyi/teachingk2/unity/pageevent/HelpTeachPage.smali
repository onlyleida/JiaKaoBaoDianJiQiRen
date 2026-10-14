.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/a0;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;,
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001NB\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020\u00132\u0006\u00106\u001a\u000207H\u0016J\u0018\u00108\u001a\u00020\u00132\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J\u001a\u0010=\u001a\u00020\u00132\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<H\u0016J\u0012\u0010>\u001a\u0002042\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010?\u001a\u000204H\u0016J\u0008\u0010@\u001a\u000204H\u0016J\u0010\u0010A\u001a\u0002042\u0006\u0010B\u001a\u00020<H\u0016J\u0012\u0010C\u001a\u0002042\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010D\u001a\u000204H\u0002J\u001a\u0010E\u001a\u0002042\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<H\u0016J\u0008\u0010F\u001a\u000204H\u0016J\u0008\u0010G\u001a\u000204H\u0002J\u001a\u0010H\u001a\u0002042\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010I\u001a\u0002042\u0006\u0010J\u001a\u00020\u0013H\u0002J\u001a\u0010K\u001a\u0002042\u0006\u0010L\u001a\u00020)2\u0008\u0010M\u001a\u0004\u0018\u00010 H\u0016R\u0012\u0010\u0006\u001a\u00060\u0007R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n !*\u0004\u0018\u00010 0 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010.0-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u0002000\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0008\u0012\u0004\u0012\u0002020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotCallback;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "assistant",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;",
        "checkedBoundary",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "controller",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;",
        "getController",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;",
        "currentStep",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "drawHelper",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;",
        "enableShangPo",
        "",
        "engine",
        "Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;",
        "errObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistErrorInfo;",
        "errorCallback",
        "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;",
        "examEventCallback",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;",
        "examResultCallback",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;",
        "gpsDesc",
        "",
        "kotlin.jvm.PlatformType",
        "gpsPageUtil",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/GPSPageUtil;",
        "helper",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachOutputHelper;",
        "preChecker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachPreChecker;",
        "predictId",
        "",
        "shangPoStopPos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "stateCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
        "subStepObserver",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
        "traceTipObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/ErrorTipModel;",
        "calculateStopPos",
        "",
        "handleEvent",
        "event",
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
        "isResume",
        "ttd",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "isStop",
        "onDone",
        "onEnter",
        "onExit",
        "onSignalChanged",
        "signalGetter",
        "onWaitResume",
        "realStart",
        "resumeCar",
        "showLastTeach",
        "startEngine",
        "stopCar",
        "stopEngine",
        "needPause",
        "unitySetStatus",
        "state",
        "data",
        "HelpTeachAssistant",
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
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

.field private final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field private h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

.field private i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

.field private j:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private final k:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final l:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final m:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

.field private final p:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

.field private final r:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;",
            ">;"
        }
    .end annotation
.end field

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_signal_weak_stop_teach:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->b:Z

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$preChecker$1;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$preChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;-><init>(ZLkotlin/jvm/b/l;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$drawHelper$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$drawHelper$1;

    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$drawHelper$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$drawHelper$2;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;-><init>(ZZZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$b;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->k:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/f0;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/f0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->l:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d0;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->m:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/g0;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/g0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->n:Landroidx/lifecycle/a0;

    .line 12
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a0;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->o:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 13
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/i0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/i0;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->p:Landroidx/lifecycle/a0;

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-direct {v2, v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;-><init>(ZZ)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/h0;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/h0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->r:Landroidx/lifecycle/a0;

    const/4 v1, -0x1

    .line 16
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->s:I

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    if-nez v0, :cond_0

    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->c:I

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u8f85\u52a9\u9a7e\u9a76F4\u6d88\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 3
    :cond_1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_barrier_stop:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_barrier_stop)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_barrier_stop_desc:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.teachbase_barrier_stop_desc)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->E(Z)V

    .line 6
    :cond_3
    :goto_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 7
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_4
    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->j:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->j:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_out_proj:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.teachbase_out_proj)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->N(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final D()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    const-string v1, "get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->B(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->O(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->L(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->C(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->Q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->A(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->R(Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;)V

    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    :goto_0
    return-void
.end method

.method private final M()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->k:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->l:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 6
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->m:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 7
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    .line 8
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->o:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->k:Ljava/util/HashMap;

    const/4 v10, 0x5

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    :goto_0
    return-void
.end method

.method private final N()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->canStart()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->start()Z

    .line 3
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->D()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->q()V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachStart:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    .line 6
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;-><init>()V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v4

    :goto_2
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v4, v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;->setAllowPause(Z)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->data:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method private static final O(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initialed:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->M()V

    :cond_0
    return-void
.end method

.method private final P(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->b()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b()V

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/c;->l()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->D()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->r()V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->s:I

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->b(I)V

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method private static final Q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->j:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, p0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p0, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-lt p0, p1, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p0, v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-lt p0, p1, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final R(Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;)V
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

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->z()V

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    return-object p0
.end method

.method public static final synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-object p0
.end method

.method public static final synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    return-object p0
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    return-object p0
.end method

.method public static final synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    return-object p0
.end method

.method public static final synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method

.method public static final synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->M()V

    return-void
.end method

.method public static final synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-void
.end method

.method public static final synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->N()V

    return-void
.end method

.method public static final synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->P(Z)V

    return-void
.end method

.method private final z()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-eqz v1, :cond_3

    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2ShangPoCollision"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v2

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const/16 v5, 0xf

    int-to-double v5, v5

    add-double/2addr v3, v5

    .line 5
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    sub-double/2addr v5, v7

    .line 6
    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v9, 0x1e

    int-to-double v9, v9

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    const/4 v2, 0x2

    int-to-double v13, v2

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    invoke-static {v8, v7, v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v7

    .line 7
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    .line 8
    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 10
    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 11
    iget v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->s:I

    new-array v2, v2, [Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/16 v12, 0xa

    int-to-double v12, v12

    sub-double/2addr v10, v12

    iget-wide v14, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v14, v12

    invoke-direct {v3, v10, v11, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v3, v2, v7

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v10, v12

    iget-wide v14, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v14, v12

    invoke-direct {v3, v10, v11, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v3, v2, v4

    .line 13
    invoke-static {v2}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0xf

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xd02

    const/16 v22, 0x0

    const-string v13, "#FF0000"

    const-string v18, "\u6cd5\u7ebf"

    .line 14
    invoke-static/range {v8 .. v22}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->s:I

    .line 15
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 16
    invoke-interface {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    const-string v3, "converter.gaussToGps(pos)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v8, v9, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->i(DD)[D

    move-result-object v2

    .line 18
    aget-wide v7, v2, v7

    iput-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 19
    aget-wide v3, v2, v4

    iput-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 20
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    .line 22
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0a\u5761\u505c\u8f66\u70b9:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 23
    :cond_3
    :goto_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->GpsError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->NetError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->ServerError:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    if-ne p1, v0, :cond_3

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->g:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-eqz p1, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_weak:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.teachbase_gps_weak)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->a:Ljava/lang/String;

    const-string v3, "gpsDesc"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->O()V

    :cond_3
    return v1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u8bf7\u6c42\u5239\u8f66:"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    :goto_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->HandBrake:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-eq p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->O()V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachPause:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result p2

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/unity/c/d;->f(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->k()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 0

    const-string p1, "signal"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7b49\u5f85\u89e3\u5239:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    :goto_0
    move-object v0, p1

    const/4 v1, 0x0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6559\u5b66\u70b9\u89e6\u53d1\u5b8c\u6210:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->j(I)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->b:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->g()V

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->g0()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->n()V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->D()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->n(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->d()V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :goto_0
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->r:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    return-void
.end method

.method public i(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->D()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_state_disable_tip:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->H()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->O()V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_user_stop:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.teachbase_user_stop)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->N(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 1

    const-string v0, "ttd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "signal"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u8bf7\u6c42\u89e3\u9664\u5239\u8f66:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->d()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->H()V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->j(I)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->b:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->h()V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->F()V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Z()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->p()V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->D()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->n(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e()V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->q(II)V

    .line 10
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->P(Z)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    .line 12
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e0;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v3, v4}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->f()V

    .line 15
    :goto_0
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    .line 16
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->r:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 18
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->E(Z)V

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->D()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gear_n:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_gear_n)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->N(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
