.class Lcn/mucang/android/core/api/verify/geetest/b$c$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/geetest/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/geetest/b$c;


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/api/verify/geetest/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/api/verify/geetest/b$c;Lcn/mucang/android/core/api/verify/geetest/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/verify/geetest/b$c$a;-><init>(Lcn/mucang/android/core/api/verify/geetest/b$c;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->b(Lcn/mucang/android/core/api/verify/geetest/b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->b(Lcn/mucang/android/core/api/verify/geetest/b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->h(Lcn/mucang/android/core/api/verify/geetest/b;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/geetest/b$b;->c(Ljava/lang/Boolean;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->e(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    const-string v0, "GtDialog"

    const-string v1, "webview did finish"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const-string v0, "GtDialog"

    const-string v1, "webview did start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object p1, p1, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, p2}, Lcn/mucang/android/core/api/verify/geetest/b;->c(Lcn/mucang/android/core/api/verify/geetest/b;Ljava/util/Timer;)Ljava/util/Timer;

    .line 4
    new-instance v1, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;-><init>(Lcn/mucang/android/core/api/verify/geetest/b$c$a;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object p1, p1, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/geetest/b;->b(Lcn/mucang/android/core/api/verify/geetest/b;)Ljava/util/Timer;

    move-result-object v0

    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object p1, p1, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/geetest/b;->g(Lcn/mucang/android/core/api/verify/geetest/b;)I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/geetest/b$b;->c(Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/core/api/verify/geetest/b$b;->a()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/geetest/b$b;->c(Ljava/lang/Boolean;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->e(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    iget-object p2, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object p2, p2, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p2}, Lcn/mucang/android/core/api/verify/geetest/b;->a(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
