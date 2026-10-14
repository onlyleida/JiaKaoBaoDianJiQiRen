.class public Lf/a/a/c/a/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/mapcollect/c/h;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/a/a/c/a/c/g;->b:Ljava/util/Map;

    .line 3
    iput-object p3, p0, Lf/a/a/c/a/c/g;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 4
    new-instance v7, Lf/a/a/c/a/c/h;

    invoke-virtual {p0}, Lf/a/a/c/a/c/g;->getEngineType()I

    move-result v6

    move-object v0, v7

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lf/a/a/c/a/c/h;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V

    iput-object v7, p0, Lf/a/a/c/a/c/g;->a:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    return-void
.end method


# virtual methods
.method public synthetic canExeMoreThanOneStep(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/b;->a(Lcn/mucang/android/jiakaoyi/engine/i/c;Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z

    move-result p1

    return p1
.end method

.method public createGlobalEvents(Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/j;

    iget-object v1, p0, Lf/a/a/c/a/c/g;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v2, p0, Lf/a/a/c/a/c/g;->b:Ljava/util/Map;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/j;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/util/List;)V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v2, 0x0

    invoke-direct {v5, v4, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lf/a/a/c/a/c/b;

    invoke-interface {v2, p1, v0}, Lf/a/a/c/a/c/b;->a(Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v6

    new-instance v7, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public getEngineType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;
    .locals 6

    .line 1
    iget-object v0, p0, Lf/a/a/c/a/c/g;->d:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v3

    .line 3
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;-><init>()V

    iput-object v5, p0, Lf/a/a/c/a/c/g;->d:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 4
    iput-wide v3, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->examSiteId:J

    .line 5
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapSiteId:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lf/a/a/c/a/c/g;->d:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapMd5:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lf/a/a/c/a/c/g;->d:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    .line 8
    iget-object v0, p0, Lf/a/a/c/a/c/g;->d:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/a/a/c/a/c/g;->a:Lcn/mucang/android/jiakaoyi/engine/i/c$a;
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
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->b2Steps()Ljava/util/List;

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
