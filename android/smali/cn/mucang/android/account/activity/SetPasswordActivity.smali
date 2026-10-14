.class public final Lcn/mucang/android/account/activity/SetPasswordActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/SetPasswordActivity$a;,
        Lcn/mucang/android/account/activity/SetPasswordActivity$d;,
        Lcn/mucang/android/account/activity/SetPasswordActivity$c;,
        Lcn/mucang/android/account/activity/SetPasswordActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0005\u001d\u001e\u001f !B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0016J\u0012\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/account/activity/SetPasswordActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "from",
        "",
        "inputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "passwordType",
        "",
        "smsId",
        "smsToken",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "doForgotPassword",
        "password",
        "doOk",
        "doSetPassword",
        "getStatName",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "verifyIntentData",
        "",
        "Companion",
        "ForgotApiContext",
        "IntentBuilder",
        "LoginSmsSetPasswordApiContext",
        "SetPasswordApiContext",
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

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


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

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    new-instance v2, Lcn/mucang/android/account/activity/SetPasswordActivity$e;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/SetPasswordActivity$e;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->d:Lkotlin/f;

    return-void
.end method

.method private static final l(Lcn/mucang/android/account/activity/SetPasswordActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->r()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;->password:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_0
    const-string p0, "inputMethodManager"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final m(Lcn/mucang/android/account/activity/SetPasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/account/activity/SetPasswordActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->p()V

    return-void
.end method

.method private final o(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;

    iget-object v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->g:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, v2}, Lcn/mucang/android/account/activity/SetPasswordActivity$a;-><init>(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method private final p()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->r()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->h:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->o(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string v0, "\u5bc6\u7801\u5e94\u75316-20\u4e2a\u5b57\u7b26\u7ec4\u6210"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final q(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->i:Ljava/lang/String;

    const-string v1, "__from_login_sms_set_password__"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/account/activity/SetPasswordActivity$c;

    iget-object v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->g:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, v2}, Lcn/mucang/android/account/activity/SetPasswordActivity$c;-><init>(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/account/activity/SetPasswordActivity$d;

    iget-object v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->g:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, v2}, Lcn/mucang/android/account/activity/SetPasswordActivity$d;-><init>(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    :goto_0
    const-string p1, "\u8bbe\u7f6e\u5bc6\u7801\u9875-\u70b9\u51fb\u786e\u5b9a\u5e76\u767b\u5f55"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final r()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    return-object v0
.end method

.method public static synthetic s(Lcn/mucang/android/account/activity/SetPasswordActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->l(Lcn/mucang/android/account/activity/SetPasswordActivity;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/account/activity/SetPasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/SetPasswordActivity;->m(Lcn/mucang/android/account/activity/SetPasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/account/activity/SetPasswordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/SetPasswordActivity;->n(Lcn/mucang/android/account/activity/SetPasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method private final v()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__sms_id__"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->f:Ljava/lang/String;

    const-string v1, "__sms_token__"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->g:Ljava/lang/String;

    const-string v1, "__password_type__"

    const/4 v2, -0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->h:I

    const-string v1, "__extra_from__"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->i:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->h:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "\u975e\u6cd5\u7684\u5bc6\u7801\u8bbe\u7f6e\u7c7b\u578b:"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    const-string v0, "\u975e\u6cd5\u8bbf\u95ee\u672c\u754c\u9762"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bbe\u7f6e\u5bc6\u7801\u9875"

    return-object v0
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->r()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Lcn/mucang/android/account/activity/x0;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/x0;-><init>(Lcn/mucang/android/account/activity/SetPasswordActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->r()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/y0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/y0;-><init>(Lcn/mucang/android/account/activity/SetPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->r()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;->btnOk:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/z0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/z0;-><init>(Lcn/mucang/android/account/activity/SetPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->r()Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivitySetPasswordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    const-string p1, "input_method"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity;->k()V

    return-void
.end method
