.class Lcn/mucang/android/core/webview/client/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/k/b$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/client/e;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/client/e;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/core/webview/client/e$d;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcn/mucang/android/core/webview/client/e$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e$d;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcn/mucang/android/core/webview/client/e$d;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e$d;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcn/mucang/android/core/webview/client/e$d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
