.class public Lcn/mucang/android/account/AccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/AccountManager$ActionType;,
        Lcn/mucang/android/account/AccountManager$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/account/i/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/account/data/AuthUser;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/account/AccountManager;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/account/AccountManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/AccountManager;-><init>()V

    return-void
.end method

.method private A(Ljava/lang/String;Lcn/mucang/android/account/data/AuthUser;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "__user__"

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__user_auth_token__"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "__account_login_extra_data__"

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/w;->e(Landroid/content/Intent;)Z

    return-void
.end method

.method private static L(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static M(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/mucang/android/account/AccountManager;Lcn/mucang/android/account/i/c;Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/account/AccountManager;->d(Lcn/mucang/android/account/i/c;Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/account/AccountManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/AccountManager;->j()V

    return-void
.end method

.method private d(Lcn/mucang/android/account/i/c;Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/AccountManager$d;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Lcn/mucang/android/account/i/c;->c(Lcn/mucang/android/account/data/AuthUser;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1, p2}, Lcn/mucang/android/account/i/c;->b(Lcn/mucang/android/account/data/AuthUser;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p1, p2}, Lcn/mucang/android/account/i/c;->d(Lcn/mucang/android/account/data/AuthUser;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/account/i/c;->a()V

    goto :goto_0

    .line 6
    :cond_4
    invoke-interface {p1, p2}, Lcn/mucang/android/account/i/c;->e(Lcn/mucang/android/account/data/AuthUser;)V

    :goto_0
    return-void
.end method

.method private e()Lcn/mucang/android/account/data/AuthUser;
    .locals 12

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "_am_am_.db"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "authToken"

    const-string v3, ""

    .line 3
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    const-string v4, "expiredTime"

    const-wide/16 v6, -0x1

    .line 5
    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-lez v4, :cond_1

    return-object v5

    .line 7
    :cond_1
    new-instance v4, Lcn/mucang/android/account/data/AuthUser;

    invoke-direct {v4}, Lcn/mucang/android/account/data/AuthUser;-><init>()V

    .line 8
    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setAuthToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v8, v9}, Lcn/mucang/android/account/data/AuthUser;->setExpiredTime(J)V

    const-string v1, "passwordSet"

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setPasswordSet(Z)V

    const-string v1, "isCertified"

    .line 11
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setCertified(Z)V

    const-string v1, "nickname"

    const-string v2, "\u6728\u4ed3\u7528\u6237"

    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setNickname(Ljava/lang/String;)V

    const-string v1, "avatar"

    .line 13
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setAvatar(Ljava/lang/String;)V

    const-string v1, "largeAvatar"

    .line 14
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setLargeAvatar(Ljava/lang/String;)V

    const-string v1, "birthday"

    .line 15
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setBirthday(Ljava/lang/String;)V

    const-string v1, "cityCode"

    .line 16
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setCityCode(Ljava/lang/String;)V

    const-string v1, "cityName"

    .line 17
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setCityName(Ljava/lang/String;)V

    const-string v1, "createTime"

    .line 18
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcn/mucang/android/account/data/AuthUser;->setCreateTime(J)V

    const-string v1, "description"

    .line 19
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setDescription(Ljava/lang/String;)V

    const-string v1, "phone"

    .line 20
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setPhone(Ljava/lang/String;)V

    const-string v1, "gender"

    .line 21
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/account/api/data/Gender;->from(Ljava/lang/String;)Lcn/mucang/android/account/api/data/Gender;

    move-result-object v1

    if-nez v1, :cond_2

    .line 22
    sget-object v1, Lcn/mucang/android/account/api/data/Gender;->Female:Lcn/mucang/android/account/api/data/Gender;

    .line 23
    :cond_2
    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setGender(Lcn/mucang/android/account/api/data/Gender;)V

    const-string v1, "homePage"

    .line 24
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setHomePage(Ljava/lang/String;)V

    const-string v1, "mucangId"

    .line 25
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setMucangId(Ljava/lang/String;)V

    const-string v1, "checkType"

    .line 26
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/account/api/data/CheckType;->from(Ljava/lang/String;)Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v1

    if-nez v1, :cond_3

    .line 27
    sget-object v1, Lcn/mucang/android/account/api/data/CheckType;->FALSE:Lcn/mucang/android/account/api/data/CheckType;

    .line 28
    :cond_3
    invoke-virtual {v4, v1}, Lcn/mucang/android/account/data/AuthUser;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    const-string v1, "validDuration"

    .line 29
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcn/mucang/android/account/data/AuthUser;->setValidDuration(J)V

    :try_start_0
    const-string v1, "weChatUserEntity"

    .line 30
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    const-class v1, Lcn/mucang/android/account/data/WeChatUserEntity;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/data/WeChatUserEntity;

    .line 33
    invoke-virtual {v4, v0}, Lcn/mucang/android/account/data/AuthUser;->setWeChatUserEntity(Lcn/mucang/android/account/data/WeChatUserEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AccountManager"

    const-string v1, "read weChatUserEntity error"

    .line 34
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-object v4
.end method

.method private f(Lcn/mucang/android/account/data/AuthUser;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getValidDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setExpiredTime(J)V

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "_am_am_.db"

    .line 3
    invoke-virtual {p2, v1, v0}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authToken"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getExpiredTime()J

    move-result-wide v0

    const-string v2, "expiredTime"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nickname"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getGender()Lcn/mucang/android/account/api/data/Gender;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->L(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gender"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "avatar"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getLargeAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "largeAvatar"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "birthday"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cityCode"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cityName"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "homePage"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getMucangId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mucangId"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getCreateTime()J

    move-result-wide v0

    const-string v2, "createTime"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getCheckType()Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/account/AccountManager;->L(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkType"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getValidDuration()J

    move-result-wide v0

    const-string v2, "validDuration"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->isPasswordSet()Z

    move-result v0

    const-string v1, "passwordSet"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getPhone()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->isCertified()Z

    move-result v0

    const-string v1, "isCertified"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getWeChatUserEntity()Lcn/mucang/android/account/data/WeChatUserEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getWeChatUserEntity()Lcn/mucang/android/account/data/WeChatUserEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "weChatUserEntity"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static h()Lcn/mucang/android/account/AccountManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/AccountManager$e;->a:Lcn/mucang/android/account/AccountManager;

    return-object v0
.end method

.method private j()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/account/d;->b()V

    .line 2
    invoke-static {}, Lcn/mucang/android/account/j/k;->a()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/AccountManager;->e()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/account/AccountManager;->B(Lcn/mucang/android/account/data/AuthUser;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/AccountManager;->x()V

    .line 5
    sget-object v0, Lcn/mucang/android/account/c;->a:Lcn/mucang/android/account/c;

    invoke-static {v0}, Lf/a/a/a/s/e;->j(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lcn/mucang/android/account/a;->a:Lcn/mucang/android/account/a;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 7
    sget-object v0, Lf/a/a/d/a;->a:Lf/a/a/d/a;

    new-instance v1, Lcn/mucang/android/account/third/r;

    invoke-direct {v1}, Lcn/mucang/android/account/third/r;-><init>()V

    const-string v2, "BaseAssistResp.Login"

    invoke-virtual {v0, v2, v1}, Lf/a/a/d/a;->a(Ljava/lang/String;Lf/a/a/d/c;)V

    .line 8
    sget-object v0, Lcn/mucang/android/core/api/request/b;->a:Lcn/mucang/android/core/api/request/b;

    new-instance v1, Lcn/mucang/android/account/g/r/c;

    invoke-direct {v1}, Lcn/mucang/android/account/g/r/c;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/request/b;->b(Lcn/mucang/android/core/api/request/d/b;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v0

    const-class v1, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/l;->a(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    .line 11
    invoke-direct {p0, v0}, Lcn/mucang/android/account/AccountManager;->q(Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "cn.mucang.android.account.ACTION_VERIFIED"

    const-string v2, ""

    .line 2
    invoke-direct {p0, v1, v0, v2}, Lcn/mucang/android/account/AccountManager;->A(Ljava/lang/String;Lcn/mucang/android/account/data/AuthUser;Ljava/lang/String;)V

    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.mucang.android.account.ACTION_LOGIN_CANCELED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/w;->e(Landroid/content/Intent;)Z

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/AccountManager;->w(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cn.mucang.android.account.ACTION_LOGINED"

    .line 4
    invoke-direct {p0, v1, v0, p1}, Lcn/mucang/android/account/AccountManager;->A(Ljava/lang/String;Lcn/mucang/android/account/data/AuthUser;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private s(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 2

    const-string v0, "cn.mucang.android.account.ACTION_LOGOUT"

    const-string v1, ""

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcn/mucang/android/account/AccountManager;->A(Ljava/lang/String;Lcn/mucang/android/account/data/AuthUser;Ljava/lang/String;)V

    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/account/AccountManager;->A(Ljava/lang/String;Lcn/mucang/android/account/data/AuthUser;Ljava/lang/String;)V

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/l/a;->a()Lcn/mucang/android/account/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/l/a;->b()V

    .line 2
    invoke-static {}, Lcn/mucang/android/account/e;->c()V

    return-void
.end method


# virtual methods
.method B(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/AccountManager;->N()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/AccountManager;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method C(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "_am_am_.db"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcn/mucang/android/account/AccountManager;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "lastLoginMobile"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public D(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "\u6682\u4e0d\u652f\u6301\u5b9e\u540d\u8ba4\u8bc1"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public E(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public F(Landroid/content/Context;Lcn/mucang/android/account/data/LoginModel;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/account/activity/LoginActivity;->H(Landroid/content/Context;Lcn/mucang/android/account/data/LoginModel;)V

    return-void
.end method

.method public G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->B(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method public H(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/account/j/m;->i(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method public I(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcn/mucang/android/account/j/m;->k(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    return-void
.end method

.method public J(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/v;->a:Lcn/mucang/android/account/third/v;

    invoke-virtual {v0, p4}, Lcn/mucang/android/account/third/v;->a(Ljava/lang/String;)Lcn/mucang/android/account/third/u;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcn/mucang/android/account/third/z;->e(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Lcn/mucang/android/account/third/u;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public K(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;)Z
    .locals 2

    const-string v0, "com.tencent.mm"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/o0;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u60a8\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/account/third/v;->a:Lcn/mucang/android/account/third/v;

    const-string v1, "weixin"

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/third/v;->c(Ljava/lang/String;)Lcn/mucang/android/account/third/u;

    move-result-object v0

    .line 5
    invoke-static {p1, p2, p3, v0}, Lcn/mucang/android/account/third/z;->e(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Lcn/mucang/android/account/third/u;)Z

    move-result p1

    return p1
.end method

.method public N()V
    .locals 1

    const-string v0, "authToken"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/api/f/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method O(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/account/data/AuthUser;->setCertified(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    return-void
.end method

.method P(Lcn/mucang/android/account/api/data/CheckType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    if-ne p1, v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/AccountManager;->o()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/data/AuthUser;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    return-void
.end method

.method Q()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/AccountManager;->p()V

    return-void
.end method

.method R(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/account/data/AuthUser;->setPasswordSet(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    return-void
.end method

.method S(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/account/data/AuthUser;->setPhone(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    const-string p1, "cn.mucang.android.account.ACTION_PHONE_CHANGED"

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/account/AccountManager;->t(Ljava/lang/String;)V

    return-void
.end method

.method public T(Lcn/mucang/android/account/api/data/UpdateUserInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setNickname(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getGender()Lcn/mucang/android/account/api/data/Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setGender(Lcn/mucang/android/account/api/data/Gender;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setAvatar(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setBirthday(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setCityName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setCityCode(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/AuthUser;->setDescription(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->getWeChatUserEntity()Lcn/mucang/android/account/data/WeChatUserEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/data/AuthUser;->setWeChatUserEntity(Lcn/mucang/android/account/data/WeChatUserEntity;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    const-string p1, "cn.mucang.android.account.ACTION_PROFILE_UPDATE"

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/account/AccountManager;->t(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcn/mucang/android/account/i/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->a:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/account/AccountManager;->a:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()Lcn/mucang/android/account/data/AuthUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "_am_am_.db"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastLoginMobile"

    const-string v2, ""

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->isCertified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->b:Lcn/mucang/android/account/data/AuthUser;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcn/mucang/android/account/AccountManager;->B(Lcn/mucang/android/account/data/AuthUser;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "_am_am_.db"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "authToken"

    .line 6
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "expiredTime"

    .line 7
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "nickname"

    .line 8
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "gender"

    .line 9
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "avatar"

    .line 10
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "birthday"

    .line 11
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "cityCode"

    .line 12
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "cityName"

    .line 13
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "description"

    .line 14
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "homePage"

    .line 15
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "mucangId"

    .line 16
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "createTime"

    .line 17
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "checkType"

    .line 18
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "validDuration"

    .line 19
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "passwordSet"

    .line 20
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "phone"

    .line 21
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->N()V

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0, v0}, Lcn/mucang/android/account/AccountManager;->s(Lcn/mucang/android/account/data/AuthUser;)V

    :cond_0
    return-void
.end method

.method n(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager;->a:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/account/AccountManager;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/account/i/c;

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-direct {p0, v2, p1, p2}, Lcn/mucang/android/account/AccountManager;->d(Lcn/mucang/android/account/i/c;Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Lcn/mucang/android/account/AccountManager$b;

    invoke-direct {v3, p0, v2, p1, p2}, Lcn/mucang/android/account/AccountManager$b;-><init>(Lcn/mucang/android/account/AccountManager;Lcn/mucang/android/account/i/c;Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V

    invoke-static {v3}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method r(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/AccountManager;->q(Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/account/j/i;->l(Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/j/m;->l()Z

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/AccountManager$c;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/AccountManager$c;-><init>(Lcn/mucang/android/account/AccountManager;Ljava/lang/String;)V

    const-string p1, "authToken"

    invoke-static {p1, v0}, Lcn/mucang/android/core/api/f/c;->g(Ljava/lang/String;Lcn/mucang/android/core/api/f/c$a;)V

    return-void
.end method

.method public y(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/account/AccountManager;->z(Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V

    return-void
.end method

.method z(Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V
    .locals 5

    const-string v0, "AccountManager"

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/account/AccountManager$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/account/AccountManager$a;-><init>(Lcn/mucang/android/account/AccountManager;Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Lcn/mucang/android/account/g/o;

    invoke-direct {v2}, Lcn/mucang/android/account/g/o;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/account/g/o;->f(Ljava/lang/String;)Lcn/mucang/android/account/data/WeChatUserEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/account/data/WeChatUserEntity;->getMucangId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->getMucangId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p1, v2}, Lcn/mucang/android/account/data/AuthUser;->setWeChatUserEntity(Lcn/mucang/android/account/data/WeChatUserEntity;)V

    goto :goto_0

    :cond_2
    const-string v2, "WeChatUserEntity get data is error"

    .line 6
    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-direct {p0, p1, v1}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    .line 8
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/AccountManager;->B(Lcn/mucang/android/account/data/AuthUser;)V

    if-eqz p2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 9
    :try_start_1
    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-direct {p0, p1, v1}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/AccountManager;->B(Lcn/mucang/android/account/data/AuthUser;)V

    if-eqz p2, :cond_3

    .line 12
    :goto_1
    invoke-direct {p0, p3}, Lcn/mucang/android/account/AccountManager;->q(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 13
    :goto_2
    invoke-direct {p0, p1, v1}, Lcn/mucang/android/account/AccountManager;->f(Lcn/mucang/android/account/data/AuthUser;Z)V

    .line 14
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/AccountManager;->B(Lcn/mucang/android/account/data/AuthUser;)V

    if-eqz p2, :cond_4

    .line 15
    invoke-direct {p0, p3}, Lcn/mucang/android/account/AccountManager;->q(Ljava/lang/String;)V

    .line 16
    :cond_4
    throw v0
.end method
