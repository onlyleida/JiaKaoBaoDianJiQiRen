.class public Lcn/mucang/android/account/third/QQLoginAssistActivity;
.super Lcn/mucang/android/account/third/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field private d:Lcom/tencent/tauth/Tencent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/third/q;-><init>()V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/third/QQLoginAssistActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/third/QQLoginAssistActivity;->l(Lorg/json/JSONObject;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    const-string v1, "all"

    invoke-virtual {v0, p0, v1, p0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    return-void
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/third/QQLoginAssistActivity;->m(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "fail to update client info"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/account/third/q;->a(ILjava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/tencent/connect/UserInfo;

    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/tencent/connect/UserInfo;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 4
    new-instance v0, Lcn/mucang/android/account/third/QQLoginAssistActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/third/QQLoginAssistActivity$a;-><init>(Lcn/mucang/android/account/third/QQLoginAssistActivity;)V

    invoke-virtual {p1, v0}, Lcom/tencent/connect/UserInfo;->getUserInfo(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public static k(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/account/third/QQLoginAssistActivity;

    invoke-static {p0, v0, p1, p2, p3}, Lcn/mucang/android/account/third/q;->g(Landroid/content/Context;Ljava/lang/Class;JLjava/lang/String;)V

    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/account/data/MCUserInfo;

    invoke-direct {v1}, Lcn/mucang/android/account/data/MCUserInfo;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/data/MCUserInfo;->setAccessToken(Ljava/lang/String;)Lcn/mucang/android/account/data/MCUserInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/mucang/android/account/data/MCUserInfo;->setOpenId(Ljava/lang/String;)Lcn/mucang/android/account/data/MCUserInfo;

    move-result-object v0

    const-string v2, "nickname"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/MCUserInfo;->setNickname(Ljava/lang/String;)Lcn/mucang/android/account/data/MCUserInfo;

    move-result-object v0

    const-string v2, "figureurl_qq_2"

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/account/data/MCUserInfo;->setAvatar(Ljava/lang/String;)Lcn/mucang/android/account/data/MCUserInfo;

    move-result-object v0

    const-string v2, "gender"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u7537"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcn/mucang/android/account/api/data/Gender;->Male:Lcn/mucang/android/account/api/data/Gender;

    goto :goto_0

    :cond_0
    sget-object p1, Lcn/mucang/android/account/api/data/Gender;->Female:Lcn/mucang/android/account/api/data/Gender;

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/account/data/MCUserInfo;->setGender(Lcn/mucang/android/account/api/data/Gender;)Lcn/mucang/android/account/data/MCUserInfo;

    .line 9
    invoke-virtual {p0, v1}, Lcn/mucang/android/account/third/q;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private m(Lorg/json/JSONObject;)Z
    .locals 4

    const-string v0, "access_token"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "expires_in"

    .line 2
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openid"

    .line 3
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/third/q;->b(Landroid/os/Bundle;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lf/a/a/d/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".file.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lf/a/a/d/b;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity;->d:Lcom/tencent/tauth/Tencent;

    if-nez p1, :cond_1

    const/4 p1, -0x2

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fail to create Tencent Instance"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/account/third/q;->a(ILjava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/account/third/QQLoginAssistActivity;->i()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-static {p1, p2, p3, p0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/third/q;->d()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcn/mucang/android/account/third/QQLoginAssistActivity;->j(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    new-instance v1, Ljava/lang/Exception;

    iget-object p1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/account/third/q;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onWarning(I)V
    .locals 2

    const-string v0, "QQAssistActivity"

    const-string v1, "\u9700\u8981\u7528FileProvider\u6765\u5206\u4eab\u6570\u636e"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/account/third/q;->a(ILjava/lang/Throwable;)V

    return-void
.end method
