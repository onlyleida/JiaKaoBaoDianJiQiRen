.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

.field private c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->a:Ljava/lang/String;

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->b:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    return-void
.end method

.method public static declared-synchronized a(JLjava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">;"
        }
    .end annotation

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public synthetic canExeMoreThanOneStep(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/b;->a(Lcn/mucang/android/jiakaoyi/engine/i/c;Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z

    move-result p1

    return p1
.end method

.method public createGlobalEvents(Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getEngineType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->examSiteId:J

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapSiteId:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapMd5:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->d()Ljava/util/Map;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->a:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->a(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 11
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;-><init>()V

    .line 12
    iput-object v2, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    if-nez v5, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    .line 15
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    :cond_2
    return-object v0
.end method

.method public declared-synchronized stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;->b:Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stepList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
