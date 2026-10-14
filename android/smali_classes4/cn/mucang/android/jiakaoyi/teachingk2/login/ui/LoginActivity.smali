.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\u000fH\u0003J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u000fH\u0014J\u0008\u0010\u001b\u001a\u00020\u0013H\u0002J\u0008\u0010\u001c\u001a\u00020\u000fH\u0016J\u0008\u0010\u001d\u001a\u00020\u000fH\u0014J\u0008\u0010\u001e\u001a\u00020\u000fH\u0014J\u0008\u0010\u001f\u001a\u00020\u000fH\u0014J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\"H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "alertDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;",
        "lastSpeed",
        "",
        "loginTabLogic",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;",
        "page",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;",
        "playCount",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "exit",
        "exitCountDown",
        "getStatName",
        "",
        "init",
        "isSoftShowing",
        "onBackPressed",
        "onDestroy",
        "onPause",
        "onResume",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "Companion",
        "teachbase_release"
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
.field public static final g:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;


# instance fields
.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

.field private d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->getStatName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->state:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->action:I

    .line 5
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->e:I

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->f:I

    return-void
.end method

.method private final isSoftShowing()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    mul-int/lit8 v0, v0, 0x2

    .line 4
    div-int/lit8 v0, v0, 0x3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->k()V

    const/4 p0, 0x0

    throw p0
.end method

.method private final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final l()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi",
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->g()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->countDownCl:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;

    const-string v1, "viewBinding.countDownCl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$exitCountDown$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$exitCountDown$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->a(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->onBackPressed()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private static final o(Landroid/view/View;)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "it.context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_enter_admin_password:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.teachbase_enter_admin_password)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$3$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$3$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->k(Lkotlin/jvm/b/l;)V

    .line 3
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->y(Landroid/app/Activity;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->y(Landroid/app/Activity;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNonPerceiveLogin:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->y(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchTv:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchIv:Landroid/widget/ImageView;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->s(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->o(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->isSoftShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v0}, Landroidx/core/a/a;->i(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "Login"

    return-object v0
.end method

.method protected init()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->f:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->statusBar:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    const-string v2, "viewBinding.statusBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->closeIv:Landroid/widget/TextView;

    const-string v2, "viewBinding.closeIv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->check_ic_close:I

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_38:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->h(Landroid/widget/TextView;II)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->settingIv:Landroid/widget/TextView;

    const-string v2, "viewBinding.settingIv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->login_ic_setting:I

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->h(Landroid/widget/TextView;II)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->coachIv:Landroid/widget/TextView;

    const-string v2, "viewBinding.coachIv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->login_ic_coach:I

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->h(Landroid/widget/TextView;II)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->closeIv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/m;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->coachIv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/n;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->settingIv:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/t;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/r;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/q;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/q;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->impLoginTv:Landroid/view/View;

    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/base/e;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$6;

    invoke-direct {v8, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$6;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    invoke-direct {v1, p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->f(Ljava/util/List;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v4, "key.LoginAction"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNonPerceiveLogin:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->y(Landroid/app/Activity;)V

    goto/16 :goto_5

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 20
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_logout_notice:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->multi_device_hint:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "getString(R.string.multi_device_hint)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_confirm:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "getString(R.string.teach\u2026se_dialog_button_confirm)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    .line 24
    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 26
    :goto_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 27
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    goto :goto_5

    :cond_5
    :goto_3
    const/4 v0, 0x3

    if-nez v1, :cond_6

    goto :goto_5

    .line 28
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_8

    .line 29
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_time_over:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    .line 31
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_time_over_desc:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "getString(R.string.teachbase_time_over_desc)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_knew:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "getString(R.string.teachbase_knew)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/p;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 35
    :goto_4
    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    invoke-direct {v3, p0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 36
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    .line 37
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 38
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->l()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 39
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchIv:Landroid/widget/ImageView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->l()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 40
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->l()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 41
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->g()V

    .line 42
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->h()V

    .line 43
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableSundial:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->I()V

    .line 45
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNonPerceiveLogin:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchIv:Landroid/widget/ImageView;

    const-string v1, "viewBinding.switchIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->switchTv:Landroid/widget/TextView;

    const-string v3, "viewBinding.switchTv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$8;

    invoke-direct {v7, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$init$8;-><init>(Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;->countDownCl:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->l()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->g()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->h()V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->i()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->q(Ljava/lang/String;)Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-int p1, p1

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->e:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->f:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->f:I

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_login_ai_teach_car:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 5
    :cond_0
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->e:I

    return-void
.end method
