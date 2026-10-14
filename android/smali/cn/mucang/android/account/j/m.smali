.class public Lcn/mucang/android/account/j/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper; = null

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/account/j/m;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    new-instance v1, Lcn/mucang/android/account/j/m$b;

    invoke-direct {v1}, Lcn/mucang/android/account/j/m$b;-><init>()V

    const/16 v2, 0x1388

    invoke-virtual {v0, v2, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->accelerateLoginPage(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V

    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/account/j/m;->b:Z

    return p0
.end method

.method private static c(Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;)Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/account/data/AccountBaseModel;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/account/data/AccountBaseModel;->setExtraData(Ljava/lang/String;)Lcn/mucang/android/account/data/AccountBaseModel;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/data/LoginModel;->isSkipAuthRealName()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/account/data/AccountBaseModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/AccountBaseModel;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/account/data/LoginModel;->isSkipBindThird()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcn/mucang/android/account/data/AccountBaseModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/AccountBaseModel;

    return-object p1
.end method

.method public static d()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/j/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/account/j/f;->a:Lcn/mucang/android/account/j/f;

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e()Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/s;->h()Lcn/mucang/android/core/config/s;

    move-result-object v0

    const-string v1, "ali_quick_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/config/s;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic f()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/account/j/p/a;

    invoke-direct {v0}, Lcn/mucang/android/account/j/p/a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/account/j/p/a;->c()Lcn/mucang/android/account/api/data/AliSecretResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ali_secret"

    const-string v2, "core_ali"

    if-eqz v0, :cond_2

    .line 2
    :try_start_1
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/AliSecretResponse;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/AliSecretResponse;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v1, Lcn/mucang/android/account/j/m$a;

    invoke-direct {v1}, Lcn/mucang/android/account/j/m$a;-><init>()V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getInstance(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/account/j/m;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    .line 7
    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getReporter()Lcom/mobile/auth/gatewayauth/PnsReporter;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/mobile/auth/gatewayauth/PnsReporter;->setLoggerEnable(Z)V

    .line 8
    sget-object v1, Lcn/mucang/android/account/j/m;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/AliSecretResponse;->getSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthSDKInfo(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcn/mucang/android/account/j/m;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->checkEnvAvailable(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, ""

    .line 10
    invoke-static {v2, v1, v0}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic g(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/account/j/m;->k(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "str1"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "str2"

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "common"

    .line 7
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p2, Lcn/mucang/android/account/n/a;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lcn/mucang/android/core/utils/l0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public static i(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/j/n;

    invoke-direct {v0}, Lcn/mucang/android/account/j/n;-><init>()V

    invoke-static {p0, p1, v0}, Lcn/mucang/android/account/j/m;->j(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;)V

    return-void
.end method

.method public static j(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcn/mucang/android/account/j/m;->k(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/account/j/k;->b(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcn/mucang/android/account/j/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/account/j/g;-><init>(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_1
    sget-boolean v0, Lcn/mucang/android/account/j/m;->b:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcn/mucang/android/account/j/m;->e()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "core_ali"

    const-string v1, "ali_secret"

    const-string v2, ""

    .line 6
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {p2, p0, p1}, Lcn/mucang/android/account/j/j;->a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void

    .line 9
    :cond_3
    sget-object v2, Lcn/mucang/android/account/j/o/j;->a:Lcn/mucang/android/account/j/o/j;

    new-instance v4, Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;

    invoke-direct {v4, v0}, Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v4}, Lcn/mucang/android/account/j/m;->c(Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;)Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/account/j/o/j;->u(Landroid/content/Context;Lcn/mucang/android/account/one_key_login/model/QuickLoginModel;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    return-void

    .line 12
    :cond_4
    :goto_0
    invoke-interface {p2, p0, p1}, Lcn/mucang/android/account/j/j;->a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method public static l()Z
    .locals 3

    const-string v0, "core_ali"

    const-string v1, "ali_secret"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcn/mucang/android/account/j/m;->b:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/mucang/android/account/j/m;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
