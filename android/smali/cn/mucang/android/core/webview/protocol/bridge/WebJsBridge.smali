.class public Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;
.super Lcn/mucang/android/core/webview/protocol/bridge/k0;
.source "SourceFile"


# static fields
.field public static final ACTION_SHOW_MENU_DIALOG:Ljava/lang/String; = "cn.mucang.android.web.SHOW_MENU_DIALOG"

.field public static final ACTION_UPDATE_WEBVIEW_CONFIG:Ljava/lang/String; = "cn.mucang.android.web.WEB_SETTING"

.field private static final BACK:Ljava/lang/String; = "/web/back"

.field private static final CLOSE:Ljava/lang/String; = "/web/close"

.field public static final EXTRA_CURRENT_WEBVIEW_ID:Ljava/lang/String; = "__extra_current_webivew_id"

.field private static final INTERCEPT_CLOSE:Ljava/lang/String; = "/web/requestInterceptClose"

.field private static final MENU:Ljava/lang/String; = "/web/menu"

.field private static final OPEN:Ljava/lang/String; = "/web/open"

.field private static final SAFE_AREA_INSET:Ljava/lang/String; = "/web/getSafeAreaInset"

.field private static final SETTING:Ljava/lang/String; = "/web/setting"

.field private static final SET_STATUS_BAR_THEME:Ljava/lang/String; = "/web/setStatusBarTheme"


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/k0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->open(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->webSetting(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private back()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/z;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/protocol/bridge/z;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic c(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->setStatusBarTheme(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private close()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic d(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->back()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic f(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->close()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic h(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->menu()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic j(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->setInterceptClose(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->close()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private menu()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.mucang.android.web.SHOW_MENU_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "__extra_current_webivew_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/a/a;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/a/a;->d(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic n(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->safeInset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(ZLandroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/o0;->z(ZLandroid/app/Activity;)V

    return-void
.end method

.method private open(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "url"

    .line 1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lf/a/a/a/i/h;->f(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-static {v1}, Lcn/mucang/android/core/webview/core/page/e;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-static {}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d()Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    move-result-object p1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->h(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v2, "orientation"

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "titleBar"

    .line 7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 8
    invoke-static {v3, v4}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "title"

    .line 9
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "button"

    .line 10
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "menu"

    .line 11
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "async"

    .line 12
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v4}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v8

    .line 13
    invoke-static {v7, v4}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "httpHeader"

    .line 14
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "closeCurrent"

    .line 15
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v9, "1"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 16
    new-instance v9, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v9}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    .line 17
    invoke-virtual {v9, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->J(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 18
    invoke-virtual {v9, v3}, Lcn/mucang/android/core/webview/HtmlExtra$b;->L(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 19
    invoke-virtual {v9, v5}, Lcn/mucang/android/core/webview/HtmlExtra$b;->I(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 20
    invoke-virtual {v9, v2}, Lcn/mucang/android/core/webview/HtmlExtra$b;->E(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 21
    invoke-static {v6}, Lcn/mucang/android/core/webview/MenuOptions;->form(Ljava/lang/String;)Lcn/mucang/android/core/webview/MenuOptions;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->B(Lcn/mucang/android/core/webview/MenuOptions;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 22
    invoke-virtual {v9, v4}, Lcn/mucang/android/core/webview/HtmlExtra$b;->K(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 23
    invoke-virtual {v9, v8}, Lcn/mucang/android/core/webview/HtmlExtra$b;->D(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 24
    invoke-static {v7}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    const-class v1, Ljava/util/Map;

    invoke-static {v7, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_0
    invoke-virtual {v9, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->A(Ljava/util/Map;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 25
    invoke-virtual {v9}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/mucang/android/core/webview/HTML5Activity;->i(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5
    return-object v0
.end method

.method private safeInset(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setStatusBarTheme(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "theme"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "dark"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 4
    new-instance v2, Lcn/mucang/android/core/webview/protocol/bridge/i0;

    invoke-direct {v2, p1, v0}, Lcn/mucang/android/core/webview/protocol/bridge/i0;-><init>(ZLandroid/app/Activity;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private webSetting(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "title"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "orientation"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "titleBar"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "noTopInset"

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.mucang.android.web.WEB_SETTING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v2, v6}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const-string v5, "button"

    .line 8
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "menu"

    .line 9
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-static {p1, v6}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result p1

    .line 11
    new-instance v6, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v6}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    .line 12
    invoke-virtual {v6, v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;->I(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 13
    invoke-virtual {v6, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->E(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 14
    invoke-virtual {v6, v2}, Lcn/mucang/android/core/webview/HtmlExtra$b;->L(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 15
    invoke-static {v5}, Lcn/mucang/android/core/webview/MenuOptions;->form(Ljava/lang/String;)Lcn/mucang/android/core/webview/MenuOptions;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;->B(Lcn/mucang/android/core/webview/MenuOptions;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 16
    invoke-virtual {v6, p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->K(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 17
    invoke-virtual {v6, v3}, Lcn/mucang/android/core/webview/HtmlExtra$b;->C(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 18
    invoke-virtual {v6}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object p1

    const-string v0, "__core__extra_html__"

    .line 19
    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 20
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v0, "__extra_current_webivew_id"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/a/a;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/a/a;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/localbroadcastmanager/a/a;->d(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected addFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/a0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/a0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/open"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/c0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/c0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/setting"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/f0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/f0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/back"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/e0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/e0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/close"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/b0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/b0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/menu"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/h0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/h0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/getSafeAreaInset"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/d0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/d0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/setStatusBarTheme"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/g0;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/g0;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V

    const-string v2, "/web/requestInterceptClose"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method

.method public synthetic e(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->h(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->j(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->l()V

    return-void
.end method
