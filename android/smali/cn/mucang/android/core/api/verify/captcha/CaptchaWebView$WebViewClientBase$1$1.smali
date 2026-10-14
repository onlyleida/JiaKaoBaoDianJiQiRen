.class Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;->this$2:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;->this$2:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$400(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;->this$2:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$400(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;->this$2:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "captcha"

    const-string v1, "time out 2"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1$1;->this$2:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase$1;->this$1:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebViewClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onReady(Z)V

    :cond_0
    return-void
.end method
