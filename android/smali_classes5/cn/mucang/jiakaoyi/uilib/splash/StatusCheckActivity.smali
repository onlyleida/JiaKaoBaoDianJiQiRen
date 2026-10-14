.class public final Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityStatusCheckBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\t\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u000fH\u0014J\u0008\u0010\u0014\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\u000fH\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityStatusCheckBinding;",
        "()V",
        "MAX_RETRY_TIME",
        "",
        "listener",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;",
        "requestDeviceTask",
        "cn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDeviceTask$1",
        "Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDeviceTask$1;",
        "retryTime",
        "getStatName",
        "",
        "init",
        "",
        "initViewModel",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;",
        "onDestroy",
        "removeCallbacks",
        "requestDevice",
        "retry",
        "sendTask",
        "showErrorDialog",
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
.field public static final f:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;


# instance fields
.field private b:I

.field private final c:I

.field private final d:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->f:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    const/16 v0, 0xf

    .line 2
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->c:I

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/t;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/t;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->r(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->u(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->t(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final D(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Valid:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z

    .line 3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;

    const-wide/16 p1, 0x3e8

    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Error:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    if-ne p1, p2, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->I()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final F(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->H()V

    return-void
.end method

.method private final G()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->J()V

    :cond_0
    return-void
.end method

.method private final H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final I()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 2
    new-instance v7, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->mc_contact_number:I

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5982\u4ecd\u6709\u95ee\u9898\uff0c\u8bf7\u8054\u7cfb\u5b98\u65b9\u5ba2\u670d "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/splash/q;

    invoke-direct {v5, p0}, Lcn/mucang/jiakaoyi/uilib/splash/q;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/splash/p;

    invoke-direct {v6, p0}, Lcn/mucang/jiakaoyi/uilib/splash/p;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    const-string v2, "\u8bbe\u5907\u65e0\u6cd5\u8bc6\u522b\uff0c\u8bf7\u8054\u7cfb\u5f53\u5730\u7ecf\u9500\u5546\u89e3\u51b3"

    const-string v4, "\u91cd\u8bd5"

    move-object v1, v7

    .line 5
    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {v0, p0, v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    return-void
.end method

.method private static final J(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->b:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->G()V

    return-void
.end method

.method private static final K(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->c:I

    return p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->b:I

    return p0
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->E()V

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->G()V

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->b:I

    return-void
.end method

.method public static final synthetic o(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->I()V

    return-void
.end method

.method private final p(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->k()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/splash/r;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/splash/r;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/splash/u;

    invoke-direct {v1, p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/u;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->l()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/v;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/v;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->e:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$a;->a(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 5
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->l:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;->b(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x2

    if-nez p1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 8
    sget-object p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$initViewModel$1$1;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$initViewModel$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    invoke-virtual {p1, p0, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->x(Landroid/app/Activity;Lkotlin/jvm/b/a;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 3
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    .line 4
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$string;->mc_contact_number:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5982\u4ecd\u6709\u95ee\u9898\uff0c\u8bf7\u8054\u7cfb\u5b98\u65b9\u5ba2\u670d "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/splash/s;

    invoke-direct {v4, p1}, Lcn/mucang/jiakaoyi/uilib/splash/s;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/splash/w;

    invoke-direct {v5, p0}, Lcn/mucang/jiakaoyi/uilib/splash/w;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    const-string v1, "\u8bbe\u5907\u672a\u8054\u7f51\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    const-string v3, "\u91cd\u8bd5"

    move-object v0, v6

    .line 6
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p2, p0, v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "$viewModel"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->m(Ljava/lang/String;)V

    return-void
.end method

.method private static final t(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final u(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityStatusCheckBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityStatusCheckBinding;->tipTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->K(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->J(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->q(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->s(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->D(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u72b6\u6001\u76d1\u6d4b\u9875"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026eckViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    .line 3
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->F(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->p(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->E()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    return-void
.end method
