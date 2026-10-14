.class public Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;,
        Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebChromeClientBase;
    }
.end annotation


# instance fields
.field private captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

.field private captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

.field private context:Landroid/content/Context;

.field private mTimeout:I

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClientBase:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->webView:Landroid/webkit/WebView;

    const/16 v0, 0x2710

    .line 3
    iput v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mTimeout:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mWebViewClientBase:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->context:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 9
    iput-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    .line 10
    new-instance p1, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    invoke-direct {p1, p0, v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$1;)V

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mWebViewClientBase:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    .line 11
    new-instance p1, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebChromeClientBase;

    invoke-direct {p1, p0, v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebChromeClientBase;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$1;)V

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->setWebView()V

    return-void
.end method

.method static synthetic access$200(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$602(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic access$700(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mTimeout:I

    return p0
.end method

.method static synthetic access$800(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->release()V

    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method private setWebView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mWebViewClientBase:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 12
    invoke-static {p0}, Lcn/mucang/android/core/utils/MiscUtils;->l(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 13
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->release()V

    return-void
.end method
