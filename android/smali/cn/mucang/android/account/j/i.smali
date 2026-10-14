.class public final Lcn/mucang/android/account/j/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0007J\u0018\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/account/one_key_login/NumberAuthUtils;",
        "",
        "()V",
        "MAX_TIME_OUT",
        "",
        "TAG",
        "",
        "isAvailable",
        "",
        "mPhoneNumberAuthHelper",
        "Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;",
        "getResultWithToken",
        "",
        "token",
        "phoneNumber",
        "listener",
        "Lcn/mucang/android/account/one_key_login/INumAuthResultListener;",
        "initNumAuth",
        "numberAuth",
        "account_release"
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
.field public static final a:Lcn/mucang/android/account/j/i;

.field private static b:Z = true

.field private static c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/account/j/i;

    invoke-direct {v0}, Lcn/mucang/android/account/j/i;-><init>()V

    sput-object v0, Lcn/mucang/android/account/j/i;->a:Lcn/mucang/android/account/j/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/j/i;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    return-object v0
.end method

.method public static final synthetic b(Lcn/mucang/android/account/j/i;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/account/j/i;->d(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    return-void
.end method

.method public static final synthetic c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/account/j/i;->b:Z

    return-void
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/j/c;

    invoke-direct {v0, p1, p2, p3}, Lcn/mucang/android/account/j/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final e(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 3

    const-string v0, "ERROR"

    const-string v1, "$phoneNumber"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$listener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Lcn/mucang/android/account/j/p/b;

    invoke-direct {v2}, Lcn/mucang/android/account/j/p/b;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcn/mucang/android/account/j/p/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/NumAuthResponse;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/account/api/data/NumAuthResponse;->getVerifyResult()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NumberAuthUtils"

    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    new-instance p0, Lcn/mucang/android/account/j/a;

    invoke-direct {p0, p2, v1}, Lcn/mucang/android/account/j/a;-><init>(Lcn/mucang/android/account/j/h;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/account/j/h;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcn/mucang/android/account/j/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final g()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/j/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/account/j/b;->a:Lcn/mucang/android/account/j/b;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final h()V
    .locals 4

    :try_start_0
    const-string v0, "core_ali"

    const-string v1, "ali_secret"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 3
    new-instance v0, Lcn/mucang/android/account/j/p/a;

    invoke-direct {v0}, Lcn/mucang/android/account/j/p/a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/account/j/p/a;->c()Lcn/mucang/android/account/api/data/AliSecretResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/AliSecretResponse;->getSecret()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_5

    .line 6
    sput-boolean v1, Lcn/mucang/android/account/j/i;->b:Z

    return-void

    .line 7
    :cond_5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/account/j/i$a;

    invoke-direct {v3}, Lcn/mucang/android/account/j/i$a;-><init>()V

    invoke-static {v1, v3}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getInstance(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/account/j/i;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v1, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getReporter()Lcom/mobile/auth/gatewayauth/PnsReporter;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/mobile/auth/gatewayauth/PnsReporter;->setLoggerEnable(Z)V

    .line 9
    :goto_4
    sget-object v1, Lcn/mucang/android/account/j/i;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthSDKInfo(Ljava/lang/String;)V

    .line 10
    :goto_5
    sget-object v0, Lcn/mucang/android/account/j/i;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->checkEnvAvailable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/account/j/h;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/j/i;->f(Lcn/mucang/android/account/j/h;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/account/j/i;->h()V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/j/i;->e(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    return-void
.end method

.method public static final l(Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcn/mucang/android/account/j/i;->b:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/mucang/android/account/j/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/account/j/i$b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/j/i$b;-><init>(Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    .line 3
    sget-object p0, Lcn/mucang/android/account/j/i;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    .line 4
    :goto_0
    sget-object p0, Lcn/mucang/android/account/j/i;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getVerifyToken(I)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p0, "number_auth"

    const-string v0, "\u53f7\u7801\u8ba4\u8bc1\u4e0d\u53ef\u7528"

    .line 5
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-interface {p1, v0}, Lcn/mucang/android/account/j/h;->a(Ljava/lang/String;)V

    return-void
.end method
