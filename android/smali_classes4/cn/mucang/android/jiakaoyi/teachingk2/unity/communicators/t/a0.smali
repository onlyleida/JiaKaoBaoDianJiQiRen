.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

.field private b:Z

.field private c:J

.field private d:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field private e:Landroid/app/Dialog;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/examk2/common/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->b:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->f:Ljava/util/List;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/f;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->g:Landroidx/lifecycle/a0;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->h:Landroidx/lifecycle/a0;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->j:Lcn/mucang/android/jiakaoyi/examk2/common/q;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->e:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->e:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->d:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->d:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    return-object p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/examk2/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;ZLcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->s(ZLcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method

.method private g()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->e:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    .line 8
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v4, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v4

    .line 9
    iget-boolean v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->x:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 10
    iput-boolean v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->x:Z

    .line 11
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v8, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 12
    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 13
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 14
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iput-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 15
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private j(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->i:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/examk2/a/b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->j:Lcn/mucang/android/jiakaoyi/examk2/common/q;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->R(Lcn/mucang/android/jiakaoyi/examk2/common/q;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->n(Lcn/mucang/android/jiakaoyi/engine/f/a;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->S(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->o(Lcn/mucang/android/jiakaoyi/engine/f/b;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    :goto_0
    return-void
.end method

.method private synthetic k(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 2

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;-><init>()V

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->c:J

    iput-wide v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->startTime:J

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_enter_project:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->stepName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->stepId:I

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->v(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->d:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->d:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->stepId:I

    .line 12
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->stepName:Ljava/lang/String;

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->q(I)V

    .line 14
    :cond_2
    :goto_0
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method private synthetic m(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->b:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StartCost:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->t()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->v(Z)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->Other:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 8
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->a:Z

    if-nez v1, :cond_2

    .line 9
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->d:Z

    invoke-direct {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->s(ZLcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->q(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->PauseExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    if-ne v0, p1, :cond_4

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamScoreModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamScoreModel;-><init>()V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->t()I

    move-result v0

    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamScoreModel;->score:I

    .line 14
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic o(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;)V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/CountDownModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/CountDownModel;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;->b:Z

    if-eqz v1, :cond_0

    const-string p0, ""

    .line 3
    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/CountDownModel;->text:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_proj_countdown:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/CountDownModel;->text:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    .line 6
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_timer_not_started:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/CountDownModel;->text:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_2
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_proj_timed_out:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/CountDownModel;->text:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method static synthetic p(Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;)V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/StartTimeModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/StartTimeModel;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->b:Ljava/lang/String;

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/StartTimeModel;->text:Ljava/lang/String;

    const-wide/16 v3, 0x3e8

    .line 4
    div-long/2addr v1, v3

    long-to-int p0, v1

    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/StartTimeModel;->time:I

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 5
    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/StartTimeModel;->text:Ljava/lang/String;

    const/4 p0, 0x0

    .line 6
    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/StartTimeModel;->time:I

    .line 7
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method private synthetic q(Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->g()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->x()V

    :goto_0
    return-void
.end method

.method private s(ZLcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 3
    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 4
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 5
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->state:I

    :goto_0
    const p1, 0xea66

    .line 6
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->c(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->canStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x()V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->d0()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->start()Z

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->startTime:J

    .line 10
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->c:J

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_enter_project:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->stepName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;->stepId:I

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_2
    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->stop()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    return-void
.end method

.method private x()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;->p409113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->l:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    .line 7
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v4, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v4, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 9
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v4, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->destroy()V

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->a:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->e:Landroid/app/Dialog;

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public i()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const-string v0, "\u8bf7\u9009\u62e9\u8003\u573a"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->j(J)V

    return-void
.end method

.method public synthetic l(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->k(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method

.method public synthetic n(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->m(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;)V

    return-void
.end method

.method public synthetic r(Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->q(Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V

    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->b:Z

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->h(Z)V

    .line 3
    const-class v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->u()V

    return-void
.end method

.method public v(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->b:Z

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->h(Z)V

    .line 3
    const-class v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->w()V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->h()V

    :cond_0
    return-void
.end method
