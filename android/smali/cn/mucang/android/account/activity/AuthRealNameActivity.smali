.class public final Lcn/mucang/android/account/activity/AuthRealNameActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0016J\u0006\u0010\u0013\u001a\u00020\u0006J\"\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0012\u0010\u001a\u001a\u00020\u000f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u001a\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00162\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/account/activity/AuthRealNameActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "actionName",
        "",
        "modifyCertification",
        "",
        "noBack",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "doButtonLeft",
        "doOk",
        "getStatName",
        "isModifyCertification",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "Companion",
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

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


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

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    new-instance v2, Lcn/mucang/android/account/activity/AuthRealNameActivity$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->d:Lkotlin/f;

    return-void
.end method

.method private static final l(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->p()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->q()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->p()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->e:Z

    const/16 v0, 0x65

    invoke-static {p0, v0, p1}, Lcn/mucang/android/account/activity/m1;->b(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private final p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1-\u6682\u4e0d\u8ba4\u8bc1"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final q()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->realNameEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->idCardNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u771f\u5b9e\u59d3\u540d!"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7\u7801!"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u8bc1\u4ef6\u53f7\u7801!"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Lcn/mucang/android/account/api/data/a;

    invoke-direct {v2}, Lcn/mucang/android/account/api/data/a;-><init>()V

    .line 10
    invoke-virtual {v2, v0}, Lcn/mucang/android/account/api/data/a;->d(Ljava/lang/String;)Lcn/mucang/android/account/api/data/a;

    invoke-virtual {v2, v1}, Lcn/mucang/android/account/api/data/a;->c(Ljava/lang/String;)Lcn/mucang/android/account/api/data/a;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/account/activity/m;

    invoke-direct {v4, p0, v0, v1}, Lcn/mucang/android/account/activity/m;-><init>(Lcn/mucang/android/account/activity/AuthRealNameActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v2, v4}, Lcn/mucang/android/account/h/a;->t(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/a;Lcn/mucang/android/account/h/a$c;)V

    :goto_0
    return-void
.end method

.method private static final r(Lcn/mucang/android/account/activity/AuthRealNameActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$realName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/account/g/q/b;

    iget-object v1, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->g:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/mucang/android/account/g/q/b;-><init>(Lcn/mucang/android/account/activity/AuthRealNameActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method private final s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    return-object v0
.end method

.method public static synthetic u(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->l(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->n(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/account/activity/AuthRealNameActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->r(Lcn/mucang/android/account/activity/AuthRealNameActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->m(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->o(Lcn/mucang/android/account/activity/AuthRealNameActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1"

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, "\u8d26\u6237\u5b9e\u540d\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/k;-><init>(Lcn/mucang/android/account/activity/AuthRealNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->okBtn:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/n;-><init>(Lcn/mucang/android/account/activity/AuthRealNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->ignore:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/l;-><init>(Lcn/mucang/android/account/activity/AuthRealNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->otherWay:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/o;-><init>(Lcn/mucang/android/account/activity/AuthRealNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_extra_modify_data__"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->e:Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__key_extra_no_back__"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->f:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__key_extra_success_action_name__"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->g:Ljava/lang/String;

    .line 6
    iget-boolean p1, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->f:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->ignore:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->s()Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->otherWay:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->k()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->p()V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/activity/AuthRealNameActivity;->e:Z

    return v0
.end method
