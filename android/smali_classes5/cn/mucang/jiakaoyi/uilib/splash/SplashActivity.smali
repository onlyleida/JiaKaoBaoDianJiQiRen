.class public final Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000_\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u000eH\u0003J\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u000eH\u0002J\u0008\u0010\u001b\u001a\u00020\u000eH\u0002J\u0012\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\u000eH\u0014J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "signalCount",
        "",
        "signalTask",
        "cn/mucang/jiakaoyi/uilib/splash/SplashActivity$signalTask$1",
        "Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$signalTask$1;",
        "startTime",
        "",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;",
        "doNext",
        "",
        "getStatName",
        "",
        "handleSignal",
        "handleUpdateInfo",
        "updateInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "initAfterRequestPermission",
        "launchSelfCheck",
        "forceOta",
        "",
        "forceObd",
        "launchStatusCheck",
        "observeInfo",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "requestPermission",
        "activity",
        "Landroid/app/Activity;",
        "showPrivacyDialog",
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
.field private a:I

.field private b:J

.field private c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

.field private final d:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->F(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;ZZ)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->m(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->t(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->J(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;)V

    return-void
.end method

.method private final E(ZZ)V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/splash/i;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/i;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;ZZ)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x3e8

    invoke-static {v0, p1, p2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final F(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;ZZ)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->h:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;

    invoke-virtual {v0, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;->b(Landroid/content/Context;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private final G()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    .line 6
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->f:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$a;->a(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final H()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/splash/f;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/splash/f;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/splash/o;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/splash/o;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private static final I(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->E(ZZ)V

    return-void
.end method

.method private static final J(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->E(ZZ)V

    return-void
.end method

.method private static final K()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "\u521d\u59cb\u5316\u6863\u4f4d\u4f20\u611f\u5668\u4fe1\u53f7"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final L(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lcn/mucang/android/core/utils/z;->b([Ljava/lang/String;)Z

    move-result v3

    const-string v4, "keyPermissionDialog"

    const/4 v5, 0x0

    .line 3
    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "EVB3561SV"

    .line 4
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 5
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/l0;

    .line 6
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/s;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$requestPermission$1;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$requestPermission$1;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$requestPermission$2;

    invoke-direct {v2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$requestPermission$2;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;)V

    .line 9
    invoke-direct {v3, p1, v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/l0;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    .line 10
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/splash/g;

    invoke-direct {v3, p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/g;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;)V

    .line 12
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {p1, v3, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final M(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    const-string p2, "keyPermissionDialog"

    .line 2
    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->s()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->L(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private final N(Landroid/app/Activity;)V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;

    .line 2
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->LUKAOYI:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result v1

    const-string v2, "keyAppPrivacy"

    const-string v3, "lukaoyi_1"

    .line 3
    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;

    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 6
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$showPrivacyDialog$1;

    invoke-direct {v5, p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$showPrivacyDialog$1;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    .line 7
    invoke-direct/range {v2 .. v8}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILkotlin/jvm/internal/o;)V

    .line 8
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->L(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->a:I

    return p0
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->s()V

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->G()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->L(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->a:I

    return-void
.end method

.method private final l()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/j;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/j;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->l(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->R()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->n()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->H()V

    return-void
.end method

.method private final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final o(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/h;

    invoke-direct {v0, p1, p0}, Lcn/mucang/jiakaoyi/uilib/splash/h;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 1

    const-string v0, "$updateInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getForce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/e;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/e;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->x(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/c;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/c;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->x(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Ljava/lang/Boolean;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Ljava/lang/Boolean;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->l()V

    return-void
.end method

.method private final s()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/k;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/k;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final t(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->h()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "updateApk "

    .line 2
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->t()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->o(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->l()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->l()V

    :goto_0
    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->r(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v()V
    .locals 0

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->K()V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->q(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->I(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->M(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/app/Activity;Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->p(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u542f\u5c4f"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.from(this))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0, p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->N(Landroid/app/Activity;)V

    const-string p1, "\u6253\u5f00app"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->tvVersion:Landroid/widget/TextView;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->tvApkTime:Landroid/widget/TextView;

    const-string v2, "2023/10/12 17:54:03"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/splash/d;->a:Lcn/mucang/jiakaoyi/uilib/splash/d;

    .line 13
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 14
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/o/c;->a:Lcn/mucang/jiakaoyi/uilib/o/c;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/o/c;->c()V

    return-void

    .line 15
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->d:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->b:J

    .line 3
    :cond_0
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->a:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->G()V

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void

    .line 9
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
