.class public Lf/a/a/c/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

.field private b:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/c/a/c/e;

    invoke-direct {v0, p1}, Lf/a/a/c/a/c/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V

    iput-object v0, p0, Lf/a/a/c/a/c/d;->a:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

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
    iget-object v0, p0, Lf/a/a/c/a/c/d;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v3

    .line 3
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;-><init>()V

    iput-object v5, p0, Lf/a/a/c/a/c/d;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 4
    iput-wide v3, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->examSiteId:J

    .line 5
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapSiteId:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lf/a/a/c/a/c/d;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapMd5:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lf/a/a/c/a/c/d;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    .line 8
    iget-object v0, p0, Lf/a/a/c/a/c/d;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/a/a/c/a/c/d;->a:Lcn/mucang/android/jiakaoyi/engine/i/c$a;
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
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->b2RobotSteps()Ljava/util/List;

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
