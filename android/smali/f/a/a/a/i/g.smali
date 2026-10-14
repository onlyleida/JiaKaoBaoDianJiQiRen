.class public Lf/a/a/a/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf/a/a/a/i/g;->d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/o0;->y(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static c()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_GEETEST:Lcn/mucang/android/core/api/verify/ErrorAction;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    new-instance v1, Lf/a/a/a/i/g$a;

    invoke-direct {v1}, Lf/a/a/a/i/g$a;-><init>()V

    invoke-static {v0, v1}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_CAPTCHA:Lcn/mucang/android/core/api/verify/ErrorAction;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    new-instance v1, Lf/a/a/a/i/g$b;

    invoke-direct {v1}, Lf/a/a/a/i/g$b;-><init>()V

    invoke-static {v0, v1}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 3
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->DIALOG_DEFAULT:Lcn/mucang/android/core/api/verify/ErrorAction;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    new-instance v1, Lf/a/a/a/i/g$c;

    invoke-direct {v1}, Lf/a/a/a/i/g$c;-><init>()V

    invoke-static {v0, v1}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 4
    sget-object v0, Lf/a/a/a/i/a;->a:Lf/a/a/a/i/a;

    const-string v1, "http://system.nav.mucang.cn/notification-setting"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 5
    new-instance v0, Lf/a/a/a/i/g$d;

    invoke-direct {v0}, Lf/a/a/a/i/g$d;-><init>()V

    const-string v1, "http://core.nav.mucang.cn/openQuickApp"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 6
    new-instance v0, Lf/a/a/a/i/g$e;

    invoke-direct {v0}, Lf/a/a/a/i/g$e;-><init>()V

    const-string v1, "http://app.nav.mucang.cn/open"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

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
