.class public final Lcn/mucang/android/account/activity/AccountSafeActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u000cH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0002J\"\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0012\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0008\u0010\u001c\u001a\u00020\u000cH\u0014J\u0008\u0010\u001d\u001a\u00020\u000cH\u0002J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/account/activity/AccountSafeActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "bindThirdAccount",
        "thirdType",
        "",
        "displayMiAndWxUI",
        "getStatName",
        "getThirdAccountList",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "refreshUserInfo",
        "unBindThirdAccount",
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

.field private final e:Landroid/content/BroadcastReceiver;


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

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    new-instance v2, Lcn/mucang/android/account/activity/AccountSafeActivity$c;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/AccountSafeActivity$c;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity;->d:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/account/activity/AccountSafeActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/AccountSafeActivity$b;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->p(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/account/activity/AccountSafeActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->x(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->s(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->r(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->o(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->t(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->q(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Ljava/util/List;Lcn/mucang/android/account/activity/AccountSafeActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->y(Ljava/util/List;Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->n(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V

    return-void
.end method

.method private final J()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const-string v2, "set_psd_enable_ui"

    .line 3
    invoke-static {v2, v1}, Lcn/mucang/android/account/third/x;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->password:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->isPasswordSet()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->isPasswordSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->passwordText:Landroid/widget/TextView;

    const-string v2, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->passwordText:Landroid/widget/TextView;

    const-string v2, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->isCertified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->realNameText:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->realNameText:Landroid/widget/TextView;

    const-string v1, "\u672a\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private final K(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/y;->a:Lcn/mucang/android/account/third/y;

    new-instance v1, Lcn/mucang/android/account/activity/AccountSafeActivity$d;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/account/activity/AccountSafeActivity$d;-><init>(Ljava/lang/String;Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Lcn/mucang/android/account/third/y;->N(Landroid/app/Activity;Ljava/lang/String;Lcn/mucang/android/account/i/a;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/account/activity/AccountSafeActivity;)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/account/activity/AccountSafeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->J()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Lcn/mucang/android/account/AccountManager;->E(Landroid/app/Activity;I)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->isPasswordSet()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 3
    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/m1;->c(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/m1;->g(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/account/data/AuthUser;->isCertified()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcn/mucang/android/account/activity/m1;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/account/AccountManager;->D(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private static final r(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u6ce8\u9500\u8d26\u53f7"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    const-string v0, "https://laofuzi.kakamobi.com/common-logout/"

    .line 2
    invoke-static {p0, v0, p1}, Lcn/mucang/android/core/utils/u0;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiBindTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u672a\u7ed1\u5b9a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "xiaomi"

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->K(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final t(Lcn/mucang/android/account/activity/AccountSafeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxBindTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u672a\u7ed1\u5b9a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "weixin"

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->K(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final u(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/y;->a:Lcn/mucang/android/account/third/y;

    new-instance v1, Lcn/mucang/android/account/activity/AccountSafeActivity$a;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/account/activity/AccountSafeActivity$a;-><init>(Ljava/lang/String;Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Lcn/mucang/android/account/third/y;->F(Landroid/app/Activity;Ljava/lang/String;Lcn/mucang/android/account/i/a;)V

    return-void
.end method

.method private final v()V
    .locals 2

    const-string v0, "mi_login_enable_ui"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/account/third/x;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    const-string v0, "wechat_login_enable_ui"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/account/third/x;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final w()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/activity/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/b;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/account/activity/AccountSafeActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/account/g/n;

    invoke-direct {v0}, Lcn/mucang/android/account/g/n;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/account/g/n;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/account/activity/h;

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/account/activity/h;-><init>(Ljava/util/List;Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static final y(Ljava/util/List;Lcn/mucang/android/account/activity/AccountSafeActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiBindTv:Landroid/widget/TextView;

    const-string v0, "\u672a\u7ed1\u5b9a"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxBindTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/api/data/ThirdBindResponse;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/ThirdBindResponse;->getThirdParty()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xiaomi"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\u5df2\u7ed1\u5b9a"

    if-eqz v1, :cond_2

    .line 6
    invoke-direct {p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiBindTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/ThirdBindResponse;->getThirdParty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weixin"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p1}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxBindTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    return-object v0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8d26\u53f7\u5b89\u5168"

    return-object v0
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, "\u8d26\u53f7\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->J()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/i;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->account:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/account/activity/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/e;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->password:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/account/activity/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/a;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->authRealName:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/account/activity/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/g;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->layoutUnregisterAccount:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/account/activity/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/d;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiRl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/account/activity/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/c;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxRl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/account/activity/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/f;-><init>(Lcn/mucang/android/account/activity/AccountSafeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->J()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->z()Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "cn.mucang.android.account.ACTION_PHONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->v()V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->w()V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->m()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/account/activity/l1;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/AccountSafeActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
