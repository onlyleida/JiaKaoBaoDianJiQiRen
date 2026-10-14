.class public final Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;",
        "()V",
        "ssoLoginViewModel",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "scanFinish",
        "result",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;",
        "Companion",
        "uilib_release"
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
.field public static final c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;


# instance fields
.field private b:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->b:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->p()V

    return-void

    :cond_0
    const-string p0, "ssoLoginViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;->getStatus()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "result"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->t(Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u5df2\u53d6\u6d88\u767b\u5f55\uff0c\u8bf7\u70b9\u51fb\u751f\u6210\u4e8c\u7ef4\u7801"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u4e8c\u7ef4\u7801\u5df2\u8fc7\u671f\uff0c\u8bf7\u70b9\u51fb\u751f\u6210\u4e8c\u7ef4\u7801"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u8bf7\u5728\u9489\u9489\u6216\u5fae\u4fe1\u4e0a\u786e\u8ba4\u767b\u5f55"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u8bf7\u4f7f\u7528\u5fae\u4fe1\u6216\u9489\u9489\u626b\u7801"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/q;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$init$5$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$init$5$1;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/q;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->m(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/q;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->l(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->j(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->n(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->k(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method private final t(Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;->getUserToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ssoToken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "Sso \u767b\u5f55"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026ginViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->b:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/sso/f;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/sso/f;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;->backTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/sso/h;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/sso/h;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->b:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    const/4 v1, 0x0

    const-string v2, "ssoLoginViewModel"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->p()V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->b:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->o()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/sso/e;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/sso/e;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->b:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/sso/a;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/sso/a;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;->b:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->n()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/sso/g;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/sso/g;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
