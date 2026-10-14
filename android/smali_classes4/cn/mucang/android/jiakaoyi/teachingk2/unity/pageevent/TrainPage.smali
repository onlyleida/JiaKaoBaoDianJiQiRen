.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020$H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001f\u001a\u00020 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;",
        "()V",
        "controller",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;",
        "getController",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;",
        "correctCallback",
        "Lcn/mucang/android/jiakaoyi/teachingk2/trace/correct/SimpleCorrectCallback;",
        "gpsPageUtil",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/GPSPageUtil;",
        "gradeChangeObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/GradeConfigChangeEvent;",
        "halfCallback",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/halfpilot/StopCarHalfPilotCallback;",
        "helper",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;",
        "itemModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;",
        "listModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;",
        "teachCtrl",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/TeachEngineController;",
        "getTeachCtrl",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/TeachEngineController;",
        "teachTipObserver",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;",
        "teachTypeObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
        "trainModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;",
        "getTrainModel",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;",
        "onEnter",
        "",
        "onExit",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;

.field private final f:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;

.field private final g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

.field private final h:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;

.field private final i:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/m0;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->f:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    .line 8
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    .line 9
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage$helper$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage$helper$1;

    .line 10
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage$helper$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage$helper$2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v1, v9

    .line 11
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;-><init>(ZZZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILkotlin/jvm/internal/o;)V

    .line 12
    invoke-direct {v0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 15
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/s0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/s0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->j:Landroidx/lifecycle/a0;

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/r0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/r0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private final a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    const-string v1, "get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/m0;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6559\u5b66\u7b49\u7ea7\u53d1\u751f\u6539\u53d8\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const v0, 0xff0c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getBrake()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getBrake()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->q()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->n(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->r()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne p0, p1, :cond_2

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setTeachBrake()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->j(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/m0;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/m0;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->step:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;->title:Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->stepDirection:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->subStep:I

    invoke-static {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/e0;->g(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;->title:Ljava/lang/String;

    .line 4
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->steps:Ljava/util/List;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p1

    :cond_2
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;->itemList:Ljava/util/List;

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;

    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->id:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;->id:I

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;->desc:Ljava/lang/String;

    .line 3
    iget-byte p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;->triggerState:B

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method


# virtual methods
.method public final b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    return-object v0
.end method

.method public final c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->f()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->b:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;->showHighErrorBtn:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;->showShareBtn:Z

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->q()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->n()V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 9
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->f()V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/g;->a()V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/m0;

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;->m()V

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->i()V

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k0()V

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->h:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->p(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;)V

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getBrake()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->q()V

    :cond_1
    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->b:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->s()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->p()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->f:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->c()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->f()V

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->k:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/m0;

    .line 10
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->F()V

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->e()V

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->j()V

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const-string v2, "\u9000\u51fa\u7ec3\u4e60\u9875\u9762"

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->l0(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->d()V

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;->c()V

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->n(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->r()V

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v0, v1, :cond_1

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setTeachBrake()V

    :cond_1
    return-void
.end method
