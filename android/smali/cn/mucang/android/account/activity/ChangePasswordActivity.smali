.class public final Lcn/mucang/android/account/activity/ChangePasswordActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/ChangePasswordActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0008\u0010\r\u001a\u00020\u000cH\u0002J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/ChangePasswordActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "inputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "doOk",
        "getStatName",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "ChangePasswordApiContext",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    new-instance v2, Lcn/mucang/android/account/activity/ChangePasswordActivity$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity$b;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity;->d:Lkotlin/f;

    return-void
.end method

.method private static final l(Lcn/mucang/android/account/activity/ChangePasswordActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->oldPassword:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_0
    const-string p0, "inputMethodManager"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final m(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->p()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/m1;->g(Landroid/app/Activity;I)V

    return-void
.end method

.method private final p()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->oldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->newPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u539f\u5bc6\u7801"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u5c11\u4e8e6\u4f4d"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u5927\u4e8e20\u4f4d"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    new-instance v2, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;

    invoke-direct {v2, p0, v0, v1}, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;-><init>(Lcn/mucang/android/account/activity/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method private final q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    return-object v0
.end method

.method public static synthetic r(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->o(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->n(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->m(Lcn/mucang/android/account/activity/ChangePasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/account/activity/ChangePasswordActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->l(Lcn/mucang/android/account/activity/ChangePasswordActivity;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u4fee\u6539\u5bc6\u7801"

    return-object v0
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u53ea\u6709\u767b\u5f55\u7528\u6237\u624d\u53ef\u4ee5\u4fee\u6539\u5bc6\u7801"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/account/activity/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/u;-><init>(Lcn/mucang/android/account/activity/ChangePasswordActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, "\u66f4\u6539\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->btnOk:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/t;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/t;-><init>(Lcn/mucang/android/account/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/s;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/s;-><init>(Lcn/mucang/android/account/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->forgotPasswordBtn:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/r;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/r;-><init>(Lcn/mucang/android/account/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->q()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePasswordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    const-string p1, "input_method"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity;->k()V

    return-void
.end method
