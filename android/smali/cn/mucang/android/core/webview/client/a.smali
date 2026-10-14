.class public final synthetic Lcn/mucang/android/core/webview/client/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/n/c/a;


# instance fields
.field public final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/client/a;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p2, p0, Lcn/mucang/android/core/webview/client/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/webview/client/a;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcn/mucang/android/core/webview/client/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/webview/client/e;->b(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method
