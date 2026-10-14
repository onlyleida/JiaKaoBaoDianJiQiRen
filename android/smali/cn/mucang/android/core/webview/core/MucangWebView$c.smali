.class Lcn/mucang/android/core/webview/core/MucangWebView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/MucangWebView;->q()V
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
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$c;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView$c;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->c(Lcn/mucang/android/core/webview/core/MucangWebView;)Landroid/webkit/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/core/webview/core/MucangWebView$c;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/MiscUtils;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView$c;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->c(Lcn/mucang/android/core/webview/core/MucangWebView;)Landroid/webkit/DownloadListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
