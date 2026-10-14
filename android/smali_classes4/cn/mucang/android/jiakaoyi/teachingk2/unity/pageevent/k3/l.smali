.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0014\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\u0015\u001a\u00020\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0006H\u0016J\u001a\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0013H\u0002R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3TrainPage;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;",
        "()V",
        "deductList",
        "Ljava/util/HashSet;",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "Lkotlin/collections/HashSet;",
        "engineCtrl",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;",
        "traffic",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/TrafficBrakeManager;",
        "getEngineType",
        "",
        "getStepGetter",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;",
        "onEngineInitialed",
        "",
        "onEnter",
        "onExit",
        "onOneError",
        "deductInfo",
        "onStep",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "stepResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;",
        "sendRouteData",
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

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->b:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    return-void
.end method

.method private static final a()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->b()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->b()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->parseStartPos(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "parseStartPos(LocalRouteUtil.getRoute())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v1

    const-string v2, "getEmptyStepInfo(Step.K3_Global)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v1

    const-string v3, "getEmptyStepInfo(Step.K3_QiBu)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic d()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final e()V
    .locals 10

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->b()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "ThisIsCommonRouteId"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel;->itemList:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 8
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel$RouteStepItemModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel$RouteStepItemModel;-><init>()V

    .line 9
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBearing()F

    move-result v5

    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel$RouteStepItemModel;->angle:F

    .line 10
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v6

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel$RouteStepItemModel;->point:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getAlias()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel$RouteStepItemModel;->name:Ljava/lang/String;

    .line 12
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel;->itemList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_4
    :goto_3
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto :goto_4

    .line 14
    :cond_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteStepModel;->itemList:Ljava/util/List;

    .line 16
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;->start:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->start()Z

    :goto_1
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

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/i;

    return-object v0
.end method

.method public g()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->b:Z

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->b()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->i(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->posMapCode:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->g()V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/g;->a()V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->e()V

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->p()V

    return-void
.end method

.method public getEngineType()I
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->Teach:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;)Z

    move-result v0

    return v0
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->b:Z

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->q()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 4
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;->start:Z

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->q()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->e()V

    return-void
.end method

.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 1

    const-string v0, "deductInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 8

    const-string p2, "stepHandler"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;-><init>()V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->b:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v2, v1, p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;-><init>(ZI)V

    invoke-virtual {p2, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->z(Lcn/mucang/android/jiakaoyi/engine/trace/model/a;Z)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->b:Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_3

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string p2, "getCurrentActivity()"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->b:Ljava/util/HashSet;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 12
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;-><init>()V

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    iput-object v1, v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 13
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;-><init>(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    .line 14
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 15
    :cond_3
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-direct {v1, v0, p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;-><init>(ZI)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    invoke-virtual {p2, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->z(Lcn/mucang/android/jiakaoyi/engine/trace/model/a;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V

    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    return-void
.end method
