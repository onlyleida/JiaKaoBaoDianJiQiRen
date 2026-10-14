.class public Lcn/mucang/android/core/api/verify/captcha/JSInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

.field private captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    return-object p0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public closeWindow()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface$2;-><init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/api/verify/captcha/JSInterface$4;-><init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface$3;-><init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/core/api/verify/captcha/JSInterface$1;-><init>(Lcn/mucang/android/core/api/verify/captcha/JSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
