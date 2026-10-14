.class public Lcn/mucang/android/selectcity/CityNameCodeMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "CityNameCodeMapping"

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;->b:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;->d:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/selectcity/CityNameCodeMapping;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcn/mucang/android/selectcity/a;->a:Lcn/mucang/android/selectcity/a;

    invoke-static {v1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/selectcity/CityNameCodeMapping;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/selectcity/CityNameCodeMapping;->a()V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    sget-boolean v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;->e:Z

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 8
    :cond_2
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;->d:Ljava/util/List;

    return-object v0
.end method

.method private static declared-synchronized d()V
    .locals 4

    const-class v0, Lcn/mucang/android/selectcity/CityNameCodeMapping;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/selectcity/v;->a:Lcn/mucang/android/selectcity/w;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u8bf7\u5f15\u5165\u9009\u62e9\u57ce\u5e02\u6a21\u5757"

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v1, Lcn/mucang/android/selectcity/CityNameCodeMapping;->a:Ljava/lang/String;

    const-string v2, "\u8bf7\u5f15\u5165\u9009\u62e9\u57ce\u5e02\u6a21\u5757"

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_1
    sget-object v2, Lcn/mucang/android/selectcity/CityNameCodeMapping;->b:Ljava/util/Map;

    sget-object v3, Lcn/mucang/android/selectcity/CityNameCodeMapping;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcn/mucang/android/selectcity/w;->c(Ljava/util/Map;Ljava/util/Map;)V

    .line 7
    sget-object v1, Lcn/mucang/android/selectcity/v;->a:Lcn/mucang/android/selectcity/w;

    sget-object v2, Lcn/mucang/android/selectcity/CityNameCodeMapping;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Lcn/mucang/android/selectcity/w;->b(Ljava/util/List;)V

    const/4 v1, 0x1

    .line 8
    sput-boolean v1, Lcn/mucang/android/selectcity/CityNameCodeMapping;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 9
    :catch_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/selectcity/CityNameCodeMapping;->d()V

    return-void
.end method
