.class public Lcn/mucang/android/account/third/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Lcn/mucang/android/account/data/MCUserInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/ThirdLoginRequest;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/third/z;->d(Lcn/mucang/android/account/data/MCUserInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/app/Activity;Lcn/mucang/android/account/api/data/ThirdLoginRequest;ILcn/mucang/android/account/data/LoginModel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/account/third/z;->c(Landroid/app/Activity;Lcn/mucang/android/account/api/data/ThirdLoginRequest;ILcn/mucang/android/account/data/LoginModel;)V

    return-void
.end method

.method private static c(Landroid/app/Activity;Lcn/mucang/android/account/api/data/ThirdLoginRequest;ILcn/mucang/android/account/data/LoginModel;)V
    .locals 2

    const-string v0, "hadeslee"

    const-string v1, "\u5f00\u59cb\u63d0\u4ea4\u7b2c\u4e09\u65b9\u6570\u636e\u81f3\u670d\u52a1\u5668"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcn/mucang/android/account/third/z$b;

    invoke-direct {v0, p1, p3, p0, p2}, Lcn/mucang/android/account/third/z$b;-><init>(Lcn/mucang/android/account/api/data/ThirdLoginRequest;Lcn/mucang/android/account/data/LoginModel;Landroid/app/Activity;I)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d(Lcn/mucang/android/account/data/MCUserInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/ThirdLoginRequest;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    invoke-direct {v0}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setAppId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setThirdParty(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/account/data/MCUserInfo;->getOpenId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setOpenId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/account/data/MCUserInfo;->getUnionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setUnionId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/account/data/MCUserInfo;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/account/data/MCUserInfo;->getGender()Lcn/mucang/android/account/api/data/Gender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/account/data/MCUserInfo;->getGender()Lcn/mucang/android/account/api/data/Gender;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setGender(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/account/data/MCUserInfo;->getNickname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/api/data/ThirdLoginRequest;->setNickname(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Lcn/mucang/android/account/third/u;)Z
    .locals 1

    if-nez p2, :cond_0

    const-string p0, "ThirdLoginManager"

    const-string p1, "loginModel \u4e0d\u80fd\u4e3a\u7a7a"

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-interface {p3}, Lcn/mucang/android/account/third/u;->c()V

    .line 4
    new-instance v0, Lcn/mucang/android/account/third/z$a;

    invoke-direct {v0, p3, p2, p0, p1}, Lcn/mucang/android/account/third/z$a;-><init>(Lcn/mucang/android/account/third/u;Lcn/mucang/android/account/data/LoginModel;Landroid/app/Activity;I)V

    .line 5
    invoke-interface {p3, p0, v0}, Lcn/mucang/android/account/third/u;->b(Landroid/app/Activity;Lcn/mucang/android/account/third/s;)V

    const/4 p0, 0x1

    return p0
.end method
