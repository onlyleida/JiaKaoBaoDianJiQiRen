.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field public final b:I

.field final c:I

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

.field final f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field final g:Z

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:Z

.field public final l:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

.field public final m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

.field public final n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

.field public final o:Z

.field public final p:I

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->i:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->k:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->l:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    .line 7
    iput-boolean p6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->g:Z

    .line 8
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->h:Z

    .line 9
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->j:Z

    .line 10
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/engine/i/c;->stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->e:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    if-nez p7, :cond_0

    .line 11
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/engine/i/c;->getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    goto :goto_0

    .line 12
    :cond_0
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 13
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/engine/i/c;->canExeMoreThanOneStep(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->o:Z

    .line 14
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/engine/i/c;->getEngineType()I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    .line 15
    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    iget-object p5, p1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->serverKeMu:Ljava/lang/String;

    iput-object p5, p4, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->kemu:Ljava/lang/String;

    if-nez p8, :cond_1

    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    goto :goto_1

    .line 17
    :cond_1
    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p4, :cond_2

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    invoke-virtual {p8, p2}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->fillGlobalConfig(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    goto :goto_1

    .line 19
    :cond_2
    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p4, :cond_4

    const/4 p4, 0x2

    if-ne p2, p4, :cond_3

    .line 20
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    goto :goto_1

    .line 21
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    invoke-virtual {p8, p2}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->fillGlobalConfig(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    goto :goto_1

    .line 22
    :cond_4
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p2, :cond_5

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    invoke-virtual {p8, p2}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->fillGlobalConfig(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    goto :goto_1

    .line 24
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object p4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    invoke-virtual {p8, p2}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->fillGlobalConfig(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    .line 25
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    if-nez p2, :cond_8

    .line 26
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-eq p1, p2, :cond_7

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    const/16 p2, 0x5a

    goto :goto_3

    :cond_7
    :goto_2
    const/16 p2, 0x50

    :goto_3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->b:I

    const/16 p2, 0x64

    .line 27
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->c:I

    goto :goto_4

    .line 28
    :cond_8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->getPassScore()I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->b:I

    .line 29
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->getTotalScore()I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->c:I

    .line 30
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u53cd\u5c04\u751f\u6210\u6574\u4e2a\u914d\u7f6e\u7684\u65f6\u95f4:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, v0

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "TAG"

    invoke-static {p4, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/engine/i/c;->stepList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->q:Ljava/util/List;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    .line 33
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "\u53cd\u5c04\u751f\u6210\u6b65\u9aa4\u4e8b\u4ef6\u7684\u65f6\u95f4:"

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p7

    sub-long/2addr p7, p5

    invoke-virtual {p2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p2, :cond_9

    .line 36
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    goto :goto_5

    .line 37
    :cond_9
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p2, :cond_a

    .line 38
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    goto :goto_5

    .line 39
    :cond_a
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p2, :cond_b

    .line 40
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    goto :goto_5

    .line 41
    :cond_b
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 42
    :goto_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    invoke-interface {p3, p1}, Lcn/mucang/android/jiakaoyi/engine/i/c;->createGlobalEvents(Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u53cd\u5c04\u751f\u6210\u6574\u4e2a\u6570\u636e\u7684\u65f6\u95f4:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5f15\u64ce\u521d\u59cb\u5316\u53c2\u6570:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->e:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/i/c$a;->createStep(Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public e()Z
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 2
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->e:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$a;->createStep(Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExamData{keMu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", passScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stepCreator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->e:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", globalEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->f:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", continueIfError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", realTimeReportError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playScoreVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoStartNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pauseDeductScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gearType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->l:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", routeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", globalParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canExeMoreThanOneStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", engineType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
