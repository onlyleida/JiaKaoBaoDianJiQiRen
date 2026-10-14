.class Lcn/mucang/android/core/webview/core/page/WebViewPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/page/WebViewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/WebViewPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$a;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$a;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$a;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->destroy()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$a;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$002(Lcn/mucang/android/core/webview/core/page/WebViewPage;Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/MucangWebView;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/c;->b()Lcn/mucang/android/core/webview/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$a;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$100(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/c$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/c;->d(Lcn/mucang/android/core/webview/c$c;)V

    :cond_0
    return-void
.end method
