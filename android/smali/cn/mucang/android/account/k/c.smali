.class public Lcn/mucang/android/account/k/c;
.super Lcn/mucang/android/account/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/k/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/k/b<",
        "Lcn/mucang/android/account/ui/LoginSmsCommonView;",
        "Lcn/mucang/android/account/data/LoginSmsModel;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Lcn/mucang/android/account/data/LoginSmsModel;

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/ui/LoginSmsCommonView;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/k/b;-><init>(Lcn/mucang/android/account/ui/b;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/account/k/c;->o:J

    return-void
.end method

.method static synthetic A(Lcn/mucang/android/account/k/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/account/k/c;->o:J

    return-wide p1
.end method

.method static synthetic B(Lcn/mucang/android/account/k/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/k/c;->E(Landroid/app/Activity;)V

    return-void
.end method

.method private C(Lcn/mucang/android/account/h/d;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getUsernameInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2
    new-instance v0, Lcn/mucang/android/account/k/c$c;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v4

    iget-object v1, p0, Lcn/mucang/android/account/k/c;->m:Lcn/mucang/android/account/data/LoginSmsModel;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/account/data/LoginSmsModel;->getSkipCaptcha()Lcn/mucang/android/account/data/SkipCaptchaType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/data/SkipCaptchaType;->isSkipCaptcha()Z

    move-result v8

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/account/k/c$c;-><init>(Lcn/mucang/android/account/k/c;Lcn/mucang/android/account/h/d;Landroid/app/Activity;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method private D(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/account/k/c;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const-string p1, "\u60a8\u64cd\u4f5c\u592a\u9891\u7e41\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getUsernameInput()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const-string p1, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u624b\u673a\u53f7\u7801"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/account/k/c;->m:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-virtual {v0}, Lcn/mucang/android/account/data/LoginSmsModel;->getSkipCaptcha()Lcn/mucang/android/account/data/SkipCaptchaType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/data/SkipCaptchaType;->isSkipCaptcha()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1, p1, p1}, Lcn/mucang/android/account/k/c;->C(Lcn/mucang/android/account/h/d;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/account/k/c;->n:Z

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/b;->r(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private E(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u83b7\u53d6\u8bed\u97f3\u9a8c\u8bc1\u7801"

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "\u6211\u4eec\u5c06\u4ee5\u8bed\u97f3\u7535\u8bdd\u7684\u5f62\u5f0f\u544a\u77e5\u60a8\u9a8c\u8bc1\u7801\uff0c\u8bf7\u7559\u610f\u63a5\u542c\u5466~"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    const-string v1, "\u77e5\u9053\u4e86"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private F(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "\u624b\u673a\u53f7\u77ed\u4fe1\u767b\u5f55\u9875-\u51fa\u73b0\u8bed\u97f3\u9a8c\u8bc1"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic w(Lcn/mucang/android/account/k/c;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic x(Lcn/mucang/android/account/k/c;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic y(Lcn/mucang/android/account/k/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/k/c;->D(Landroid/view/View;)V

    return-void
.end method

.method static synthetic z(Lcn/mucang/android/account/k/c;Lcn/mucang/android/account/h/d;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/account/k/c;->C(Lcn/mucang/android/account/h/d;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/k/b;->c(I)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/account/k/c;->F(I)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/account/k/b;->f()V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/account/k/c;->F(I)V

    return-void
.end method

.method public m(Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/k/b;->m(Lcn/mucang/android/account/data/LoginSmsModel;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/account/k/c;->m:Lcn/mucang/android/account/data/LoginSmsModel;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u6536\u4e0d\u5230\u9a8c\u8bc1\u7801\uff1f\u8bd5\u8bd5<font color=\'#1DACF9\'><u>\u8bed\u97f3\u9a8c\u8bc1\u7801</u></font>"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getBtnSendSmsCode()Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/account/k/c$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/k/c$a;-><init>(Lcn/mucang/android/account/k/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    sget-object p1, Lcn/mucang/android/account/n/b;->a:Lcn/mucang/android/account/n/b;

    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getProtocolTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/account/n/b;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method protected o()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/account/k/b;->o()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/account/k/c;->n:Z

    return-void
.end method

.method protected v(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/k/c;->n:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcn/mucang/android/account/h/d;->A(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)Lcn/mucang/android/account/h/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lcn/mucang/android/account/k/c$b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/account/k/c$b;-><init>(Lcn/mucang/android/account/k/c;Lcn/mucang/android/account/h/d;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/account/h/d;->B(Lcn/mucang/android/account/h/d$b;)Lcn/mucang/android/account/h/d;

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcn/mucang/android/account/k/b;->v(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V

    :cond_1
    :goto_0
    return-void
.end method
