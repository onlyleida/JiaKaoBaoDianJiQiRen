.class public final Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "callback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "ssoLoginViewModel",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
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


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

.field private c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

.field private d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method private static final A(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->p()V

    return-void

    :cond_0
    const-string p0, "ssoLoginViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final B(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    return-void
.end method

.method private static final C(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->G(Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->qrCodeErrorFl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u5df2\u53d6\u6d88\u767b\u5f55\uff0c\u8bf7\u70b9\u51fb\u751f\u6210\u4e8c\u7ef4\u7801"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->qrCodeErrorFl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u4e8c\u7ef4\u7801\u5df2\u8fc7\u671f\uff0c\u8bf7\u70b9\u51fb\u751f\u6210\u4e8c\u7ef4\u7801"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_6
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u8bf7\u5728\u9489\u9489\u6216\u5fae\u4fe1\u4e0a\u786e\u8ba4\u767b\u5f55"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_8
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->tipTv:Landroid/widget/TextView;

    const-string p1, "\u8bf7\u4f7f\u7528\u5fae\u4fe1\u6216\u9489\u9489\u626b\u7801"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final D(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "loadingDialog"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 5
    :cond_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-eqz v0, :cond_7

    const-string p0, ""

    .line 6
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final E(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/q;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->qrCodeErrorFl:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final F(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment$onViewCreated$7$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment$onViewCreated$7$1;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final G(Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;->getUserToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    :goto_0
    return-void
.end method

.method public static final synthetic r(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    return-object p0
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->C(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->F(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->B(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/q;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->E(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/jiakaoyi/uilib/sso/q;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->D(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->z(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->A(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final z(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->p()V

    return-void

    :cond_0
    const-string p0, "ssoLoginViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class p2, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string p2, "ViewModelProvider(this).\u2026ginViewModel::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    const-string p2, "viewBinding"

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->qrCodeErrorFl:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/sso/n;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/sso/n;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->refresh:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/sso/o;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/sso/o;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;->closeDialog:Landroid/widget/ImageView;

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/sso/k;

    invoke-direct {p2, p0}, Lcn/mucang/jiakaoyi/uilib/sso/k;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    const-string p2, "ssoLoginViewModel"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->p()V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->o()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/sso/i;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/sso/i;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/sso/m;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/sso/m;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->m()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/sso/l;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/sso/l;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;->c:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->n()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object p2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/sso/j;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/sso/j;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
