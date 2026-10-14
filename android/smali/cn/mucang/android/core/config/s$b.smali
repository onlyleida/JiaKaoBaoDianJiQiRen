.class Lcn/mucang/android/core/config/s$b;
.super Lcn/mucang/android/core/api/cache/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/config/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/config/s$b$b;
    }
.end annotation


# static fields
.field private static final d:Lcn/mucang/android/core/api/cache/c;


# instance fields
.field private a:Lcn/mucang/android/core/misc/b;

.field private volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    sget-object v1, Lcn/mucang/android/core/config/s$c;->a:Lcn/mucang/android/core/config/s$c;

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->b(Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/c$a;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->h(Z)Lcn/mucang/android/core/api/cache/c$a;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/config/s$b;->d:Lcn/mucang/android/core/api/cache/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/b;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "_remote_config_"

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/core/misc/c;->f(Landroid/content/Context;Ljava/lang/String;J)Lcn/mucang/android/core/misc/c;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/config/s$b;->a:Lcn/mucang/android/core/misc/b;

    .line 4
    new-instance v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v1, "remote"

    invoke-direct {v0, v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/config/s$b;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/core/config/s$b;->f()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/config/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/s$b;-><init>()V

    return-void
.end method

.method static synthetic b()Lcn/mucang/android/core/api/cache/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/s$b;->d:Lcn/mucang/android/core/api/cache/c;

    return-object v0
.end method

.method static synthetic c(Lcn/mucang/android/core/config/s$b;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/core/api/cache/b;->httpGetData(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static d()Lcn/mucang/android/core/config/s$b;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/s$b$b;->a()Lcn/mucang/android/core/config/s$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/s$b;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/config/s$b;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "__core__remote_config__"

    const-string v1, "remote_config"

    const-string v2, ""

    .line 4
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    const-class v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcn/mucang/android/core/config/s$b;->b:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Exception"

    .line 7
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/core/config/s$b;->b:Ljava/util/Map;

    return-object v0
.end method

.method f()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/config/s$b;->a:Lcn/mucang/android/core/misc/b;

    new-instance v1, Lcn/mucang/android/core/config/s$b$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/config/s$b$a;-><init>(Lcn/mucang/android/core/config/s$b;)V

    iget-object v2, p0, Lcn/mucang/android/core/config/s$b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/misc/b;->d(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method declared-synchronized g(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcn/mucang/android/core/config/s$b;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "__core__remote_config__"

    const-string v0, "remote_config"

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/config/s$b;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/mucang/android/core/config/s$b;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Exception"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://config.kakamobi.com"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#d3pycm9DSYd6lndDckVwkzyZ"

    return-object v0
.end method

.method public h(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/api/open/v4/config/count.htm"

    invoke-virtual {p0, v1, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
