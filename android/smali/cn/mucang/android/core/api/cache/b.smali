.class public abstract Lcn/mucang/android/core/api/cache/b;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# static fields
.field private static final HTTP_STATUS_NOT_MODIFIED:I = 0x130


# instance fields
.field protected defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/api/cache/c;->h()Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/cache/b;-><init>(Lcn/mucang/android/core/api/cache/c;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/api/cache/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/cache/b;->checkConfig(Lcn/mucang/android/core/api/cache/c;)V

    .line 4
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/b;->defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 5
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    sget-object p1, Lcn/mucang/android/core/api/cache/c;->h:Lcn/mucang/android/core/api/cache/c;

    iput-object p1, p0, Lcn/mucang/android/core/api/cache/b;->defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;

    :goto_0
    return-void
.end method

.method private checkConfig(Lcn/mucang/android/core/api/cache/c;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/cache/c;->h:Lcn/mucang/android/core/api/cache/c;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->j()Lcn/mucang/android/core/api/cache/d;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->l()Lcn/mucang/android/core/api/cache/e;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->m()Lcn/mucang/android/core/api/cache/f;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->n()Lcn/mucang/android/core/api/cache/g;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->k()Lcn/mucang/android/core/api/cache/CacheMode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->k()Lcn/mucang/android/core/api/cache/CacheMode;

    move-result-object v0

    .line 8
    sget-object v1, Lcn/mucang/android/core/api/cache/CacheMode;->AUTO:Lcn/mucang/android/core/api/cache/CacheMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/core/api/cache/CacheMode;->REMOTE_FIRST:Lcn/mucang/android/core/api/cache/CacheMode;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    :cond_2
    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "remoteFirstTimeout \u5fc5\u987b\u5927\u4e8e 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CacheMode \u4e0d\u80fd\u4e3a null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CheckTimeGenerator \u4e0d\u80fd\u4e3a null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CacheTimeGenerator \u4e0d\u80fd\u4e3a null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CacheStorage \u4e0d\u80fd\u4e3a null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CacheKeyGenerator \u4e0d\u80fd\u4e3a null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createCacheApiResponse(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/ApiResponse;)Lcn/mucang/android/core/api/cache/a;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->m()Lcn/mucang/android/core/api/cache/f;

    move-result-object v0

    invoke-interface {v0, p2}, Lcn/mucang/android/core/api/cache/f;->a(Lcn/mucang/android/core/api/ApiResponse;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->n()Lcn/mucang/android/core/api/cache/g;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/mucang/android/core/api/cache/g;->a(Lcn/mucang/android/core/api/ApiResponse;)I

    move-result p1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Lcn/mucang/android/core/api/cache/a;

    invoke-direct {v3}, Lcn/mucang/android/core/api/cache/a;-><init>()V

    .line 5
    invoke-virtual {v3, p2}, Lcn/mucang/android/core/api/cache/a;->e(Lcn/mucang/android/core/api/ApiResponse;)V

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v4, v1

    .line 6
    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/core/api/cache/a;->f(J)V

    int-to-long p1, p1

    mul-long p1, p1, v6

    add-long/2addr p1, v1

    .line 7
    invoke-virtual {v3, p1, p2}, Lcn/mucang/android/core/api/cache/a;->g(J)V

    return-object v3
.end method

.method private generateCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/a;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->c(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5
    invoke-static {p1, v1}, Lcn/mucang/android/core/api/f/c;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static isCacheAvailable(Lcn/mucang/android/core/api/cache/a;J)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/a;->b()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static mergeConfig(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/c;)Lcn/mucang/android/core/api/cache/c;
    .locals 5

    if-eq p0, p1, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcn/mucang/android/core/api/cache/c$a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->j()Lcn/mucang/android/core/api/cache/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->b(Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/c$a;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->n()Lcn/mucang/android/core/api/cache/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->f(Lcn/mucang/android/core/api/cache/g;)Lcn/mucang/android/core/api/cache/c$a;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->h(Z)Lcn/mucang/android/core/api/cache/c$a;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->k()Lcn/mucang/android/core/api/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->c(Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/c$a;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->m()Lcn/mucang/android/core/api/cache/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->e(Lcn/mucang/android/core/api/cache/f;)Lcn/mucang/android/core/api/cache/c$a;

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/cache/c$a;->g(J)Lcn/mucang/android/core/api/cache/c$a;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->l()Lcn/mucang/android/core/api/cache/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->d(Lcn/mucang/android/core/api/cache/e;)Lcn/mucang/android/core/api/cache/c$a;

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->k()Lcn/mucang/android/core/api/cache/CacheMode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->k()Lcn/mucang/android/core/api/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->c(Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/c$a;

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->j()Lcn/mucang/android/core/api/cache/d;

    move-result-object v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->j()Lcn/mucang/android/core/api/cache/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->b(Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/c$a;

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->m()Lcn/mucang/android/core/api/cache/f;

    move-result-object v1

    if-nez v1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->m()Lcn/mucang/android/core/api/cache/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->e(Lcn/mucang/android/core/api/cache/f;)Lcn/mucang/android/core/api/cache/c$a;

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->l()Lcn/mucang/android/core/api/cache/e;

    move-result-object v1

    if-nez v1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->l()Lcn/mucang/android/core/api/cache/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->d(Lcn/mucang/android/core/api/cache/e;)Lcn/mucang/android/core/api/cache/c$a;

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->n()Lcn/mucang/android/core/api/cache/g;

    move-result-object v1

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->n()Lcn/mucang/android/core/api/cache/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->f(Lcn/mucang/android/core/api/cache/g;)Lcn/mucang/android/core/api/cache/c$a;

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/c;->o()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gtz p0, :cond_6

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->o()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/core/api/cache/c$a;->g(J)Lcn/mucang/android/core/api/cache/c$a;

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    return-object p1
.end method

.method private static needRefresh(Lcn/mucang/android/core/api/cache/a;J)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/cache/a;->c()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private scheduleNetworkAndThrowException(Ljava/lang/String;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Lcn/mucang/android/core/api/ApiResponse;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/core/api/cache/b;->doRemoteFirstWithTimeout(Ljava/lang/String;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-nez v0, :cond_2

    if-nez p4, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    throw p2

    .line 3
    :cond_0
    new-instance p1, Lcn/mucang/android/core/api/exception/InternalException;

    const-string p2, "\u65e0\u7ed3\u679c\uff01Cache \u7ed3\u679c\u4e3a\u7a7a\uff0c\u4e14\u53d6\u7f51\u7edc\u65f6\u8d85\u65f6\u3002"

    invoke-direct {p1, p2}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    throw p1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p4, v0

    :goto_1
    return-object p4
.end method


# virtual methods
.method protected doFetchRemote(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/String;Z)Lcn/mucang/android/core/api/ApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/cache/b;->generateCacheUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-static {p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v3, "_eTag"

    invoke-direct {v2, v3, p3}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p2, v1}, Lcn/mucang/android/core/api/f/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_0
    invoke-super {p0, p2}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p2
    :try_end_1
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    :try_start_2
    invoke-virtual {p2}, Lcn/mucang/android/core/api/exception/HttpException;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_2

    .line 8
    invoke-static {p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/cache/c;->i(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/core/api/cache/a;->a()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p2

    .line 10
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/api/cache/b;->createCacheApiResponse(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/ApiResponse;)Lcn/mucang/android/core/api/cache/a;

    move-result-object p3

    if-eqz p4, :cond_1

    .line 11
    new-instance p4, Lcn/mucang/android/core/api/cache/b$b;

    invoke-direct {p4, p0, p1, v0, p3}, Lcn/mucang/android/core/api/cache/b$b;-><init>(Lcn/mucang/android/core/api/cache/b;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V

    invoke-static {p4}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 12
    :cond_1
    :try_start_3
    invoke-virtual {p1, v0, p3}, Lcn/mucang/android/core/api/cache/c;->r(Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string p3, "\u9ed8\u8ba4\u66ff\u6362"

    .line 13
    invoke-static {p3, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p2

    .line 14
    :cond_2
    throw p2
    :try_end_4
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 15
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 16
    throw p1

    :catch_4
    move-exception p1

    .line 17
    throw p1
.end method

.method protected doMergeConfig(Lcn/mucang/android/core/api/cache/c;)Lcn/mucang/android/core/api/cache/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/b;->defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;

    invoke-static {p1, v0}, Lcn/mucang/android/core/api/cache/b;->mergeConfig(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/c;)Lcn/mucang/android/core/api/cache/c;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/cache/b;->checkConfig(Lcn/mucang/android/core/api/cache/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    sget-object p1, Lcn/mucang/android/core/api/cache/c;->h:Lcn/mucang/android/core/api/cache/c;

    return-object p1
.end method

.method protected doRemoteFirstWithTimeout(Ljava/lang/String;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v12, v11, [Lcn/mucang/android/core/api/ApiResponse;

    new-array v13, v11, [Lcn/mucang/android/core/api/exception/ApiException;

    new-array v14, v11, [Lcn/mucang/android/core/api/exception/HttpException;

    new-array v15, v11, [Lcn/mucang/android/core/api/exception/InternalException;

    .line 2
    new-instance v16, Lcn/mucang/android/core/api/cache/b$a;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/core/api/cache/b$a;-><init>(Lcn/mucang/android/core/api/cache/b;[Lcn/mucang/android/core/api/ApiResponse;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/String;[Lcn/mucang/android/core/api/exception/ApiException;[Lcn/mucang/android/core/api/exception/HttpException;[Lcn/mucang/android/core/api/exception/InternalException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static/range {v16 .. v16}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/core/api/cache/c;->o()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "hadeslee"

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5148\u8d70\u7f51\u7edc,\u88ab\u5524\u9192\u4e86,\u6b64\u65f6\u7f51\u7edc\u6709\u8fd4\u56de\u5417?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v12, v1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5148\u8d70\u7f51\u7edc,\u4f46\u662f\u7f51\u7edc\u5728\u89c4\u5b9a\u7684\u65f6\u95f4:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/core/api/cache/c;->o()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\u6beb\u79d2\u5185\u6ca1\u6709\u8fd4\u56de"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_1
    aget-object v0, v13, v1

    if-nez v0, :cond_4

    .line 7
    aget-object v0, v14, v1

    if-nez v0, :cond_3

    .line 8
    aget-object v0, v15, v1

    if-nez v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    aget-object v0, v15, v1

    throw v0

    .line 10
    :cond_3
    aget-object v0, v14, v1

    throw v0

    .line 11
    :cond_4
    aget-object v0, v13, v1

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 12
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_2
    aget-object v0, v12, v1

    if-eqz v0, :cond_5

    .line 14
    aget-object v0, v12, v1

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method protected httpGet(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/cache/b;->doMergeConfig(Lcn/mucang/android/core/api/cache/c;)Lcn/mucang/android/core/api/cache/c;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/cache/b;->generateCacheUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v2}, Lcn/mucang/android/core/api/cache/c;->i(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/a;

    move-result-object v3

    .line 6
    invoke-static {v3, v0, v1}, Lcn/mucang/android/core/api/cache/b;->isCacheAvailable(Lcn/mucang/android/core/api/cache/a;J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Lcn/mucang/android/core/api/cache/a;->a()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v2

    .line 8
    invoke-virtual {v3}, Lcn/mucang/android/core/api/cache/a;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v2}, Lcn/mucang/android/core/api/cache/c;->q(Ljava/lang/String;)V

    move-object v2, v5

    move-object v3, v2

    move-object v4, v3

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->k()Lcn/mucang/android/core/api/cache/CacheMode;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 11
    sget-object v6, Lcn/mucang/android/core/api/cache/b$c;->a:[I

    invoke-virtual {p1}, Lcn/mucang/android/core/api/cache/c;->k()Lcn/mucang/android/core/api/cache/CacheMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v0, 0x2

    if-eq v6, v0, :cond_2

    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    return-object v5

    .line 12
    :cond_1
    invoke-direct {p0, p2, p1, v4, v2}, Lcn/mucang/android/core/api/cache/b;->scheduleNetworkAndThrowException(Ljava/lang/String;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Lcn/mucang/android/core/api/ApiResponse;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2

    .line 13
    :cond_3
    invoke-static {v3, v0, v1}, Lcn/mucang/android/core/api/cache/b;->needRefresh(Lcn/mucang/android/core/api/cache/a;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-direct {p0, p2, p1, v4, v2}, Lcn/mucang/android/core/api/cache/b;->scheduleNetworkAndThrowException(Ljava/lang/String;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Lcn/mucang/android/core/api/ApiResponse;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v2

    .line 15
    :cond_5
    new-instance p1, Lcn/mucang/android/core/api/exception/InternalException;

    const-string p2, "\u81ea\u5b9a\u4e49CacheConfig\u7684CacheMode\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/b;->defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/cache/b;->httpGet(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected httpGetData(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/core/api/cache/c;",
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

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/core/api/cache/b;->httpGet(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p3}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected httpGetData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/b;->defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;

    invoke-virtual {p0, v0, p1, p2}, Lcn/mucang/android/core/api/cache/b;->httpGetData(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected httpGetDataList(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/core/api/cache/c;",
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

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/core/api/cache/b;->httpGet(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p3}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/b;->defaultCacheConfig:Lcn/mucang/android/core/api/cache/c;

    invoke-virtual {p0, v0, p1, p2}, Lcn/mucang/android/core/api/cache/b;->httpGetDataList(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
