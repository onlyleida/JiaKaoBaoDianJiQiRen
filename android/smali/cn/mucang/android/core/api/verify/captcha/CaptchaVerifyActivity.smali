.class public Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;,
        Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyHandler;
    }
.end annotation


# static fields
.field public static final INIT_TIMEOUT:I = 0x1

.field public static final NO_NETWORK:I = 0x0

.field public static final VALIDATE_TIMEOUT:I = 0x2


# instance fields
.field private actionId:Ljava/lang/String;

.field private captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

.field private captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

.field private handler:Landroid/os/Handler;

.field private isAlreadySendNetMsg:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->handler:Landroid/os/Handler;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->timer:Ljava/util/Timer;

    .line 4
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$4;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Ljava/util/Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$100(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;ZLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->finish(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->actionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->isAlreadySendNetMsg:Z

    return p0
.end method

.method static synthetic access$502(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->isAlreadySendNetMsg:Z

    return p1
.end method

.method static synthetic access$600(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private finish(ZLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->verifyComplete(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initCaptchaDialog()Z
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setDebug(Z)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    const-string v1, "6f92317b6e7d4f4faa77a360d65826c5"

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setCaptchaId(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setCaListener(Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setProgressDialog(Landroid/app/ProgressDialog;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    new-instance v2, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$3;

    invoke-direct {v2, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$3;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaDialog:Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->initDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private initProgressDialog()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u9a8c\u8bc1\u7801"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$1;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$2;

    invoke-direct {v2, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$2;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyHandler;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyHandler;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->handler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->isAlreadySendNetMsg:Z

    const/16 v0, 0x2710

    .line 12
    invoke-direct {p0, v1, v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->setSchedule(II)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "actionId"

    .line 4
    invoke-static {p1, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->safeGetQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_dunActionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static safeGetQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private setSchedule(II)V
    .locals 3

    const-string v0, "captcha"

    const-string v1, "setSchedule start"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity$MyTask;-><init>(Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;I)V

    .line 3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->timer:Ljava/util/Timer;

    int-to-long v1, p2

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private verifyComplete(ZLjava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_CAPTCHA:Lcn/mucang/android/core/api/verify/ErrorAction;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lf/a/a/a/i/h;->a(Ljava/lang/String;)Lf/a/a/a/i/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Lcn/mucang/android/core/api/verify/e;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/mucang/android/core/api/verify/e;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/api/verify/e;->c(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "_dunActionId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->actionId:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->initProgressDialog()V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->validate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->verifyComplete(ZLjava/lang/Object;)V

    return-void
.end method

.method public validate()V
    .locals 4

    const-string v0, "captcha"

    :try_start_0
    const-string v1, "validate start"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->captchaListener:Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;

    const-string v3, "no network!"

    invoke-interface {v1, v3}, Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;->onError(Ljava/lang/String;)V

    const/16 v1, 0x1f4

    .line 5
    invoke-direct {p0, v2, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->setSchedule(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->initCaptchaDialog()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u52a0\u8f7d\u9a8c\u8bc1\u7801\u5931\u8d25"

    .line 7
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v2, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaVerifyActivity;->finish(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captcha SDK validate Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
