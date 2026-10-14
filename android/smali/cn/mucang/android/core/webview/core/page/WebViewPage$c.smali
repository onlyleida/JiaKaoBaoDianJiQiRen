.class Lcn/mucang/android/core/webview/core/page/WebViewPage$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/MucangWebView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/WebViewPage;->createContentView(Lcn/mucang/android/core/ui/page/PageArgument;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

.field final synthetic b:Lcn/mucang/android/core/webview/core/page/WebViewPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$c;->b:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$c;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$c;->b:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$c;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
