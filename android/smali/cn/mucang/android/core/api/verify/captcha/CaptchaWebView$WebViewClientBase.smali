.class Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$200(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$800(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)V

    const-string v0, "captcha"

    const-string v1, "webview did Finished"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "captcha"

    const-string v1, "webview did start"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3
    new-instance p1, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$600(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    const/4 p3, 0x1

    new-instance v1, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    invoke-direct {v1, v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$602(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$600(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {p3}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$700(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)I

    move-result p3

    int-to-long v0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p1, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_0

    const/16 p1, -0xe

    if-ne p2, p1, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "errorERROR_FILE_NOT_FOUND"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/16 v0, -0xe

    if-ne p1, v0, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "captcha"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "onReceivedHttpError "

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "captcha"

    const-string p3, "onReceivedHttpError "

    .line 2
    invoke-static {p1, p3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

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
    iget-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
