.class public final Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0010H\u0002J\u0012\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0010H\u0014J\u0008\u0010\u0019\u001a\u00020\u0010H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "loginSmsModel",
        "Lcn/mucang/android/account/data/LoginSmsModel;",
        "loginSuccess",
        "",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "displayMiAndWxUI",
        "getStatName",
        "",
        "handleThirdLoginUI",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
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


# static fields
.field public static final h:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$a;


# instance fields
.field private final d:Lkotlin/f;

.field private e:Z

.field private f:Lcn/mucang/android/account/data/LoginSmsModel;

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->h:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    new-instance v2, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$c;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$c;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->d:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;-><init>(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->r(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final B(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 1

    sget-object v0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->h:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$a;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$a;->a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->e:Z

    return-void
.end method

.method private static final m(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final n(Landroid/view/View;)V
    .locals 0

    const-string p0, "https://laofuzi.kakamobi.com/login-guide/login-guide.html"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method private static final o(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/account/activity/LoginActivity;->j:Lcn/mucang/android/account/activity/LoginActivity$a;

    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->f:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-virtual {p1, p0, v0}, Lcn/mucang/android/account/activity/LoginActivity$a;->a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginModel;)V

    const-string p0, "\u624b\u673a\u53f7\u77ed\u4fe1\u767b\u5f55\u9875-\u70b9\u51fb\u5bc6\u7801\u767b\u5f55"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/account/activity/m1;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 2

    const-string p2, "$loginSmsCommonView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getProtocolIn()Landroid/view/View;

    move-result-object p0

    .line 3
    sget p2, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    .line 4
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    sget p0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p0

    const/16 p2, 0x403

    .line 8
    iget-object v0, p1, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->f:Lcn/mucang/android/account/data/LoginSmsModel;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "LoginMultiDefaultSmsActivity"

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/LoginSmsModel;->setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    :goto_0
    const-string v1, "xiaomi"

    .line 9
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/account/AccountManager;->J(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Ljava/lang/String;)Z

    return-void
.end method

.method private static final r(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 2

    const-string p2, "$loginSmsCommonView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getProtocolIn()Landroid/view/View;

    move-result-object p0

    .line 3
    sget p2, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    .line 4
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    sget p0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p0

    const/16 p2, 0x403

    .line 8
    iget-object v0, p1, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->f:Lcn/mucang/android/account/data/LoginSmsModel;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "LoginMultiDefaultSmsActivity"

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/data/LoginSmsModel;->setFrom(Ljava/lang/String;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/account/AccountManager;->K(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;)Z

    return-void
.end method

.method private final s()V
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
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->u()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

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
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->u()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->accountLoginThirdWeixinIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    return-object v0
.end method

.method private final u()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->q(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->m(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->n(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->o(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->p(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u624b\u673a\u53f7\u77ed\u4fe1\u767b\u5f55\u9875"

    return-object v0
.end method

.method public final l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/account/data/LoginSmsModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type cn.mucang.android.account.data.LoginSmsModel"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcn/mucang/android/account/data/LoginSmsModel;

    iput-object v0, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->f:Lcn/mucang/android/account/data/LoginSmsModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->f:Lcn/mucang/android/account/data/LoginSmsModel;

    if-nez v0, :cond_1

    const-string v0, "LoginMultiDefaultSmsActivity"

    const-string v1, "loginSmsModel must be not null"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->smsCommon:Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->smsCommon:Lcn/mucang/android/account/ui/LoginSmsCommonView;

    const-string v1, "viewBinding.smsCommon.smsCommon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 10
    sget v2, Lcn/mucang/android/framework/account/R$id;->btn_send_voice_code:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->setBtnSendSmsCode(Landroid/widget/TextView;)V

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->f:Lcn/mucang/android/account/data/LoginSmsModel;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcn/mucang/android/account/data/LoginSmsModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 13
    :goto_0
    new-instance v3, Lcn/mucang/android/account/k/c;

    invoke-direct {v3, v0}, Lcn/mucang/android/account/k/c;-><init>(Lcn/mucang/android/account/ui/LoginSmsCommonView;)V

    .line 14
    iget-object v4, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->f:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-virtual {v3, v4}, Lcn/mucang/android/account/k/c;->m(Lcn/mucang/android/account/data/LoginSmsModel;)V

    .line 15
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-static {}, Lcn/mucang/android/account/f;->b()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 17
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->smsCommon:Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->usernameInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->smsCommon:Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->usernameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 20
    :cond_6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v2, Lcn/mucang/android/account/activity/p0;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/p0;-><init>(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->tvUnknownSendSmsCode:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/mucang/android/framework/account/R$bool;->account__show_sms_code_help:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v3, 0x8

    .line 23
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->tvUnknownSendSmsCode:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/account/activity/q0;->a:Lcn/mucang/android/account/activity/q0;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->loginByAccount:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/account/activity/r0;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/r0;-><init>(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountAppeal:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/account/activity/s0;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/s0;-><init>(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->accountLoginThirdXiaomiIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/account/activity/o0;

    invoke-direct {v2, v0, p0}, Lcn/mucang/android/account/activity/o0;-><init>(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->accountLoginThirdWeixinIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/account/activity/t0;

    invoke-direct {v2, v0, p0}, Lcn/mucang/android/account/activity/t0;-><init>(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->t()Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->getRoot()Landroid/widget/RelativeLayout;

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

    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->s()V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->l()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/account/activity/l1;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->e:Z

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
