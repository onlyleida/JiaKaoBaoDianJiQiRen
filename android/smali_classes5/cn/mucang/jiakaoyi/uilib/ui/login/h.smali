.class public Lcn/mucang/jiakaoyi/uilib/ui/login/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;


# direct methods
.method public static declared-synchronized a()Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;
    .locals 7

    const-class v0, Lcn/mucang/jiakaoyi/uilib/ui/login/h;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v2

    .line 3
    :cond_0
    :try_start_1
    sget-object v3, Lcn/mucang/jiakaoyi/uilib/ui/login/h;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 4
    monitor-exit v0

    return-object v3

    .line 5
    :cond_1
    :try_start_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    const-string v4, "coach_user"

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "authToken"

    .line 7
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 9
    monitor-exit v0

    return-object v2

    .line 10
    :cond_2
    :try_start_3
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;-><init>()V

    const-string v4, "deviceNum"

    const-string v6, ""

    .line 11
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->deviceNum:Ljava/lang/String;

    const-string v4, "areaCode"

    const-string v6, ""

    .line 12
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->areaCode:Ljava/lang/String;

    const-string v4, "areaName"

    const-string v6, ""

    .line 13
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->areaName:Ljava/lang/String;

    const-string v4, "avatar"

    const-string v6, ""

    .line 14
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->avatar:Ljava/lang/String;

    const-string v4, "drivingSchoolId"

    const-string v6, ""

    .line 15
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->drivingSchoolId:Ljava/lang/String;

    const-string v4, "drivingSchoolName"

    const-string v6, ""

    .line 16
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->drivingSchoolName:Ljava/lang/String;

    const-string v4, "phoneEncrypted"

    const-string v6, ""

    .line 17
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->phoneEncrypted:Ljava/lang/String;

    const-string v4, "phoneFeature"

    const-string v6, ""

    .line 18
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->phoneFeature:Ljava/lang/String;

    const-string v4, "phoneMask"

    const-string v6, ""

    .line 19
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->phoneMask:Ljava/lang/String;

    const-string v4, "role"

    const-string v6, ""

    .line 20
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->role:Ljava/lang/String;

    const-string v4, "userName"

    const-string v6, ""

    .line 21
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->userName:Ljava/lang/String;

    const-string v4, "wechatId"

    const-string v6, ""

    .line 22
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->wechatId:Ljava/lang/String;

    const-string v4, "proxyLevel"

    .line 23
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->proxyLevel:I

    const-string v4, "status"

    const/16 v6, 0xa

    .line 24
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->status:I

    const-string v4, "type"

    .line 25
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->type:I

    .line 26
    iput-object v1, v2, Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;->authUser:Lcn/mucang/android/account/data/AuthUser;

    .line 27
    sput-object v2, Lcn/mucang/jiakaoyi/uilib/ui/login/h;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/login/k/a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/login/k/a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/login/k/a;->m()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized c()V
    .locals 4

    const-class v0, Lcn/mucang/jiakaoyi/uilib/ui/login/h;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lcn/mucang/jiakaoyi/uilib/ui/login/h;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;

    .line 2
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->a()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "coach_user"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->m()V

    .line 9
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/login/e;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/e;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
