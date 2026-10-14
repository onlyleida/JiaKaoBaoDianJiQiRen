.class Lcn/mucang/android/core/webview/core/MucangWebView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/MucangWebView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/MucangWebView;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$b;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView$b;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView$b;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "exception"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
