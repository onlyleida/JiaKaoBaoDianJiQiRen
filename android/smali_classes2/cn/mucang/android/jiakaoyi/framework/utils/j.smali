.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# instance fields
.field public final synthetic a:Lf/a/a/a/n/c/a;

.field public final synthetic b:Lcn/mucang/android/core/permission/model/PermissionModel;

.field public final synthetic c:Lcn/mucang/android/core/permission/model/PermissionsResult;


# direct methods
.method public synthetic constructor <init>(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionModel;Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/j;->a:Lf/a/a/a/n/c/a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/j;->b:Lcn/mucang/android/core/permission/model/PermissionModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/j;->c:Lcn/mucang/android/core/permission/model/PermissionsResult;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/j;->a:Lf/a/a/a/n/c/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/j;->b:Lcn/mucang/android/core/permission/model/PermissionModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/j;->c:Lcn/mucang/android/core/permission/model/PermissionsResult;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->b(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionModel;Lcn/mucang/android/core/permission/model/PermissionsResult;IILandroid/content/Intent;)V

    return-void
.end method
