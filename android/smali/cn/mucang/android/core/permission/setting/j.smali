.class public final synthetic Lcn/mucang/android/core/permission/setting/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/permission/setting/o;

.field public final synthetic b:Lcn/mucang/android/core/permission/setting/PermissionInfo;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/permission/setting/o;Lcn/mucang/android/core/permission/setting/PermissionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/j;->a:Lcn/mucang/android/core/permission/setting/o;

    iput-object p2, p0, Lcn/mucang/android/core/permission/setting/j;->b:Lcn/mucang/android/core/permission/setting/PermissionInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/j;->a:Lcn/mucang/android/core/permission/setting/o;

    iget-object v1, p0, Lcn/mucang/android/core/permission/setting/j;->b:Lcn/mucang/android/core/permission/setting/PermissionInfo;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/permission/setting/o;->b(Lcn/mucang/android/core/permission/setting/o;Lcn/mucang/android/core/permission/setting/PermissionInfo;Landroid/view/View;)V

    return-void
.end method
