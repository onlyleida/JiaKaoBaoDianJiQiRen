.class Lcn/mucang/android/core/webview/core/page/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/f;->f(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

.field final synthetic b:Lcn/mucang/android/core/webview/core/page/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/f;Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f$c;->b:Lcn/mucang/android/core/webview/core/page/f;

    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/f$c;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$c;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f$c;->b:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v1}, Lcn/mucang/android/core/webview/core/page/f;->b(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/webview/core/page/WebViewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setUrl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$c;->b:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/f;->a(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/ui/page/d;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f$c;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/ui/page/d;->E(Lcn/mucang/android/core/ui/page/PageArgument;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$c;->b:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/f;->a(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/ui/page/d;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f$c;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getPageNme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/ui/page/d;->B(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$c;->b:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/f;->b(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/webview/core/page/WebViewPage;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f$c;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->updateTheme(Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V

    return-void
.end method
