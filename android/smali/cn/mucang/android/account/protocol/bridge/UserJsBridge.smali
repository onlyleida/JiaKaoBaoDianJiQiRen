.class public Lcn/mucang/android/account/protocol/bridge/UserJsBridge;
.super Lcn/mucang/android/core/webview/protocol/bridge/k0;
.source "SourceFile"


# static fields
.field private static final GET:Ljava/lang/String; = "/user/get"

.field private static final LOGIN:Ljava/lang/String; = "/user/login"

.field private static final LOGOUT:Ljava/lang/String; = "/user/logout"

.field private static final NUM_AUTH:Ljava/lang/String; = "/user/numAuth"

.field private static final QUICK_LOGIN_AVAILABLE:Ljava/lang/String; = "/user/quickLoginAvailable"

.field private static final TYPE_FIRST_ONE_KEY:Ljava/lang/String; = "quicklogin"

.field private static final TYPE_NORMAL:Ljava/lang/String; = "third"

.field private static final TYPE_PWD:Ljava/lang/String; = "pwd"

.field private static final TYPE_SMS:Ljava/lang/String; = "sms"


# instance fields
.field private callbackName:Ljava/lang/String;

.field private listener:Lcn/mucang/android/account/i/c;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/k0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->callbackName:Ljava/lang/String;

    .line 3
    new-instance p1, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;-><init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V

    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->listener:Lcn/mucang/android/account/i/c;

    .line 4
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->listener:Lcn/mucang/android/account/i/c;

    invoke-virtual {p1, p2}, Lcn/mucang/android/account/AccountManager;->c(Lcn/mucang/android/account/i/c;)V

    return-void
.end method

.method private synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 8

    const-string v0, "callbackName"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->callbackName:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "skipBindThird"

    .line 2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "pageType"

    .line 3
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v4, "from"

    .line 4
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "skipAuthRealName"

    .line 5
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v3, v0

    goto :goto_0

    :catch_1
    move-object v3, v0

    const/4 v2, 0x0

    :catch_2
    :goto_0
    const-string v4, ""

    const/4 p1, 0x0

    :goto_1
    const-string v5, "third"

    if-nez v3, :cond_0

    move-object v3, v5

    .line 6
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_2
    const/4 v1, -0x1

    goto :goto_3

    :sswitch_0
    const-string v1, "quicklogin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_2
    const-string v1, "sms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_3

    :sswitch_3
    const-string v5, "pwd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 7
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-direct {v5, v4}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    .line 9
    invoke-virtual {v1, v3, p1}, Lcn/mucang/android/account/AccountManager;->G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    goto :goto_4

    .line 10
    :pswitch_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-direct {v5, v4}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v3, p1}, Lcn/mucang/android/account/AccountManager;->H(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    goto :goto_4

    .line 13
    :pswitch_1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-direct {v5, v4}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v3, p1}, Lcn/mucang/android/account/AccountManager;->G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    goto :goto_4

    .line 16
    :pswitch_2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-direct {v5, v4}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5, p1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object p1

    .line 18
    invoke-virtual {v1, v3, p1}, Lcn/mucang/android/account/AccountManager;->G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    goto :goto_4

    .line 19
    :pswitch_3
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/account/data/LoginModel;

    sget-object v6, Lcn/mucang/android/account/api/data/CheckType;->FALSE:Lcn/mucang/android/account/api/data/CheckType;

    invoke-direct {v5, v6, v4}, Lcn/mucang/android/account/data/LoginModel;-><init>(Lcn/mucang/android/account/api/data/CheckType;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5, p1}, Lcn/mucang/android/account/data/LoginModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/account/data/LoginModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginModel;

    move-result-object p1

    .line 21
    invoke-virtual {v1, v3, p1}, Lcn/mucang/android/account/AccountManager;->F(Landroid/content/Context;Lcn/mucang/android/account/data/LoginModel;)V

    :goto_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1b33d -> :sswitch_3
        0x1bd59 -> :sswitch_2
        0x6938567 -> :sswitch_1
        0x64d2759c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->callbackName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->callbackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->userGet()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Lcn/mucang/android/core/webview/core/MucangWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Lcn/mucang/android/core/webview/core/MucangWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object p0
.end method

.method private synthetic c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "callbackName"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->callbackName:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->userGet()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic e(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "callbackName"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->callbackName:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/AccountManager;->m()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object v0

    const-string v1, ""

    invoke-static {p2, v1}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic i(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    const-string v0, "phoneNum"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "callbackName"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/account/protocol/bridge/a;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/account/protocol/bridge/a;-><init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/account/AccountManager;->u(Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic k(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const-string v0, "callbackName"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->v()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/webview/core/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private userGet()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, v6

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/account/protocol/bridge/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/protocol/bridge/f;-><init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V

    const-string v2, "/user/login"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/account/protocol/bridge/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/protocol/bridge/e;-><init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V

    const-string v2, "/user/get"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/account/protocol/bridge/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/protocol/bridge/d;-><init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V

    const-string v2, "/user/logout"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/account/protocol/bridge/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/protocol/bridge/c;-><init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V

    const-string v2, "/user/numAuth"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/account/protocol/bridge/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/protocol/bridge/b;-><init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V

    const-string v2, "/user/quickLoginAvailable"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method

.method public synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic j(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->i(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->k(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
