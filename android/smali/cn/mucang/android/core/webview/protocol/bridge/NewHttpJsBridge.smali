.class public final Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;
.super Lcn/mucang/android/core/webview/protocol/bridge/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J(\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;",
        "Lcn/mucang/android/core/webview/protocol/bridge/CoreJsBridge;",
        "webView",
        "Lcn/mucang/android/core/webview/core/MucangWebView;",
        "coreJsBridge",
        "Lcn/mucang/android/core/webview/core/JsBridge;",
        "(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/JsBridge;)V",
        "addFunction",
        "",
        "httpRequest",
        "",
        "requestData",
        "",
        "httpMethod",
        "Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;",
        "Companion",
        "webview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge$a;

.field private static final HTTP_GET:Ljava/lang/String; = "/http2/get"

.field private static final HTTP_POST:Ljava/lang/String; = "/http2/post"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;->Companion:Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge$a;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/k0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;->addFunction$lambda-1(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addFunction$lambda-0(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;->httpRequest(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addFunction$lambda-1(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->POST:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;->httpRequest(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;->addFunction$lambda-0(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final httpRequest(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Ljava/lang/String;
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

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->c(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;

    move-result-object p1

    .line 2
    sget-object p2, Lcn/mucang/android/core/webview/protocol/bridge/http/k;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/k$a;

    invoke-virtual {p2, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/k$a;->a(Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)Lcn/mucang/android/core/webview/protocol/bridge/http/j;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{\n            //\u89e3\u6790\u53c2\u6570\n   \u2026equest(), null)\n        }"

    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 5
    :try_start_1
    instance-of v1, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v1, :cond_0

    .line 6
    check-cast p1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "{\n                if (t \u2026          }\n            }"

    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{\n                JsBrid\u2026message, 0)\n            }"

    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected addFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/w;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/w;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;)V

    const-string v2, "/http2/get"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/v;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/v;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;)V

    const-string v2, "/http2/post"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method
