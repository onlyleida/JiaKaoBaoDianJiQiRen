.class public final Lcn/mucang/android/account/activity/ForgotPasswordActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\"\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0012\u0010\u0019\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/ForgotPasswordActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "captchaPresenter",
        "Lcn/mucang/android/account/presenter/CaptchaPresenter;",
        "inputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "doOk",
        "getStatName",
        "",
        "initProtocol",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "OkApiContext",
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


# instance fields
.field private final d:Lkotlin/f;

.field private e:Landroid/view/inputmethod/InputMethodManager;

.field private f:Lcn/mucang/android/account/k/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    new-instance v2, Lcn/mucang/android/account/activity/ForgotPasswordActivity$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity$b;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->d:Lkotlin/f;

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)Lcn/mucang/android/account/k/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->f:Lcn/mucang/android/account/k/a;

    return-object p0
.end method

.method private static final m(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->username:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_0
    const-string p0, "inputMethodManager"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final n(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->p()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final p()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->f:Lcn/mucang/android/account/k/a;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/account/k/a;->s()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    .line 7
    iget-object v2, v1, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 10
    sget v2, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    .line 11
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    sget v0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_3
    new-instance v1, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;

    iget-object v2, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->f:Lcn/mucang/android/account/k/a;

    const-string v3, ""

    if-nez v2, :cond_4

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcn/mucang/android/account/k/a;->t()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v4, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->f:Lcn/mucang/android/account/k/a;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcn/mucang/android/account/k/a;->s()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v3, v4

    :goto_3
    invoke-direct {v1, p0, v0, v2, v3}, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;-><init>(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v1}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method private final q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    return-object v0
.end method

.method private final r()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    .line 2
    iget-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->checkBox:Landroid/widget/CheckBox;

    sget v2, Lcn/mucang/android/framework/account/R$string;->account__find_pwd_agree_protocol_content:I

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget-object v3, Lcn/mucang/android/account/n/b;->a:Lcn/mucang/android/account/n/b;

    iget-object v4, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->tvProtocol:Landroid/widget/TextView;

    const-string v0, "tvProtocol"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/account/n/b;->c(Lcn/mucang/android/account/n/b;Landroid/widget/TextView;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->o(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->m(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->n(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u627e\u56de\u5bc6\u7801\u9875"

    return-object v0
.end method

.method public final l()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->r()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, "\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Lcn/mucang/android/account/activity/c0;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/c0;-><init>(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "__extra_phone_number__"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 9
    :cond_3
    new-instance v0, Lcn/mucang/android/account/k/a;

    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->captcha:Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captcha:Lcn/mucang/android/account/ui/CaptchaView;

    invoke-direct {v0, v1}, Lcn/mucang/android/account/k/a;-><init>(Lcn/mucang/android/account/ui/CaptchaView;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->f:Lcn/mucang/android/account/k/a;

    if-nez v0, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    new-instance v1, Lcn/mucang/android/account/data/CaptchaModel;

    const-string v2, "/forgot-password/request-captcha.htm"

    invoke-direct {v1, v2}, Lcn/mucang/android/account/data/CaptchaModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/k/a;->r(Lcn/mucang/android/account/data/CaptchaModel;)V

    .line 11
    :goto_3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->username:Landroid/widget/EditText;

    .line 12
    new-instance v1, Lcn/mucang/android/account/n/e;

    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->username:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->btnOk:Landroid/widget/Button;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/account/n/e;-><init>(Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->btnOk:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/e0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/e0;-><init>(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/b0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/b0;-><init>(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4d2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->f:Lcn/mucang/android/account/k/a;

    if-eqz p1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/account/k/a;->u()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    const-string p1, "input_method"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->l()V

    return-void
.end method
