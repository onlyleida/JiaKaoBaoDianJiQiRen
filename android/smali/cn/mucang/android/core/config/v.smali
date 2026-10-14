.class public Lcn/mucang/android/core/config/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/config/v;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/core/config/v$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/config/v$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcn/mucang/android/core/config/v;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static declared-synchronized c(Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcn/mucang/android/core/config/v;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/db/a;->G()Lcn/mucang/android/core/config/db/a;

    move-result-object v1

    .line 2
    const-class v2, Lcn/mucang/android/core/config/db/RemoteConfigEntity;

    const-string v3, "select * from t_remote_config where remote_key = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    .line 3
    invoke-static {v3, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/config/db/RemoteConfigEntity;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->getRemoteKeyCount()I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v2, p0}, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->setRemoteKeyCount(I)V

    .line 6
    invoke-virtual {v1, v2}, Lcn/mucang/android/core/db/a;->w(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lcn/mucang/android/core/config/db/RemoteConfigEntity;

    invoke-direct {v2}, Lcn/mucang/android/core/config/db/RemoteConfigEntity;-><init>()V

    .line 8
    invoke-virtual {v2, p0}, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->setRemoteKey(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v4}, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->setRemoteKeyCount(I)V

    .line 10
    invoke-virtual {v1, v2}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->a()V

    .line 2
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "uploadRemoteConfig"

    .line 3
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "UploadRemoteConfigManger.dayRunnerName"

    invoke-static {v0, v1}, Lcn/mucang/android/core/misc/a;->e(Landroid/content/Context;Ljava/lang/String;)Lcn/mucang/android/core/misc/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/core/misc/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcn/mucang/android/core/config/v$b;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/config/v$b;-><init>(Lcn/mucang/android/core/misc/a;)V

    invoke-static {v1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
