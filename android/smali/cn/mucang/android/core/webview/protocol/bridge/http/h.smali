.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/h;
.super Lcn/mucang/android/core/api/cache/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0014J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/H5JsBridgeApi;",
        "Lcn/mucang/android/core/api/cache/CacheBaseApi;",
        "params",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams;",
        "(Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams;)V",
        "buildGetUrl",
        "",
        "getApiHost",
        "getSignKey",
        "httpGet",
        "httpPost",
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


# instance fields
.field private final a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/http/g;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/i;->a(Lcn/mucang/android/core/webview/protocol/bridge/http/g;)Lcn/mucang/android/core/api/cache/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/cache/b;-><init>(Lcn/mucang/android/core/api/cache/c;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    .line 3
    new-instance p1, Lcn/mucang/android/core/webview/protocol/bridge/http/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/a;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/h;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    return-void
.end method

.method private static final b(Lcn/mucang/android/core/webview/protocol/bridge/http/h;Lcn/mucang/android/core/api/request/c;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcn/mucang/android/core/api/request/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/b;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/b;-><init>(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/h;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->q(Lcn/mucang/android/core/api/request/c$a;)V

    return-void
.end method

.method private final c()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->g()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "?"

    .line 4
    invoke-static {v0, v6, v3, v4, v5}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "&"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {v2}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic f(Lcn/mucang/android/core/webview/protocol/bridge/http/h;Lcn/mucang/android/core/api/request/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->b(Lcn/mucang/android/core/webview/protocol/bridge/http/h;Lcn/mucang/android/core/api/request/c;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/h;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->h(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/h;)Ljava/lang/String;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p0, p1, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->l()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const-string p0, "4.3"

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, p0, v2, v1, v2}, Lcn/mucang/android/core/api/f/c;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;)V

    .line 4
    :cond_0
    iget-object p0, p1, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->i()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/k0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcn/mucang/android/core/api/cache/b;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.httpGet(buildGetUrl()).rawString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->g()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->b()Z

    move-result v2

    .line 4
    invoke-super {p0, v0, v1, v2}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;Z)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.httpPost(\n        \u2026/\u662f\u5426\u52a0\u5bc6\n        ).rawString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/h;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/g;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
