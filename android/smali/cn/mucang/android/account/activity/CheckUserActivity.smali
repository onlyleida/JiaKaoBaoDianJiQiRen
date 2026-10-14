.class public final Lcn/mucang/android/account/activity/CheckUserActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/CheckUserActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    new-instance v2, Lcn/mucang/android/account/activity/CheckUserActivity$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/CheckUserActivity$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/CheckUserActivity;->d:Lkotlin/f;

    return-void
.end method

.method private static final l(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/AccountManager;->k()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/account/AccountManager;->D(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u5df2\u7ecf\u8ba4\u8bc1\uff01"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final n(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->o()V

    return-void
.end method

.method private final o()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;->realName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;->idCardNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u771f\u5b9e\u59d3\u540d"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7\u7801"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Lcn/mucang/android/account/g/q/e;

    invoke-direct {v2, p0, v0, v1}, Lcn/mucang/android/account/g/q/e;-><init>(Lcn/mucang/android/account/activity/CheckUserActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    :goto_0
    return-void
.end method

.method private final p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/CheckUserActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    return-object v0
.end method

.method public static synthetic q(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/CheckUserActivity;->m(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/CheckUserActivity;->n(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/CheckUserActivity;->l(Lcn/mucang/android/account/activity/CheckUserActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8eab\u4efd\u8ba4\u8bc1"

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, "\u8eab\u4efd\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/a0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/a0;-><init>(Lcn/mucang/android/account/activity/CheckUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;->toAuthRealName:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/y;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/y;-><init>(Lcn/mucang/android/account/activity/CheckUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;->okBtn:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/z;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/z;-><init>(Lcn/mucang/android/account/activity/CheckUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->p()Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityCheckUserBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/CheckUserActivity;->k()V

    return-void
.end method
