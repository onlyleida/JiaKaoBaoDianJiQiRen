.class public final Lcn/mucang/android/account/activity/LoginActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/LoginActivity$b;,
        Lcn/mucang/android/account/activity/LoginActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0002()B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0016\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016J\u0008\u0010\u0019\u001a\u00020\u0014H\u0002J\"\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0012\u0010 \u001a\u00020\u00142\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0008\u0010#\u001a\u00020\u0014H\u0014J\u0008\u0010$\u001a\u00020\u0014H\u0014J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\'H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006*"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/LoginActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "checkType",
        "Lcn/mucang/android/account/api/data/CheckType;",
        "from",
        "",
        "loginModel",
        "Lcn/mucang/android/account/data/LoginModel;",
        "loginSuccess",
        "",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "displayMiAndWxUI",
        "doCanNotLogin",
        "doLogin",
        "getStatName",
        "handleThirdLoginUI",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "showCaptchaDialog",
        "captchaListener",
        "Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;",
        "Companion",
        "LoginApiContext",
        "account_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final j:Lcn/mucang/android/account/activity/LoginActivity$a;


# instance fields
.field private final d:Lkotlin/f;

.field private e:Lcn/mucang/android/account/api/data/CheckType;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcn/mucang/android/account/data/LoginModel;

