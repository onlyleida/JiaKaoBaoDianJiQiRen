.class public Lcn/mucang/android/account/k/b;
.super Lcn/mucang/android/ui/framework/mvp/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/n/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/k/b$d;,
        Lcn/mucang/android/account/k/b$e;,
        Lcn/mucang/android/account/k/b$g;,
        Lcn/mucang/android/account/k/b$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcn/mucang/android/account/ui/b;",
        "M:",
        "Lcn/mucang/android/account/data/LoginSmsModel;",
        ">",
        "Lcn/mucang/android/ui/framework/mvp/a<",
        "TV;TM;>;",
        "Lcn/mucang/android/account/n/c;"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/CheckBox;

.field public g:Landroid/view/View;

.field private h:Lcn/mucang/android/account/data/LoginSmsModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private i:Lcn/mucang/android/account/k/b$e;

.field private j:Lcn/mucang/android/account/api/data/CheckSmsResponse;

.field private k:Lcn/mucang/android/account/n/d;

.field private l:Lcn/mucang/android/account/k/b$d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/ui/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/mvp/a;-><init>(Lcn/mucang/android/ui/framework/mvp/b;)V

    .line 2
    new-instance v0, Lcn/mucang/android/account/n/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/n/d;-><init>(Lcn/mucang/android/account/n/c;)V

    iput-object v0, p0, Lcn/mucang/android/account/k/b;->k:Lcn/mucang/android/account/n/d;

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/account/k/b;->q(Lcn/mucang/android/account/ui/b;)V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/k/b$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/k/b;->l:Lcn/mucang/android/account/k/b$d;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/account/k/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/k/b;->n()V

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/account/k/b;Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/k/b;->s(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method static synthetic k(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/data/LoginSmsModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/k/b;->h:Lcn/mucang/android/account/data/LoginSmsModel;

    return-object p0
.end method

.method static synthetic l(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/k/b$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/k/b;->i:Lcn/mucang/android/account/k/b$e;

    return-object p0
.end method

.method private n()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->j:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u5148\u8bf7\u6c42\u9a8c\u8bc1\u7801"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->f:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    sget v0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    new-instance v0, Lcn/mucang/android/account/k/b$g;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcn/mucang/android/account/k/b;->j:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getSmsId()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/account/k/b$g;-><init>(Lcn/mucang/android/account/k/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    const-string v0, "\u624b\u673a\u53f7\u77ed\u4fe1\u767b\u5f55\u9875-\u70b9\u51fb\u767b\u5f55"

    .line 11
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->k:Lcn/mucang/android/account/n/d;

    iget-object v1, p0, Lcn/mucang/android/account/k/b;->j:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getRestSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/n/d;->d(I)V

    return-void
.end method

.method private q(Lcn/mucang/android/account/ui/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/account/ui/b;->getResendInput()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/k/b;->b:Landroid/widget/Button;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/account/ui/b;->getUsernameInput()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/k/b;->c:Landroid/widget/EditText;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/account/ui/b;->getCodeInput()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/k/b;->d:Landroid/widget/EditText;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/account/ui/b;->getOkBtn()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/k/b;->e:Landroid/widget/Button;

    .line 5
    instance-of v0, p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/k/b;->f:Landroid/widget/CheckBox;

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getProtocolIn()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/account/k/b;->g:Landroid/view/View;

    .line 8
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/k/b;->c:Landroid/widget/EditText;

    new-instance v0, Lcn/mucang/android/account/n/e;

    iget-object v1, p0, Lcn/mucang/android/account/k/b;->e:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/account/n/e;-><init>(Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private s(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/b;->j:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/k/b;->p()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/b;->m(Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/b;->t(I)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/account/k/b;->t(I)V

    return-void
.end method

.method public m(Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/b;->h:Lcn/mucang/android/account/data/LoginSmsModel;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/account/data/LoginSmsModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/account/data/LoginSmsModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/account/data/LoginSmsModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/k/b;->b:Landroid/widget/Button;

    new-instance v0, Lcn/mucang/android/account/k/b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/k/b$a;-><init>(Lcn/mucang/android/account/k/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/account/k/b;->e:Landroid/widget/Button;

    new-instance v0, Lcn/mucang/android/account/k/b$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/k/b$b;-><init>(Lcn/mucang/android/account/k/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u624b\u673a\u53f7\u7801"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/account/k/b;->f:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    sget v0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Lcn/mucang/android/account/k/b;->r(Ljava/lang/String;)V

    const-string v0, "\u624b\u673a\u53f7\u77ed\u4fe1\u767b\u5f55\u9875-\u70b9\u51fb\u77ed\u4fe1\u9a8c\u8bc1"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/account/k/b$f;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcn/mucang/android/account/k/b$f;-><init>(Lcn/mucang/android/account/k/b;Landroid/app/Activity;Ljava/lang/String;Lcn/mucang/android/account/k/b$a;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method protected t(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->b:Landroid/widget/Button;

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u767b\u5f55_\u77ed\u4fe1\u767b\u5f55_\u505c\u7559\u8d85\u65f6"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected u(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/b;->j:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    return-void
.end method

.method protected v(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v1, Lcn/mucang/android/account/ui/b;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v1, Lcn/mucang/android/account/ui/b;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/account/k/b;->h:Lcn/mucang/android/account/data/LoginSmsModel;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/account/data/LoginSmsModel;->getSkipCaptcha()Lcn/mucang/android/account/data/SkipCaptchaType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/account/data/SkipCaptchaType;->isSkipCaptcha()Z

    move-result v2

    new-instance v3, Lcn/mucang/android/account/k/b$c;

    invoke-direct {v3, p0}, Lcn/mucang/android/account/k/b$c;-><init>(Lcn/mucang/android/account/k/b;)V

    .line 5
    invoke-static {v1, p1, v0, v2, v3}, Lcn/mucang/android/account/h/e;->D(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;ZLcn/mucang/android/account/h/e$b;)V

    :cond_0
    return-void
.end method
