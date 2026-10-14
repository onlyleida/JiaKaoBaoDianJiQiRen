.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0006\u0010\u0012\u001a\u00020\tJ\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J\u0008\u0010\u001b\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "KEY_IS_LOCKING_CAR",
        "",
        "TAG",
        "currentLockType",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;",
        "inited",
        "",
        "lockCarDialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;",
        "poDaoLockChecker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;",
        "getCurrentLockType",
        "init",
        "",
        "initLockStateCache",
        "isLocking",
        "lockCar",
        "lockCarType",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "refreshLockState",
        "send2RemoteCenter",
        "lockType",
        "unLock",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

.field private static final b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;

.field private static c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

.field private static d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;

    return-object v0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->n()V

    return-void
.end method

.method public static final d()V
    .locals 3

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    const/4 v1, 0x1

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->e:Z

    const-string v1, "LockCarManager"

    const-string v2, ": init"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->f()V

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->k()V

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    .line 6
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/e;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    return-void
.end method

.method private final f()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->value:I

    const-string v2, "key_is_locking_car"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->getLockType(I)Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    move-result-object v1

    const-string v2, "getLockType(PreUtils.get\u2026 LockCarType.NONE.value))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    if-eq v1, v0, :cond_2

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d()Z

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockCarManager: \u9501\u8f66\u7f13\u5b58\uff1a\u8f66\u8f86\u5904\u4e8e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\u72b6\u6001\uff0c\u53d1\u52a8\u673a\u542f\u52a8\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5df2\u5239\u8f66\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->n()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    return-void
.end method

.method private final j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    move-result-object v0

    :goto_1
    if-ne v0, p1, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockCarManager: \u5df2\u7ecf\u5904\u4e8e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->desc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\u72b6\u6001\u4e86"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/d;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V
    .locals 4

    const-string v0, "$lockCarType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->value:I

    const-string v2, "key_is_locking_car"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LockCarManager: \u5c55\u793a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f39\u7a97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 5
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "getCurrentActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager$lockCar$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager$lockCar$1$1;

    .line 7
    invoke-direct {v1, v2, p0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;Lkotlin/jvm/b/l;)V

    .line 8
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    if-nez v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 10
    :goto_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    return-void
.end method

.method private final l(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    if-eq v0, v1, :cond_2

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    if-eqz p1, :cond_2

    const-string p1, "LockCarManager: refreshLockState, \u8f66\u8f86\u5df2\u89e3\u9664\u9501\u5b9a"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->n()V

    :cond_2
    return-void
.end method

.method private final m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->LockCar:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v0

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->value:I

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/u;->o(II)Z

    return-void
.end method

.method private final n()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    .line 2
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->value:I

    const-string v2, "key_is_locking_car"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :goto_0
    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    return-void
.end method


# virtual methods
.method public final c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-object v0
.end method

.method public final g()Z
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->l(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
