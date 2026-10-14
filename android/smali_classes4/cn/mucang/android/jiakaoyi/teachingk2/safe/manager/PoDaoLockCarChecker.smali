.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 %2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0014\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001e\u001a\u00020\u0018H\u0002J\u0006\u0010\u001f\u001a\u00020\u0018J\u0008\u0010 \u001a\u00020\u0018H\u0002J\u0008\u0010!\u001a\u00020\u0018H\u0002J\u0006\u0010\"\u001a\u00020\u0018J\u0006\u0010#\u001a\u00020\u0018J\u0008\u0010$\u001a\u00020\u0018H\u0002R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "()V",
        "currentBrakeState",
        "delayTask",
        "Ljava/lang/Runnable;",
        "lastBrakeCarPos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "lastDirection",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;",
        "lastGear",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "onHouLiuing",
        "",
        "onWaitDelayTask",
        "seriesSignalCounts",
        "",
        "triggeredFenRadarBrakeCounts",
        "isPoDaoLocking",
        "isRealDirection",
        "direction",
        "onChanged",
        "",
        "brakeReason",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "printOnSignalChange",
        "removeDelayTask",
        "reset",
        "resetHouLiu",
        "resetLastState",
        "start",
        "stop",
        "tryLockCar",
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


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:I

.field private f:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

.field private g:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private h:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->f:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PoDaoLockCarChecker: \u89e6\u53d1\u5ef6\u8fdf\u4efb\u52a1\uff0c\u5c06\u540e\u6e9c\u72b6\u6001\u8bbe\u4e3afalse"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i()V

    return-void
.end method

.method private final b()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->APP_PODAO:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->e:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->e:I

    if-ge p1, v1, :cond_1

    add-int/2addr p1, v2

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->e:I

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->e:I

    if-lt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;)V

    return-void
.end method

.method private final f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PoDaoLockCarChecker: \u6321\u4f4d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->zhName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", \u8fd0\u52a8\u65b9\u5411\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->directionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->c:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a:Z

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g()V

    return-void
.end method

.method private final j()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->e:I

    return-void
.end method

.method private final m()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoDaoLockCarChecker: \u89e6\u53d1\u7535\u5b50\u56f4\u680f\u6216\u969c\u788d\u7269(\u8f66\u5728\u540e\u6e9c)\u7684\u5239\u8f66\u6b21\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u8ba4\u4e3a\u8f66\u8f86\u5371\u9669\uff0c\u76f4\u63a5\u9501\u8f66"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->APP:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker$tryLockCar$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker$tryLockCar$1;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->f:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, p1, :cond_4

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "PoDaoLockCarChecker: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Fence:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne p1, v0, :cond_3

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a:Z

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoDaoLockCarChecker: \u89e6\u53d1\u5239\u8f66\u524d\u662f\u5426\u6709\u540e\u6e9c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", counts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->m()V

    :cond_3
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a:Z

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->f:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    :cond_4
    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i()V

    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->l()V

    const-string v0, "PoDaoLockCarChecker: start"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final l()V
    .locals 1

    const-string v0, "PoDaoLockCarChecker: stop"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->h()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->j()V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->f:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, v2, :cond_3

    const-string v0, "PoDaoLockCarChecker: \u5df2\u89e3\u5239"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->f:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 9
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-string v2, "signalGetter.car.gear"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i()V

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    return-void

    .line 13
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, v2, :cond_5

    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i()V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_7

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    if-lez v2, :cond_7

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    const-string v0, "PoDaoLockCarChecker: \u524d\u8fdb\u4e861\u7c73\uff0c\u5c06\u6b21\u6570\u6e05\u96f6"

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->b:I

    .line 19
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 20
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a:Z

    if-eqz v0, :cond_7

    .line 22
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->c:Z

    if-nez v0, :cond_7

    const-string v0, "PoDaoLockCarChecker: \u540e\u6e9c\u505c\u6b62\uff0c\u6709\u53ef\u80fd\u662f\u5239\u8f66\u5bfc\u81f4\uff0c\u5ef6\u8fdf1.5s\u5c06\u540e\u6e9c\u6807\u5fd7\u4f4d\u8bbe\u4e3afalse"

    .line 23
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 24
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->c:Z

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 27
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, v1, :cond_7

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g()V

    .line 29
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a:Z

    if-nez v0, :cond_7

    const-string v0, "PoDaoLockCarChecker: \u8f66\u8f86\u6b63\u5728\u540e\u6e9c..."

    .line 30
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 31
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->a:Z

    .line 32
    :cond_7
    :goto_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const-string v0, "signalGetter.car.direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    return-void
.end method
