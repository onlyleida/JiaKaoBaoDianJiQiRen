.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;
.implements Lcn/mucang/jiakaoyi/uilib/deduct/x;
.implements Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$a;
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;",
        "Lcn/mucang/jiakaoyi/uilib/deduct/x;",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$a;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u0001$\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u0002032\u0006\u00105\u001a\u000206H\u0002J\u0012\u00107\u001a\u0002032\u0008\u00108\u001a\u0004\u0018\u00010\u0006H\u0016J\u0006\u00109\u001a\u000203J\u000e\u0010:\u001a\u0002032\u0006\u0010;\u001a\u00020\u000cJ\u0010\u0010<\u001a\u0002032\u0006\u00105\u001a\u000206H\u0016J\u0008\u0010=\u001a\u000203H\u0016J\u000e\u0010>\u001a\u0008\u0012\u0004\u0012\u0002060?H\u0016J\u0008\u0010@\u001a\u00020 H\u0016J\u0008\u0010A\u001a\u00020BH\u0016J\u0008\u0010C\u001a\u00020DH\u0002J\u0008\u0010E\u001a\u00020FH\u0016J\u0008\u0010G\u001a\u00020 H\u0016J\u0010\u0010H\u001a\u00020 2\u0006\u0010I\u001a\u00020JH\u0002J\u0016\u0010K\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020L0?\u0018\u00010\u0012H\u0016J\u0008\u0010M\u001a\u00020NH\u0016J\u0006\u0010O\u001a\u000203J\u0008\u0010P\u001a\u00020\u0013H\u0016J\u0008\u0010Q\u001a\u000203H\u0016J\u0008\u0010R\u001a\u000203H\u0016J\u0010\u0010S\u001a\u0002032\u0006\u0010T\u001a\u00020UH\u0016J\u0008\u0010V\u001a\u000203H\u0016J\u0010\u0010W\u001a\u0002032\u0006\u00105\u001a\u000206H\u0016J\u001a\u0010X\u001a\u0002032\u0006\u0010Y\u001a\u00020Z2\u0008\u0010[\u001a\u0004\u0018\u00010\\H\u0016J \u0010]\u001a\u0002032\u0006\u0010^\u001a\u00020 2\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020JH\u0016J\u0010\u0010b\u001a\u0002032\u0006\u0010T\u001a\u00020UH\u0002J\u0008\u0010c\u001a\u000203H\u0016J\u0008\u0010d\u001a\u000203H\u0002J\u0008\u0010e\u001a\u000203H\u0002J\u0006\u0010f\u001a\u000203J\u0006\u0010g\u001a\u000203J\u0006\u0010h\u001a\u000203J\u0008\u0010i\u001a\u000203H\u0016J\u000e\u0010j\u001a\u0002032\u0006\u0010k\u001a\u00020\u000eR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00130\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0008\u0012\u0004\u0012\u00020!0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006l"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;",
        "Lcn/mucang/jiakaoyi/uilib/deduct/BaseDeductPresenter;",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$ExamLogicCallback;",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;",
        "()V",
        "commonLogic",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic;",
        "configStepList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;",
        "currentConfig",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;",
        "deductIsOver",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;",
        "",
        "kotlin.jvm.PlatformType",
        "dialog",
        "Landroid/app/Dialog;",
        "dialogLogic",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamDialogLogic;",
        "engineCtrl",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;",
        "globalConfig",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        "inPage",
        "lightDeductConfig",
        "",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
        "lightError",
        "lightExamCallback",
        "cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$lightExamCallback$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$lightExamCallback$1;",
        "lightExamPresenter",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/LightExamPresenter;",
        "lightStepConfig",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
        "manualDeduct",
        "previewFragment",
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/PreviewFragment;",
        "routeStepList",
        "traffic",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/TrafficBrakeManager;",
        "updater",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/K3ExamDataUpdater;",
        "afterStartVoicePlayed",
        "",
        "callUnityDeduct",
        "deductInfo",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "callback",
        "data",
        "clickDetail",
        "clickStep",
        "model",
        "delete",
        "doLightExam",
        "getData",
        "",
        "getEngineType",
        "getExamTime",
        "",
        "getFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "getLightExamCallback",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
        "getScore",
        "getState",
        "state",
        "Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;",
        "getStepGetter",
        "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;",
        "getStudentName",
        "",
        "hpPreview",
        "isPractice",
        "onEngineInitialed",
        "onEnter",
        "onExamResult",
        "examResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;",
        "onExit",
        "onOneError",
        "onStep",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "stepResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;",
        "onStepChanged",
        "routeId",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "stepStatus",
        "renderExamResult",
        "resumeShangCheStep",
        "sendConfigStepData",
        "sendRouteStepData",
        "showManualDeduct",
        "start",
        "stop",
        "stopExamByRule",
        "updateConfigData",
        "config",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

