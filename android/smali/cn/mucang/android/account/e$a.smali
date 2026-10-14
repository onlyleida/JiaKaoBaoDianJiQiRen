.class Lcn/mucang/android/account/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "checkType"

    .line 2
    invoke-static {p2, v0}, Lcn/mucang/android/account/e;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/api/data/CheckType;->from(Ljava/lang/String;)Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/account/api/data/CheckType;->FALSE:Lcn/mucang/android/account/api/data/CheckType;

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-static {p2, v1}, Lcn/mucang/android/account/e;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skipAuthRealName"

    .line 5
    invoke-static {p2, v2}, Lcn/mucang/android/account/e;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "skipBindThird"

    .line 6
    invoke-static {p2, v3}, Lcn/mucang/android/account/e;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "pageType"

    .line 7
    invoke-static {p2, v4}, Lcn/mucang/android/account/e;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "sms"

    .line 8
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-direct {v0, v1}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    .line 11
    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/account/AccountManager;->G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    goto :goto_0

    :cond_1
    const-string v4, "pwd"

    .line 12
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p2

    new-instance v4, Lcn/mucang/android/account/data/LoginModel;

    invoke-direct {v4, v0, v1}, Lcn/mucang/android/account/data/LoginModel;-><init>(Lcn/mucang/android/account/api/data/CheckType;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v2}, Lcn/mucang/android/account/data/LoginModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/mucang/android/account/data/LoginModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginModel;

    move-result-object v0

    .line 15
    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/account/AccountManager;->F(Landroid/content/Context;Lcn/mucang/android/account/data/LoginModel;)V

    goto :goto_0

    :cond_2
    const-string v0, "quicklogin"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-direct {v0, v1}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    .line 19
    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/account/AccountManager;->H(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-direct {v0, v1}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipBindThird(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    .line 22
    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/account/AccountManager;->G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
