.class public Lcn/mucang/android/account/activity/SMSVerifyActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/SMSVerifyActivity$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/os/CountDownTimer;

.field private final c:Lcn/mucang/android/core/api/verify/d;

.field private d:Ljava/lang/String;

.field private e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/verify/d;

    invoke-direct {v0}, Lcn/mucang/android/core/api/verify/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->c:Lcn/mucang/android/core/api/verify/d;

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/core/api/verify/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->c:Lcn/mucang/android/core/api/verify/d;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/account/activity/SMSVerifyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->b:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/account/activity/SMSVerifyActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->b:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic l(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    return-object p0
.end method

.method static synthetic m(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Lcn/mucang/android/core/api/verify/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->o()Lcn/mucang/android/core/api/verify/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcn/mucang/android/account/activity/SMSVerifyActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->a:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private o()Lcn/mucang/android/core/api/verify/e;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_SMS:Lcn/mucang/android/core/api/verify/ErrorAction;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lf/a/a/a/i/h;->a(Ljava/lang/String;)Lf/a/a/a/i/c;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcn/mucang/android/core/api/verify/e;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/mucang/android/core/api/verify/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->codeInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->x(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->w()V

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/account/activity/SMSVerifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "message"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/SMSVerifyActivity$a;-><init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity$b;-><init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u77ed\u4fe1\u9a8c\u8bc1"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "message"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->a:Landroid/app/ProgressDialog;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->phone:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/account/data/AuthUser;->getPhone()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u6ce8\u518c\u624b\u673a\u53f7\uff1a%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->ok:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/account/activity/u0;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/u0;-><init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->cancel:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/account/activity/v0;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/v0;-><init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->e:Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountApiVerifyActivitySmsBinding;->sendSms:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/account/activity/w0;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/w0;-><init>(Lcn/mucang/android/account/activity/SMSVerifyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->o()Lcn/mucang/android/core/api/verify/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/verify/e;->c(ZLjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/SMSVerifyActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void
.end method

.method public synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->p(Landroid/view/View;)V

    return-void
.end method

.method public synthetic s(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->r(Landroid/view/View;)V

    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/SMSVerifyActivity;->t(Landroid/view/View;)V

    return-void
.end method
