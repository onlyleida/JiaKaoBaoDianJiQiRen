.class public Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private dCaptchaId:Ljava/lang/String;

.field private dScale:F

.field private dTitle:Ljava/lang/String;

.field private dWidth:I

.field private dcaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

.field private dcontext:Landroid/content/Context;

.field private debug:Z

.field private dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

.field private isShowing:Z

.field private mPositionH:I

.field private mPositionW:I

.field private mPositionX:I

.field private mPositionY:I

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcontext:Landroid/content/Context;

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dCaptchaId:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dTitle:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->debug:Z

    .line 8
    iput-boolean v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->isShowing:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionX:I

    .line 10
    iput v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionY:I

    .line 11
    iput v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionW:I

    .line 12
    iput v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionH:I

    .line 13
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 14
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcontext:Landroid/content/Context;

    return-void
.end method

.method private getDialogWidth()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    iput v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dScale:F

    .line 6
    iget v3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionW:I

    const/16 v4, 0x10e

    if-le v3, v4, :cond_0

    .line 7
    iput v3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dWidth:I

    goto :goto_0

    :cond_0
    if-ge v2, v1, :cond_1

    mul-int/lit8 v2, v2, 0x3

    .line 8
    div-int/lit8 v1, v2, 0x4

    :cond_1
    mul-int/lit8 v1, v1, 0x4

    .line 9
    div-int/lit8 v1, v1, 0x5

    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-ge v2, v4, :cond_2

    const/high16 v1, 0x43870000    # 270.0f

    mul-float v0, v0, v1

    float-to-int v1, v0

    .line 10
    :cond_2
    iput v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "captcha"

    const-string v1, "getDialogWidth failed"

    .line 11
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setWebView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcontext:Landroid/content/Context;

    iget-object v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    invoke-direct {v0, v1, v2, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;-><init>(Landroid/content/Context;Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://cstaticdun.126.net/api/v2/mobile_2_4_2.html"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?captchaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dCaptchaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&os=android"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&osVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&sdkVer=2.4.2"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->debug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "captcha"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    new-instance v2, Lcn/mucang/android/core/api/verify/captcha/JSInterface;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcontext:Landroid/content/Context;

    iget-object v4, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    invoke-direct {v2, v3, v4, p0}, Lcn/mucang/android/core/api/verify/captcha/JSInterface;-><init>(Landroid/content/Context;Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;)V

    const-string v3, "JSInterface"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->buildLayer()V

    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 19
    iget v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionX:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    .line 20
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 21
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 22
    :cond_1
    iget v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionY:I

    if-eq v1, v2, :cond_2

    .line 23
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v2, v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 25
    :cond_2
    iget v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionW:I

    if-lez v1, :cond_3

    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 27
    :cond_3
    iget v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionH:I

    if-lez v1, :cond_4

    .line 28
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 29
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->isShowing:Z

    .line 2
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha Dialog dismiss Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "captcha"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public initDialog()V
    .locals 2

    const-string v0, "captcha"

    const-string v1, "start init dialog"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->getDialogWidth()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setWebView()V

    return-void
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->debug:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->isShowing:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    iget v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 6
    iget v2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dScale:F

    const/high16 v3, 0x42500000    # 52.0f

    mul-float v2, v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 7
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dwebview:Lcn/mucang/android/core/api/verify/captcha/CaptchaWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onPageFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public setCaListener(Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    return-object p0
.end method

.method public setCaptchaId(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dCaptchaId:Ljava/lang/String;

    return-object p0
.end method

.method public setDebug(Z)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->debug:Z

    return-object p0
.end method

.method public setPosition(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionX:I

    .line 2
    iput p2, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionY:I

    .line 3
    iput p3, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionW:I

    .line 4
    iput p4, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->mPositionH:I

    return-void
.end method

.method public setProgressDialog(Landroid/app/ProgressDialog;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dTitle:Ljava/lang/String;

    return-object p0
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->isShowing:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->dcontext:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha Dialog show Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "captcha"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
