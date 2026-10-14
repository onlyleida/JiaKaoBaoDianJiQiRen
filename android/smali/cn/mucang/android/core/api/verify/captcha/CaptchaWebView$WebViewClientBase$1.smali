.class Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
