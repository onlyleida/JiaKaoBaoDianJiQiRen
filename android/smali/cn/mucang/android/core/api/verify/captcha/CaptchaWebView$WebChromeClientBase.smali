.class Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebChromeClientBase;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebChromeClientBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebChromeClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebChromeClientBase;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView$WebChromeClientBase;->this$0:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;->access$200(Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method
