.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0006\u0010\u000c\u001a\u00020\u0008J\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeGetApiLogic;",
        "",
        "params",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;",
        "api",
        "Lcn/mucang/android/core/api/BaseApi;",
        "(Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;Lcn/mucang/android/core/api/BaseApi;)V",
        "buildEncryptedUrl",
        "",
        "createGetUrlBuilder",
        "builder",
        "Lcn/mucang/android/core/api/request/MucangRequestBuilder;",
        "getApiHost",
        "getSignKey",
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
.field private final a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;Lcn/mucang/android/core/api/a;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    .line 3
    new-instance p1, Lcn/mucang/android/core/webview/protocol/bridge/http/f;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/f;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/m;)V

    invoke-virtual {p2, p1}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    return-void
.end method

.method private static final a(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->b()Ljava/util/List;

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
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/e;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/e;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->q(Lcn/mucang/android/core/api/request/c$a;)V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    const-string v4, "uri.queryParameterNames"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 7
    invoke-static {v4}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_0

    .line 8
    sget-object v6, Lcn/mucang/android/core/api/f/b;->i:Lcn/mucang/android/core/api/f/b$a;

    const-string v7, "key"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcn/mucang/android/core/api/f/b$a;->f(Ljava/lang/String;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_4

    if-nez v5, :cond_3

    move-object v5, v7

    .line 9
    :cond_3
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    move-object v5, v7

    .line 10
    :cond_5
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_6
    sget-object v3, Lcn/mucang/android/core/api/f/b;->i:Lcn/mucang/android/core/api/f/b$a;

    invoke-virtual {v3}, Lcn/mucang/android/core/api/f/b$a;->d()Lcn/mucang/android/core/api/f/b;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v1}, Lcn/mucang/android/core/api/f/b;->k(Ljava/util/Map;)Lcn/mucang/android/core/api/f/b;

    .line 13
    invoke-virtual {v3, v2}, Lcn/mucang/android/core/api/f/b;->c(Ljava/util/Map;)Lcn/mucang/android/core/api/f/b;

    .line 14
    sget-object v1, Lcn/mucang/android/core/api/f/a;->c:Lcn/mucang/android/core/api/f/a$a;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/f/a$a;->c()Lcn/mucang/android/core/api/f/a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcn/mucang/android/core/api/f/a;->l(Lcn/mucang/android/core/api/f/b;)Lcn/mucang/android/core/api/f/a;

    .line 16
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c(Lcn/mucang/android/core/api/request/c;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->c()Lcn/mucang/android/core/api/request/e/c;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->e()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcn/mucang/android/core/api/request/e/c;->j(J)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-static {v0, p1, p1}, Lcn/mucang/android/core/api/f/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/request/f/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic f(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->h(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/core/webview/protocol/bridge/http/m;Lcn/mucang/android/core/api/request/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->c(Lcn/mucang/android/core/api/request/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
