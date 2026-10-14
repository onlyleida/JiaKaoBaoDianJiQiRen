.class public Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;
.super Lcn/mucang/android/core/webview/protocol/bridge/k0;
.source "SourceFile"


# static fields
.field private static final GET:Ljava/lang/String; = "/clue/get"

.field private static final GET_NAME:Ljava/lang/String; = "/clue/getName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GET_PHONE:Ljava/lang/String; = "/clue/getPhone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SAVE_NAME:Ljava/lang/String; = "/clue/saveName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SAVE_NAME_AND_PHONE:Ljava/lang/String; = "/clue/saveNameAndPhone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SAVE_PHONE:Ljava/lang/String; = "/clue/savePhone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SET:Ljava/lang/String; = "/clue/set"


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/k0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method private synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/a/k/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/a/k/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 4
    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic c(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    const-string v0, "name"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "phone"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lf/a/a/a/k/a;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lf/a/a/a/k/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/a/a/a/k/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic e(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/a/k/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic g(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/a/k/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic i(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/a/a/a/k/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic k(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/a/a/a/k/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic m(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    const-string v0, "name"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "phone"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {}, Lf/a/a/a/k/a;->a()Lf/a/a/a/k/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lf/a/a/a/k/a;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected addFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/d;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V

    const-string v2, "/clue/get"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/f;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V

    const-string v2, "/clue/set"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/b;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V

    const-string v2, "/clue/getName"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/g;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V

    const-string v2, "/clue/getPhone"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/e;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V

    const-string v2, "/clue/saveName"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/a;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V

    const-string v2, "/clue/savePhone"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/c;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;)V

    const-string v2, "/clue/saveNameAndPhone"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method

.method public synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->g(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->i(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->k(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;->m(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
