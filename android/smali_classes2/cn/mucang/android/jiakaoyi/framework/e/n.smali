.class public abstract Lcn/mucang/android/jiakaoyi/framework/e/n;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:Lcn/mucang/android/jiakaoyi/framework/e/r/c;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "/api/open/car-body/save.htm"

    const-string v1, "/api/open/car-body/update.htm"

    const-string v2, "/api/open/judge-rule/get-inc-rules.htm"

    const-string v3, "/api/open/judge-rule/get-exam-site-rules.htm"

    const-string v4, "/api/open/instruction-rule/get-inc-rules.htm"

    const-string v5, "/api/open/instruction-rule/get-exam-site-rules.htm"

    const-string v6, "/api/open/base-station/move.htm"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/n;->b:[Ljava/lang/String;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/e/r/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/e/r/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/n;->c:Lcn/mucang/android/jiakaoyi/framework/e/r/c;

    .line 3
    sget-object v1, Lcn/mucang/android/core/api/request/b;->a:Lcn/mucang/android/core/api/request/b;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/request/b;->b(Lcn/mucang/android/core/api/request/d/b;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/encode/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/n;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/e/n;->a:Ljava/util/Map;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/g;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://lukaoyi.ttt.mucang.cn"

    return-object v0

    :cond_0
    const-string v0, "https://lukaoyi.kakamobi.cn"

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://robot-teach.ttt.mucang.cn"

    return-object v0

    :cond_0
    const-string v0, "https://robot-teach.kakamobi.cn"

    return-object v0
.end method

.method static synthetic f(Lcn/mucang/android/core/api/request/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/p;->n()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "X-SSO-Token"

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/core/api/request/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/core/api/request/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "X-Requested-With"

    const-string v1, "XMLHttpRequest"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/api/request/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/core/api/request/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/n;->d:Ljava/lang/String;

    const-string v1, "XY-Agent"

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/core/api/request/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    :try_start_0
    const-string v0, "\\?"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    .line 4
    :cond_0
    instance-of v0, p2, Lcn/mucang/android/core/api/exception/ApiException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ", "

    const-string v2, "\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25: url: "

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    check-cast p2, Lcn/mucang/android/core/api/exception/ApiException;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 7
    :cond_1
    instance-of v0, p2, Lcn/mucang/android/core/api/exception/HttpException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ", \u5f02\u5e38: "

    if-nez v0, :cond_4

    :try_start_2
    instance-of v0, p2, Lcn/mucang/android/core/api/exception/InternalException;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private j(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/p;->n()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/n;->b:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

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


# virtual methods
.method protected b()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/b;->a:Lcn/mucang/android/jiakaoyi/framework/e/b;

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/c;->a:Lcn/mucang/android/jiakaoyi/framework/e/c;

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/a;->a:Lcn/mucang/android/jiakaoyi/framework/e/a;

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    return-void
.end method

.method protected c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/e/n;->a:Ljava/util/Map;

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*#06#iJejkYeMfUWcmnNzhZaQh4aT"

    return-object v0

    :cond_0
    const-string v0, "*#06#dTyRPIVxdomWQmp6eHmTg6iC"

    return-object v0
.end method

.method protected httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3
    throw v0
.end method

.method protected httpGetData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/api/a;->httpGetData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3
    throw p2
.end method

.method protected httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->b()V

    const-string v0, "api/open"

    const-string v1, "api/admin"

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/api/a;->httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6
    throw p2
.end method

.method protected httpGetFetchMoreResponse(Ljava/lang/StringBuilder;Lcn/mucang/android/core/api/d/a;Ljava/lang/Class;)Lcn/mucang/android/core/api/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "Lcn/mucang/android/core/api/d/a;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcn/mucang/android/core/api/d/b<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/core/api/a;->httpGetFetchMoreResponse(Ljava/lang/StringBuilder;Lcn/mucang/android/core/api/d/a;Ljava/lang/Class;)Lcn/mucang/android/core/api/d/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3
    throw p2
.end method

.method protected httpPost(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3
    throw p2
.end method

.method protected httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;)",
            "Lcn/mucang/android/core/api/ApiResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->b()V

    const-string v0, "api/open"

    const-string v1, "api/admin"

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/c0;->a()Z

    move-result v0

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;Z)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected httpPost(Ljava/lang/String;Ljava/util/List;Z)Lcn/mucang/android/core/api/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;Z)",
            "Lcn/mucang/android/core/api/ApiResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 15
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;Z)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 16
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 17
    throw p2
.end method

.method protected httpPost(Ljava/lang/String;[BLjava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[BLjava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 8
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 9
    throw p2
.end method

.method protected httpPost(Ljava/lang/String;[BZ)Lcn/mucang/android/core/api/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[BZ)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/e/n;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6
    throw p2
.end method

.method protected k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "kemu"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
