.class public Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/core/api/verify/c;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/verify/c;

    invoke-direct {v0}, Lcn/mucang/android/core/api/verify/c;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->a:Lcn/mucang/android/core/api/verify/c;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Lcn/mucang/android/core/api/verify/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->a:Lcn/mucang/android/core/api/verify/c;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->d:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->k(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic f(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Lcn/mucang/android/core/api/verify/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->h()Lcn/mucang/android/core/api/verify/e;

    move-result-object p0

    return-object p0
.end method

.method private h()Lcn/mucang/android/core/api/verify/e;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_GEETEST:Lcn/mucang/android/core/api/verify/ErrorAction;

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

.method public static i(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->d:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3
    new-instance v0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;-><init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v2, "\u8bf7\u5b8c\u6210\u4e0b\u65b9\u7684\u9a8c\u8bc1\u4efb\u52a1"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/core/api/verify/geetest/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    new-instance p1, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$c;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$c;-><init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)V

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3
    new-instance p1, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;-><init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)V

    invoke-virtual {v6, p1}, Lcn/mucang/android/core/api/verify/geetest/b;->j(Lcn/mucang/android/core/api/verify/geetest/b$b;)V

    return-void
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->d:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;-><init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/core/R$layout;->core__api_verify_activity_geetest:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    sget p1, Lcn/mucang/android/framework/core/R$id;->back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->b:Landroid/view/View;

    .line 4
    new-instance v0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$a;-><init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->d:Landroid/app/ProgressDialog;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->h()Lcn/mucang/android/core/api/verify/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/verify/e;->c(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method
