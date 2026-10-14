.class public final synthetic Lcn/mucang/android/core/permission/setting/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/g;->a:Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;

    iput-object p2, p0, Lcn/mucang/android/core/permission/setting/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/g;->a:Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;

    iget-object v1, p0, Lcn/mucang/android/core/permission/setting/g;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->l(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;Ljava/util/List;)V

    return-void
.end method
