.class public Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;
.super Lcn/mucang/android/core/webview/protocol/bridge/k0;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HTTP_GET:Ljava/lang/String; = "/http/get"

.field private static final HTTP_POST:Ljava/lang/String; = "/http/post"

.field private static final TAG:Ljava/lang/String; = "HttpJsBridge"


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/k0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method private synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->httpRequest(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/webview/protocol/InvalidUrlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private buildFailResponse(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v2, ""

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 6
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildLocalData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, ""

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 3
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private buildSuccessResponse(Ljava/lang/String;Lcn/mucang/android/core/webview/protocol/bridge/http/g;)Ljava/lang/String;
    .locals 11

    const-string v0, "message"

    const-string v1, "errorCode"

    const-string v2, "success"

    .line 1
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "HttpJsBridge"

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    move-object v3, p0

    move-object v4, v9

    move-object v5, p1

    .line 5
    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "data"

    .line 6
    invoke-virtual {v10, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 7
    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    .line 8
    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    .line 9
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, v9

    .line 10
    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v3, v10

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 12
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez v3, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v5, ""

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    .line 15
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, ""

    move-object v3, p0

    move-object v4, v9

    .line 16
    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 17
    :goto_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->httpRequest(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/webview/protocol/InvalidUrlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocalData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ".asteroid.mucang.cn"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->buildLocalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private httpRequest(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/webview/protocol/InvalidUrlException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->a(Ljava/util/Map;)Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->getLocalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/h;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/g;)V

    .line 4
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    if-ne p2, v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->d()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->e()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->buildSuccessResponse(Ljava/lang/String;Lcn/mucang/android/core/webview/protocol/bridge/http/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->buildFailResponse(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected addFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/i;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;)V

    const-string v2, "/http/get"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/h;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;)V

    const-string v2, "/http/post"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method

.method public synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
