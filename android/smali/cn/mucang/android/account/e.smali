.class public Lcn/mucang/android/account/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/account/e;->d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "token"

    .line 2
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;->B(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityStarterRegister[Account]"

    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static c()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/account/e$a;

    invoke-direct {v0}, Lcn/mucang/android/account/e$a;-><init>()V

    const-string v1, "http://account.nav.mucang.cn/login"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 2
    sget-object v0, Lcn/mucang/android/account/b;->a:Lcn/mucang/android/account/b;

    const-string v1, "https://account.nav.mucang.cn/scan/login"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 3
    new-instance v0, Lcn/mucang/android/account/e$b;

    invoke-direct {v0}, Lcn/mucang/android/account/e$b;-><init>()V

    const-string v1, "http://core.nav.mucang.cn/checkLogin"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 4
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_SMS:Lcn/mucang/android/core/api/verify/ErrorAction;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    new-instance v1, Lcn/mucang/android/account/e$c;

    invoke-direct {v1}, Lcn/mucang/android/account/e$c;-><init>()V

    invoke-static {v0, v1}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    return-void
.end method

.method private static d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
