.class public Lcn/mucang/android/account/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/account/api/data/UserInfoResponse;)Lcn/mucang/android/account/api/data/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/account/n/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/account/g/h;

    invoke-direct {v0}, Lcn/mucang/android/account/g/h;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/account/g/h;->f(Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/account/api/data/b;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/account/api/data/b;-><init>(Lcn/mucang/android/account/api/data/UserInfoResponse;Z)V

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/AccountManager;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcn/mucang/android/account/data/AccountBaseModel;Lcn/mucang/android/account/api/data/b;)V
    .locals 1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/d;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcn/mucang/android/account/n/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p2, p2, Lcn/mucang/android/account/api/data/b;->b:Z

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AccountBaseModel;->isSkipBindThird()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    instance-of v0, p0, Lcn/mucang/android/account/activity/l1;

    if-nez v0, :cond_3

    const-string v0, "__key_extra_model__"

    .line 7
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8
    :cond_3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static e(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/data/AccountBaseModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AccountBaseModel;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AccountBaseModel;->getExtraData()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3
    :goto_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lcn/mucang/android/account/AccountManager;->z(Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V

    return-void
.end method

.method public static f(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/data/AccountBaseModel;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AccountBaseModel;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AccountBaseModel;->getExtraData()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3
    :goto_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcn/mucang/android/account/AccountManager;->z(Lcn/mucang/android/account/data/AuthUser;ZLjava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/AccountManager;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static h(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/AccountManager;->O(Z)V

    return-void
.end method

.method public static i(Lcn/mucang/android/account/api/data/CheckType;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/AccountManager;->P(Lcn/mucang/android/account/api/data/CheckType;)V

    return-void
.end method

.method public static j()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->Q()V

    return-void
.end method

.method public static k(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/AccountManager;->R(Z)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/AccountManager;->S(Ljava/lang/String;)V

    return-void
.end method

.method public static m(Lcn/mucang/android/account/api/data/UpdateUserInfo;)V
    .locals 4

    const-string v0, "InnerHelper"

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/account/f$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/f$a;-><init>(Lcn/mucang/android/account/api/data/UpdateUserInfo;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    :try_start_0
    new-instance v2, Lcn/mucang/android/account/g/o;

    invoke-direct {v2}, Lcn/mucang/android/account/g/o;-><init>()V

    invoke-virtual {v1}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/account/g/o;->f(Ljava/lang/String;)Lcn/mucang/android/account/data/WeChatUserEntity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/account/data/WeChatUserEntity;->getMucangId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/mucang/android/account/data/AuthUser;->getMucangId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Lcn/mucang/android/account/api/data/UpdateUserInfo;->setWeChatUserEntity(Lcn/mucang/android/account/data/WeChatUserEntity;)V

    goto :goto_0

    :cond_3
    const-string v1, "WeChatUserEntity get data is error"

    .line 7
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/account/AccountManager;->T(Lcn/mucang/android/account/api/data/UpdateUserInfo;)V

    return-void

    :goto_1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/mucang/android/account/AccountManager;->T(Lcn/mucang/android/account/api/data/UpdateUserInfo;)V

    .line 10
    throw v0
.end method