.field private final i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/account/activity/LoginActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/account/activity/LoginActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/account/activity/LoginActivity;->j:Lcn/mucang/android/account/activity/LoginActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    new-instance v2, Lcn/mucang/android/account/activity/LoginActivity$e;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/LoginActivity$e;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->d:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/account/activity/LoginActivity$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/LoginActivity$d;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity;->t(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity;->o(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity;->s(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity;->p(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity;->q(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity;->u(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity;->r(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final H(Landroid/content/Context;Lcn/mucang/android/account/data/LoginModel;)V
    .locals 1

    sget-object v0, Lcn/mucang/android/account/activity/LoginActivity;->j:Lcn/mucang/android/account/activity/LoginActivity$a;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/account/activity/LoginActivity$a;->a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginModel;)V

    return-void
.end method

.method private final I(Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setDebug(Z)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    const-string v1, "6f92317b6e7d4f4faa77a360d65826c5"

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setCaptchaId(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->setCaListener(Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;)Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->initDialog()V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/captcha/CaptchaDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/account/activity/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/LoginActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/account/activity/LoginActivity;)Lcn/mucang/android/account/data/LoginModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/android/account/activity/LoginActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/activity/LoginActivity;->f:Z

    return-void
.end method

.method private static final o(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->x()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->w()V

    return-void
.end method

.method private static final q(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/android/account/data/LoginSmsModel;

    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/data/LoginModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p1, v0}, Lcn/mucang/android/account/data/LoginSmsModel;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->e:Lcn/mucang/android/account/api/data/CheckType;

    invoke-virtual {p1, v0}, Lcn/mucang/android/account/data/LoginSmsModel;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/account/data/LoginModel;->isSkipAuthRealName()Z

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/LoginSmsModel;->setSkipAuthRealName(Z)Lcn/mucang/android/account/data/LoginSmsModel;

    .line 3
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/account/AccountManager;->G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final s(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/account/activity/m1;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 3
    sget v0, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    .line 4
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    sget p0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    const/16 v0, 0x403

    .line 8
    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "LoginActivity"

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/data/LoginModel;->setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginModel;

    move-result-object v1

    :goto_0
    const-string v2, "xiaomi"

    invoke-virtual {p1, p0, v0, v1, v2}, Lcn/mucang/android/account/AccountManager;->J(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Ljava/lang/String;)Z

    return-void
.end method

.method private static final u(Lcn/mucang/android/account/activity/LoginActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 3
    sget v0, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    .line 4
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    sget p0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    const/16 v0, 0x403

    .line 8
    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "LoginActivity"

    invoke-virtual {v1, v2}, Lcn/mucang/android/account/data/LoginModel;->setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginModel;

    move-result-object v1

    .line 9
    :goto_0
    invoke-virtual {p1, p0, v0, v1}, Lcn/mucang/android/account/AccountManager;->K(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;)Z

    return-void
.end method

.method private final v()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/v;->a:Lcn/mucang/android/account/third/v;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/third/v;->a(Ljava/lang/String;)Lcn/mucang/android/account/third/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "mi_login_enable_ui"

    .line 2
    invoke-static {v1, v2}, Lcn/mucang/android/account/third/x;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->z()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->accountLoginThirdXiaomiIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const-string v1, "weixin"

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/third/v;->a(Ljava/lang/String;)Lcn/mucang/android/account/third/u;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "wechat_login_enable_ui"

    .line 6
    invoke-static {v0, v2}, Lcn/mucang/android/account/third/x;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->z()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->accountLoginThirdWeixinIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x402

    invoke-static {p0, v1, v0}, Lcn/mucang/android/account/activity/m1;->e(Landroid/app/Activity;ILjava/lang/String;)V

    const-string v0, "\u624b\u673a\u53f7\u5bc6\u7801\u767b\u5f55\u9875-\u70b9\u51fb\u5fd8\u8bb0\u5bc6\u7801"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final x()V
    .locals 4

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    const-string v0, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/account/f;->g(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 11
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 14
    sget v1, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    .line 15
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    sget v0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    new-instance v2, Lcn/mucang/android/account/activity/LoginActivity$c;

    invoke-direct {v2, p0, v0, v1}, Lcn/mucang/android/account/activity/LoginActivity$c;-><init>(Lcn/mucang/android/account/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, v2}, Lcn/mucang/android/account/activity/LoginActivity;->I(Lcn/mucang/android/core/api/verify/captcha/CaptchaListener;)V

    const-string v0, "\u624b\u673a\u53f7\u5bc6\u7801\u767b\u5f55\u9875-\u70b9\u51fb\u767b\u5f55"

    .line 20
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    return-object v0
.end method

.method private final z()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u624b\u673a\u53f7\u5bc6\u7801\u767b\u5f55\u9875"

    return-object v0
.end method

.method public final n()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/account/data/LoginModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type cn.mucang.android.account.data.LoginModel"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcn/mucang/android/account/data/LoginModel;

    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    if-nez v0, :cond_1

    const-string v0, "\u53c2\u6570\u7f3a\u5931"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/account/data/LoginModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->g:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->h:Lcn/mucang/android/account/data/LoginModel;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/account/data/LoginModel;->getCheckType()Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v1

    :goto_1
    sget-object v0, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lcn/mucang/android/account/api/data/CheckType;->FALSE:Lcn/mucang/android/account/api/data/CheckType;

    :goto_2
    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->e:Lcn/mucang/android/account/api/data/CheckType;

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/account/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    :cond_5
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->username:Landroid/widget/EditText;

    .line 14
    new-instance v1, Lcn/mucang/android/account/n/e;

    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->username:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->btnOk:Landroid/widget/Button;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/account/n/e;-><init>(Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    sget-object v4, Lcn/mucang/android/account/n/b;->a:Lcn/mucang/android/account/n/b;

    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    iget-object v5, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->tvProtocol:Landroid/widget/TextView;

    const-string v0, "viewBinding.accountProtocolIn.tvProtocol"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcn/mucang/android/account/n/b;->c(Lcn/mucang/android/account/n/b;Landroid/widget/TextView;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->btnOk:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/g0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/g0;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->canNotLogin:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/i0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/i0;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->loginSms:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/j0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/j0;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/l0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/l0;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountAppeal:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/h0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/h0;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->accountLoginThirdXiaomiIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/account/activity/f0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/f0;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->accountLoginThirdWeixinIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/account/activity/k0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/k0;-><init>(Lcn/mucang/android/account/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x402

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/account/activity/LoginActivity;->f:Z

    .line 3
    invoke-virtual {p0, p3}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->y()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "cn.mucang.android.account.ACTION_LOGINED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginActivity;->v()V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/LoginActivity;->n()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/account/activity/l1;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/account/activity/LoginActivity;->f:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/account/f;->j()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->g()V

    return-void
.end method
