.class Lcn/mucang/android/core/webview/core/page/WebViewPage$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/page/WebViewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/WebViewPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocol url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--|--callbackName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewPage"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applet.luban.mucang.cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/core/page/f;->n(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/core/page/f;->j(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/core/page/f;->q(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$500(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/core/page/f;->f(Landroid/net/Uri;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/core/page/f;->l(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$600(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/PageData;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p2}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/f;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/core/page/PageData;->setPageJsonData(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/core/utils/u;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p2}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$700(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$700(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage$h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->h(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_4
    :goto_1
    const-string p1, ""

    return-object p1
.end method