.field private f:Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;

.field private g:Z

.field private h:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/app/Dialog;

.field private l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

.field private m:Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;

.field private final n:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

.field private final o:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;

.field private final q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

.field private final r:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;

.field private final s:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->d:Ljava/util/List;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$updater$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$updater$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;-><init>(Lkotlin/jvm/b/a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->o:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;-><init>()V

    const-string v1, "RealTimeReportError"

    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->reportError:Z

    const-string v1, "AutoStartNextStep"

    .line 11
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->autoPlay:Z

    const-string v1, "HaveShangCheStep"

    .line 12
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->ready:Z

    const-string v1, "HaveLightSimulateStep"

    .line 13
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->light:Z

    .line 14
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 15
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->r:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->s:Lcn/mucang/android/jiakaoyi/framework/h/c;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final B()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MucangConfig.getCurrentA\u2026y).supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final C(Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)I
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->A(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->G(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/engine/c;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    :goto_0
    return-void
.end method

.method private final H(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->g()V

    const/16 v0, 0x32d0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->b(I)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;->start:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->g:Z

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->u(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    .line 7
    :goto_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;-><init>()V

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->d()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    iget-boolean v6, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->h(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;IZ)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->k:Landroid/app/Dialog;

    return-void
.end method

.method private final I()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->createSteps()Ljava/util/List;

    move-result-object v0

    const-string v1, "steps"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 6
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->d:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 9
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 10
    iget v4, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    .line 11
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 12
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Wait:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->state:I

    iput v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    .line 13
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/16 v0, 0x32cb

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->d:Ljava/util/List;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;->itemList:Ljava/util/List;

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->c(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method private final J()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->b()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 5
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStepId()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 7
    iget v5, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    .line 8
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v2, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Wait:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->state:I

    iput v2, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    .line 10
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getId()I

    move-result v1

    iput v1, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->id:I

    .line 11
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 12
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 14
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    .line 15
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 16
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Wait:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->state:I

    iput v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    const/4 v3, -0x2

    .line 17
    iput v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->id:I

    .line 18
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    const/4 v3, 0x0

    .line 19
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->light:Z

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 22
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    .line 23
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 24
    iget v4, v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->state:I

    iput v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    const/4 v4, -0x3

    .line 25
    iput v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->id:I

    .line 26
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->ready:Z

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 29
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    .line 30
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 31
    iget v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->state:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    const/4 v2, -0x4

    .line 32
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->id:I

    .line 33
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    :cond_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;->itemList:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method public static final synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->w(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    return-object p0
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    return-object p0
.end method

.method public static final synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->j:Z

    return p0
.end method

.method public static final synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    return-object p0
.end method

.method public static final synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->j:Z

    return-void
.end method

.method private final w(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->desc:Ljava/lang/String;

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->code:I

    .line 3
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->step:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->score:I

    .line 5
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->time:J

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->d:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    if-eqz v0, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->d:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hasData:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->p:Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->B()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->p:Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/u;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->j()I

    .line 5
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/c1$a;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->B()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->b()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "ThisIsCommonRouteId"

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->createCommonRoute(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v2

    :cond_3
    const-string v3, "LocalRouteUtil.getRoute(\u2026Consts.CommonExamRouteId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->d:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/exam/c1$a;->a(Landroidx/fragment/app/FragmentManager;Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)Lcn/mucang/android/jiakaoyi/k3setting/exam/c1;

    :cond_4
    :goto_0
    return-void
.end method

.method public final K()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->B()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 3
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    :goto_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->o:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1;->F(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public final L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->v()V

    :goto_0
    return-void
.end method

.method public final M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->A()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->m:Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->c()V

    :goto_1
    return-void
.end method

.method public final N(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->reportError:Z

    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->reportError:Z

    if-eq v1, v2, :cond_2

    .line 2
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->reportError:Z

    .line 3
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->reportError:Z

    const-string v1, "RealTimeReportError"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->reportError:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/c;->r(Z)V

    .line 5
    :goto_0
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->reportError:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->autoPlay:Z

    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->autoPlay:Z

    if-eq v1, v2, :cond_5

    .line 8
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->autoPlay:Z

    .line 9
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->autoPlay:Z

    const-string v1, "AutoStartNextStep"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->autoPlay:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/c;->q(Z)V

    .line 11
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->ready:Z

    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->ready:Z

    if-eq v1, v2, :cond_6

    .line 12
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->ready:Z

    .line 13
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->ready:Z

    const-string v1, "HaveShangCheStep"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->J()V

    .line 15
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->light:Z

    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->light:Z

    if-eq v1, v2, :cond_7

    .line 16
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->light:Z

    .line 17
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->light:Z

    const-string v0, "HaveLightSimulateStep"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->J()V

    :cond_7
    return-void
.end method

.method public a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 3

    const-string v0, "deductInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;-><init>()V

    .line 3
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->desc:Ljava/lang/String;

    .line 4
    iget v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->code:I

    .line 5
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->step:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->score:I

    .line 7
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->time:J

    const/16 p1, 0x32cd

    .line 8
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->c(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_2

    .line 3
    :cond_2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    :goto_2
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    if-eqz v3, :cond_3

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->h:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    if-nez v0, :cond_4

    goto :goto_4

    .line 4
    :cond_4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    :goto_4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->i:Ljava/util/Map;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    return-void
.end method

.method public c()Lcn/mucang/android/jiakaoyi/framework/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->x(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method public d()V
    .locals 11

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->allTopics:Ljava/util/List;

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c()Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->h:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 6
    invoke-static {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->createLightData(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;)Ljava/util/List;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->h:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_4

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroidx/appcompat/app/d;

    .line 10
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->h:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 11
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->i:Ljava/util/Map;

    .line 12
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->r:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;

    .line 13
    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->s:Lcn/mucang/android/jiakaoyi/framework/h/c;

    const/4 v10, 0x0

    move-object v3, v1

    move-object v5, v0

    .line 14
    invoke-direct/range {v3 .. v10}, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;-><init>(Landroidx/fragment/app/d;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->m:Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;

    if-nez v1, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->b()V

    goto :goto_2

    .line 16
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->B()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->h:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 17
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->i:Ljava/util/Map;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->r:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->s:Lcn/mucang/android/jiakaoyi/framework/h/c;

    const/4 v9, 0x0

    move-object v4, v0

    .line 18
    invoke-static/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->E(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V

    :goto_2
    return-void
.end method

.method public e()Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->r:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->timeNum:J

    return-wide v0
.end method

.method public g()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->g:Z

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->i(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->posMapCode:Ljava/lang/String;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$2;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;-><init>(Landroidx/appcompat/app/d;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->f:Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->g()V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->J()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->I()V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->b()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;->curRoute:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->f:Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 12
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;->k()Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 13
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;->j()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 14
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->c(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->p()V

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEngineType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

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
    if-eqz v1, :cond_4

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->e0()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->start()Z

    .line 4
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->f()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->z()V

    :cond_4
    :goto_2
    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->M()V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    return v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->f:Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;->x()V

    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->k:Landroid/app/Dialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->g:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->q()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->p:Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->B()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    invoke-virtual {v1}, Landroidx/fragment/app/u;->j()I

    .line 6
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->f:Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;->k()Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 8
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;->j()Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;->e()V

    .line 10
    :goto_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->p(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->e()V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->n:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->q()V

    return-void
.end method

.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    const-string v0, "deductInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->h(I)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->w(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    return-void
.end method

.method public onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 3

    const-string v0, "stepHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    const-string v2, "stepHandler.status"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->e(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->f:Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;->w(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->s(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    :goto_1
    return-void
.end method

.method public onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V
    .locals 3

    const-string v0, "step"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepStatus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x4

    goto :goto_0

    :cond_1
    const/4 p1, -0x3

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    :goto_0
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->id:I

    .line 3
    iget p1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->C(Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    .line 7
    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->id:I

    iget p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->id:I

    if-ne p2, p3, :cond_3

    const p1, 0xea66

    .line 8
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->c(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 9
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    .line 10
    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    iget p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    if-ne p2, p3, :cond_5

    const/16 p1, 0x32cc

    .line 11
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->c(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_6
    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 1

    const-string v0, "examResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->H(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->j0(Z)V

    return-void
.end method

.method public x(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    if-ne v0, v1, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;-><init>()V

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;->voice:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_2
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->B()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/deduct/y;->x(Lcn/mucang/jiakaoyi/uilib/deduct/x;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public final z(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

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
    if-nez v1, :cond_2

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_start_test:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 4
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    if-ne p1, v2, :cond_4

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->l:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "step"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->e(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    :goto_1
    return-void

    .line 6
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->exeThisStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    :goto_2
    return-void
.end method
