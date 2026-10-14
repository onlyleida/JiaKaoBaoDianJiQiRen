.class public final Lcn/mucang/android/core/permission/setting/PermissionSettingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/permission/setting/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/core/permission/setting/PermissionSettingActivity$initView$1$2",
        "Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;",
        "onItemClick",
        "",
        "data",
        "Lcn/mucang/android/core/permission/setting/PermissionInfo;",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity$a;->a:Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/permission/setting/PermissionInfo;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity;->c:Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$a;

    iget-object v1, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity$a;->a:Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;

    invoke-virtual {p1}, Lcn/mucang/android/core/permission/setting/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/android/core/permission/setting/PermissionInfo;->getReason()Ljava/lang/String;

    move-result-object p1

    const-string v3, "data.reason"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity$a;->a:Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;

    invoke-static {v3}, Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;->g(Lcn/mucang/android/core/permission/setting/PermissionSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcn/mucang/android/core/permission/setting/PermissionDetailActivity$a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
