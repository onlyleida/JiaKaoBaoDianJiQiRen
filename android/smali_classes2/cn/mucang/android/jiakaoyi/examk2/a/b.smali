.class public Lcn/mucang/android/jiakaoyi/examk2/a/b;
.super Lcn/mucang/android/jiakaoyi/engine/init/a;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

.field private b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

.field private c:Lcn/mucang/android/jiakaoyi/examk2/a/c;

.field private final d:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final e:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

.field private final g:Lcn/mucang/android/jiakaoyi/engine/i/a;

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/init/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/examk2/a/b$a;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/examk2/a/b$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/a/b;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->g:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/examk2/a/a;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/examk2/a/a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/a/b;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->h:Landroidx/lifecycle/a0;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;-><init>(Lcn/mucang/android/jiakaoyi/examk2/a/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->H:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 6
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->I:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->f(J)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v0, v1, v3}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    if-eqz p3, :cond_0

    .line 8
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 9
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    if-nez p3, :cond_1

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->initEngine()V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/e;->a(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/examk2/a/b;)Lcn/mucang/android/jiakaoyi/mapcollect/c/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/examk2/a/b;)Lcn/mucang/android/jiakaoyi/examk2/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c:Lcn/mucang/android/jiakaoyi/examk2/a/c;

    return-object p0
.end method

.method private synthetic f(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->initEngine()V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/e;->a(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    return-void
.end method


# virtual methods
.method public c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    return-object v0
.end method

.method protected createEngine()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->g:Lcn/mucang/android/jiakaoyi/engine/i/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/i/a;)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v2

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->i:Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->v(Lcn/mucang/android/jiakaoyi/engine/c;)V

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->T()V

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public e()Lcn/mucang/android/jiakaoyi/engine/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    return-void
.end method

.method public initEngine()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/a/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/a/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c:Lcn/mucang/android/jiakaoyi/examk2/a/c;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->i:Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c:Lcn/mucang/android/jiakaoyi/examk2/a/c;

    const-string v1, "keyK2ExamReport"

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->i:Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    .line 4
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->initEngine()V

    return-void
.end method

.method public start()Z
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->D:J

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->q()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->i:Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->getMisFireRpm()I

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->i:Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->getMisFireTime()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->b(II)V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "k2ExamLogic.init failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "K2EngineManager"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/b;->f:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->W()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e()V

    return-void
.end method
