.class public Lcn/mucang/android/jiakaoyi/framework/utils/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionModel;Lcn/mucang/android/core/permission/model/PermissionsResult;IILandroid/content/Intent;)V
    .locals 0

    const/16 p4, 0x44d

    if-ne p3, p4, :cond_1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p4, "\u60ac\u6d6e\u7a97\u6743\u9650\u7533\u8bf7\u6210\u529f"

    .line 2
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p4, "\u60ac\u6d6e\u7a97\u6743\u9650\u7533\u8bf7\u5931\u8d25"

    .line 3
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p1, p3}, Lcn/mucang/android/core/permission/model/PermissionModel;->setGranted(Z)V

    .line 5
    invoke-virtual {p2, p3}, Lcn/mucang/android/core/permission/model/PermissionsResult;->setGrantedAll(Z)V

    .line 6
    invoke-interface {p0, p2}, Lf/a/a/a/n/c/a;->permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/app/Activity;Lf/a/a/a/n/c/a;)V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/core/permission/model/PermissionsResult;

    invoke-direct {v0}, Lcn/mucang/android/core/permission/model/PermissionsResult;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/core/permission/model/PermissionModel;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-direct {v1, v2}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v1, p0}, Lcn/mucang/android/core/permission/model/PermissionModel;->setGranted(Z)V

    .line 5
    invoke-virtual {v0, p0}, Lcn/mucang/android/core/permission/model/PermissionsResult;->setGrantedAll(Z)V

    .line 6
    invoke-interface {p1, v0}, Lf/a/a/a/n/c/a;->permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const-string v6, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    if-lt v4, v5, :cond_1

    .line 8
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 9
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 11
    invoke-static {p0, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->a(Landroid/app/Activity;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/e0;

    move-result-object p0

    const/16 v2, 0x44d

    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/utils/j;

    invoke-direct {v4, p1, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/j;-><init>(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionModel;Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    invoke-virtual {p0, v3, v2, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    :cond_3
    return-void
.end method

.method public static varargs d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9
    :try_start_0
    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v2

    const/16 v3, 0x3ea

    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;

    invoke-direct {v4, v0, p1, p0, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;-><init>(Ljava/util/List;Lf/a/a/a/n/c/a;Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3, v4}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8df3\u8f6c\u7cfb\u7edf\u8bbe\u7f6e\u754c\u9762\u5931\u8d25: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    new-instance p0, Lcn/mucang/android/core/permission/model/PermissionsResult;

    const/4 p2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, v0}, Lcn/mucang/android/core/permission/model/PermissionsResult;-><init>(ZLjava/util/List;)V

    .line 12
    invoke-interface {p1, p0}, Lf/a/a/a/n/c/a;->permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
