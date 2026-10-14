.class final Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/utils/d0;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lf/a/a/a/n/c/a;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Lf/a/a/a/n/c/a;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->b:Lf/a/a/a/n/c/a;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestCode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onActivityResult"

    invoke-static {p3, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_3

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "!Environment.isExternalStorageManager():"

    .line 3
    invoke-static {p3, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->a:Ljava/util/List;

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lcn/mucang/android/core/permission/model/PermissionModel;

    invoke-direct {p2, p3, v1, v0}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->a:Ljava/util/List;

    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lcn/mucang/android/core/permission/model/PermissionModel;

    invoke-direct {p2, p3, v1, v0}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    new-instance p2, Lcn/mucang/android/core/permission/model/PermissionsResult;

    invoke-direct {p2, v1, p1}, Lcn/mucang/android/core/permission/model/PermissionsResult;-><init>(ZLjava/util/List;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->b:Lf/a/a/a/n/c/a;

    invoke-interface {p1, p2}, Lf/a/a/a/n/c/a;->permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    goto :goto_0

    :cond_2
    const-string p1, "requestPermissions:"

    .line 11
    invoke-static {p3, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->c:Landroid/app/Activity;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->b:Lf/a/a/a/n/c/a;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d0$a;->d:[Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
