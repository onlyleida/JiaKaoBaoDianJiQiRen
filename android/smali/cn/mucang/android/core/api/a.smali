.class public abstract Lcn/mucang/android/core/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final requestInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final responseInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/api/a;->requestInterceptors:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/core/api/a;->responseInterceptors:Ljava/util/List;

    .line 4
    sget-object v2, Lcn/mucang/android/core/api/request/b;->a:Lcn/mucang/android/core/api/request/b;

    invoke-virtual {v2}, Lcn/mucang/android/core/api/request/b;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/core/api/request/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance v0, Lcn/mucang/android/core/api/e/b;

    invoke-direct {v0}, Lcn/mucang/android/core/api/e/b;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcn/mucang/android/core/api/e/a;

    invoke-direct {v0}, Lcn/mucang/android/core/api/e/a;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/request/c;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/a;->getApiHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/core/api/a;->getSignKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcn/mucang/android/core/api/request/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/api/a;->getExtraParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/request/c;->h(Ljava/util/Map;)Lcn/mucang/android/core/api/request/c;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/api/a;->getRequestConfig()Lcn/mucang/android/core/api/request/e/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/request/c;->g(Lcn/mucang/android/core/api/request/e/c;)Lcn/mucang/android/core/api/request/c;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/api/a;->requestInterceptors:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/request/c;->n(Ljava/util/List;)Lcn/mucang/android/core/api/request/c;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/api/a;->responseInterceptors:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/request/c;->o(Ljava/util/List;)Lcn/mucang/android/core/api/request/c;

    return-object v0
.end method


# virtual methods
.method public addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/a;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addResponseInterceptor(Lcn/mucang/android/core/api/request/d/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/a;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract getApiHost()Ljava/lang/String;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRequestConfig()Lcn/mucang/android/core/api/request/e/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getSignKey()Ljava/lang/String;
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
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 5
    :goto_0
    throw p1
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
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
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
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected httpGetEncrypted(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 3
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

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->i(Ljava/util/Map;)Lcn/mucang/android/core/api/request/c;

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 10
    :goto_1
    throw p1
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
    invoke-static {p1, p2}, Lcn/mucang/android/core/api/g/a;->a(Ljava/lang/StringBuilder;Lcn/mucang/android/core/api/d/a;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p3}, Lcn/mucang/android/core/api/ApiResponse;->parseFetchMoreResponse(Ljava/lang/Class;)Lcn/mucang/android/core/api/d/b;

    move-result-object p1

    return-object p1
.end method

.method protected httpPost(Ljava/lang/String;Ljava/io/File;)Lcn/mucang/android/core/api/ApiResponse;
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
    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected httpPost(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 3
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    .line 4
    invoke-static {p2}, Lcn/mucang/android/core/api/request/e/b;->h(Ljava/io/File;)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    .line 5
    invoke-virtual {p1, p3}, Lcn/mucang/android/core/api/request/c;->m(Lcn/mucang/android/core/http/c/b;)Lcn/mucang/android/core/http/c/b;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 8
    :goto_0
    throw p1
.end method

.method protected httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
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

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;Z)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected httpPost(Ljava/lang/String;Ljava/util/List;Z)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
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

    .line 30
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 31
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    if-eqz p3, :cond_0

    .line 32
    invoke-static {p2}, Lcn/mucang/android/core/api/request/e/b;->k(Ljava/util/List;)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p2}, Lcn/mucang/android/core/api/request/e/b;->i(Ljava/util/List;)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 36
    :goto_1
    throw p1
.end method

.method protected httpPost(Ljava/lang/String;[B)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[BZ)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected httpPost(Ljava/lang/String;[BLjava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 24
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    .line 25
    invoke-static {p2, p3}, Lcn/mucang/android/core/api/request/e/b;->c([BLjava/lang/String;)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    .line 26
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 28
    :goto_0
    throw p1
.end method

.method protected httpPost(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 10
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    .line 11
    invoke-static {p2, p3, p4}, Lcn/mucang/android/core/api/request/e/b;->g([BLjava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 14
    :goto_0
    throw p1
.end method

.method protected httpPost(Ljava/lang/String;[BZ)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 17
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    if-eqz p3, :cond_0

    .line 18
    invoke-static {p2}, Lcn/mucang/android/core/api/request/e/b;->f([B)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p2}, Lcn/mucang/android/core/api/request/e/b;->b([B)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 22
    :goto_1
    throw p1
.end method

.method protected httpPostEncrypted(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/a;->createDefaultBuilder(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    move-result-object p1

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->k(Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/api/request/c;

    const-string v0, "UTF-8"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/core/api/request/e/b;->e([B)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/request/c;->l(Lcn/mucang/android/core/api/request/e/b;)Lcn/mucang/android/core/api/request/c;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->b()Lcn/mucang/android/core/api/request/MucangRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/MucangRequest;->g()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 6
    :goto_0
    throw p1
.end method
