.class public Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;
.super Lcn/mucang/android/jiakaoyi/engine/init/a;
.source "SourceFile"


# instance fields
.field private config:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

.field private final deductStepSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final endInterceptor:Lcn/mucang/android/jiakaoyi/engine/i/a;

.field private final engineType:I

.field private examCreator:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

.field private final examEventCallbackWarp:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final examResultCallbackWarp:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final finishStepInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private judge100112Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;

.field private judge100211Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;

.field private judge100231Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

.field private final practiceGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private qibuJudgeStart:Z

.field private final resultCallback:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final routeGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;"
        }
    .end annotation
.end field

.field public runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field private final signalCallback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final stepEventCallback:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final stepListGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final teachCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

.field private final teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

.field private final updateStepCallback:Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/c;Lcn/mucang/android/jiakaoyi/framework/h/c;Lcn/mucang/android/jiakaoyi/framework/h/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/mucang/android/jiakaoyi/engine/f/b;",
            "Lcn/mucang/android/jiakaoyi/engine/f/a;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p6}, Lcn/mucang/android/jiakaoyi/engine/init/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 2
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->finishStepInfos:Ljava/util/List;

    const/4 p6, 0x0

    .line 3
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    const/4 p6, 0x0

    .line 4
    iput-boolean p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->qibuJudgeStart:Z

    .line 5
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->deductStepSet:Ljava/util/HashSet;

    .line 6
    new-instance p6, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;

    invoke-direct {p6, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)V

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->signalCallback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 7
    new-instance p6, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$2;

    invoke-direct {p6, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)V

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    .line 8
    new-instance p6, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;

    invoke-direct {p6, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)V

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->endInterceptor:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 9
    new-instance p6, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;

    invoke-direct {p6, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)V

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->examResultCallbackWarp:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 10
    new-instance p6, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;

    invoke-direct {p6, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)V

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->examEventCallbackWarp:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineType:I

    .line 12
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->resultCallback:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 13
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->stepEventCallback:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 14
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->updateStepCallback:Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;

    .line 15
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->routeGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 16
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->practiceGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 17
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->teachCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    .line 18
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->stepListGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->qibuJudgeStart:Z

    return p0
.end method

.method static synthetic access$1000(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->finishStepInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->qibuJudgeStart:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->stepEventCallback:Lcn/mucang/android/jiakaoyi/engine/f/a;

    return-object p0
.end method

.method static synthetic access$200(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->judge100112Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;

    return-object p0
.end method

.method static synthetic access$202(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->judge100112Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;

    return-object p1
.end method

.method static synthetic access$300(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->judge100231Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    return-object p0
.end method

.method static synthetic access$302(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->judge100231Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    return-object p1
.end method

.method static synthetic access$400(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->judge100211Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;

    return-object p0
.end method

.method static synthetic access$402(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->judge100211Checker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;

    return-object p1
.end method

.method static synthetic access$500(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->teachCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->examCreator:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    return-object p0
.end method

.method static synthetic access$700(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->resultCallback:Lcn/mucang/android/jiakaoyi/engine/f/b;

    return-object p0
.end method

.method static synthetic access$800(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->deductStepSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$900(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->updateStepCallback:Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;

    return-object p0
.end method

.method private createExamConfig()Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->routeGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    if-eqz v7, :cond_0

    .line 2
    invoke-virtual {v7}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v7}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 4
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-wide v3, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    :cond_1
    move-object v5, v1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v3, v4}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v2

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    iget-wide v1, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    .line 10
    iget-object v3, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    move-object v5, v3

    move-wide v3, v1

    goto :goto_1

    :cond_3
    move-object v5, v1

    move-wide v3, v2

    .line 11
    :goto_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineType:I

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->stepListGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;-><init>(JLjava/lang/String;ILcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Lcn/mucang/android/jiakaoyi/framework/h/c;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->examCreator:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;-><init>()V

    .line 13
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->practiceGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->practiceModel:Z

    .line 14
    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineType:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "RealTimeReportError"

    .line 15
    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->practiceGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 16
    :cond_6
    :goto_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->h()Z

    move-result v2

    xor-int/2addr v2, v4

    :goto_3
    move v14, v2

    .line 17
    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v12

    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->examCreator:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    const-string v3, "AutoStartNextStep"

    .line 19
    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v15

    const/16 v16, 0x1

    move-object v10, v2

    move-object/from16 v17, v1

    invoke-direct/range {v10 .. v17}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V

    return-object v2
.end method

.method private findStepInfoByIndex(I)Lcn/mucang/android/jiakaoyi/engine/i/c$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->finishStepInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected createEngine()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->config:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->examResultCallbackWarp:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->examEventCallbackWarp:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->endInterceptor:Lcn/mucang/android/jiakaoyi/engine/i/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/i/a;)V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/c;->q(Z)V

    :cond_0
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->signalCallback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->c()V

    .line 6
    :cond_0
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    return-void
.end method

.method public final enableTeachVoice(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    .line 3
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/param/K3ExamParam;->enableTeachVoice(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "\u79d1\u4e09K3ExamParam \u8bbe\u7f6e\u6709\u95ee\u9898"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getDeduct(I)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/c;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    :cond_0
    return-void
.end method

.method public exeThisStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-nez v0, :cond_0

    const-string p1, "exeThisStep engine == null"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "exeThisStep engine  isStarted == false"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/c;->e(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method

.method public getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initEngine()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->createExamConfig()Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->config:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    .line 2
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->initEngine()V

    return-void
.end method

.method public isFinishRouteAllSteps()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->routeGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->finishStepInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getId()I

    move-result v2

    .line 7
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->findStepInfoByIndex(I)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->l()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->p()V

    :cond_0
    return-void
.end method

.method public start()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->finishStepInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->deductStepSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->qibuJudgeStart:Z

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->signalCallback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 6
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    :cond_0
    return v0
.end method

.method public startNextTeach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->startNext()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->signalCallback:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->qibuJudgeStart:Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->finishStepInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 6
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    return-void
.end method

.method public thisStepInfoHasError(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->deductStepSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz p1, :cond_0

    .line 3
    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    iget v3, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v2, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
