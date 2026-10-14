.class public Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;
.super Lcn/mucang/android/core/webview/protocol/bridge/k0;
.source "SourceFile"


# static fields
.field private static final ALERT:Ljava/lang/String; = "/system/alert"

.field private static final CALL:Ljava/lang/String; = "/system/call"

.field private static final CONFIRM:Ljava/lang/String; = "/system/confirm"

.field private static final CONTROL_PRIVACY_DATA:Ljava/lang/String; = "/system/controlPrivacyData"

.field private static final ENV:Ljava/lang/String; = "/system/env"

.field private static final GET_CACHE:Ljava/lang/String; = "/system/getcache"

.field private static final GET_CONFIG:Ljava/lang/String; = "/system/getconfig"

.field private static final INFO:Ljava/lang/String; = "/system/info"

.field private static final LOG:Ljava/lang/String; = "/system/log"

.field private static final SET_CACHE:Ljava/lang/String; = "/system/setcache"

.field private static final SHARED_PRE_PATH:Ljava/lang/String; = "__js_cache_path"

.field private static final STAT:Ljava/lang/String; = "/system/stat"

.field private static final SYSTEM_COPY:Ljava/lang/String; = "/system/copy"

.field private static final TOAST:Ljava/lang/String; = "/system/toast"

.field private static final VERSION:Ljava/lang/String; = "/system/version"


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/k0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "statusBarHeight"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "debug"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 4
    invoke-static {p0, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->callPhone(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->log(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->toast(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->showAlertDialog(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->showConfirmDialog(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->copy(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->getInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->stat(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->copyString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isAutoFillUserData"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 3
    invoke-static {p0, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private callPhone(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolContext()Lcn/mucang/android/core/webview/core/h;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/core/webview/k/a;->c(Ljava/util/Map;Lcn/mucang/android/core/webview/core/h;)V

    return-void
.end method

.method private copy(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$e;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$e;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private copyString(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/e/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static getCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "__js_cache_path"

    const-string v1, ""

    .line 1
    invoke-static {v0, p0, v1}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getInfo()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    const-string v1, "\u975e\u767d\u540d\u5355\u57df\u540d"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v4, v3, v2, v1}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Ljava/lang/Object;ZILjava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolContext()Lcn/mucang/android/core/webview/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/webview/protocol/e/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/core/api/f/b;->e()Lcn/mucang/android/core/api/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/f/b;->i()Lcn/mucang/android/core/api/f/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/f/b;->d()Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "_statusBarHeight"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v2, v4}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Ljava/lang/Object;ZILjava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {p0, v4, v3, v2, v1}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Ljava/lang/Object;ZILjava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/util/Map;)V
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

    const-string v0, "tag"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "message"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "__js_cache_path"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAlertDialog(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "message"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "title"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u63d0\u793a"

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v1}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v0, p1, v2}, Lcn/mucang/android/core/webview/k/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showConfirmDialog(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "message"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "title"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "action"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cancel"

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "\u786e\u5b9a"

    :cond_1
    move-object v4, v0

    .line 7
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u53d6\u6d88"

    move-object v5, v0

    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 8
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 10
    new-instance v7, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;

    invoke-direct {v7, p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V

    .line 11
    invoke-static/range {v1 .. v7}, Lcn/mucang/android/core/webview/k/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method private stat(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "eventId"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "eventName"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "properties"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "needCommon"

    .line 4
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 7
    :try_start_1
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string p1, "common"

    .line 8
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 9
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v0, v1, p1}, Lf/a/a/a/c;->n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 13
    :catch_0
    :try_start_2
    invoke-static {v0, v1}, Lf/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {v0, v1}, Lf/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 15
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private toast(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$f;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$f;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/call"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$g;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$g;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/log"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$h;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$h;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/toast"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$i;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$i;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/alert"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$j;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/confirm"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$k;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$k;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/version"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$l;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$l;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/copy"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$m;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$m;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/info"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$n;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$n;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/stat"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$a;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/setcache"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$b;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/getcache"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$c;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;)V

    const-string v2, "/system/getconfig"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    sget-object v1, Lcn/mucang/android/core/webview/protocol/bridge/x;->a:Lcn/mucang/android/core/webview/protocol/bridge/x;

    const-string v2, "/system/env"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    sget-object v1, Lcn/mucang/android/core/webview/protocol/bridge/y;->a:Lcn/mucang/android/core/webview/protocol/bridge/y;

    const-string v2, "/system/controlPrivacyData"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method
