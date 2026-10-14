.class public final Lcn/mucang/sundial/android/timer/location/LocationRebootManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/sundial/android/timer/location/LocationRebootManager;",
        "Ljava/lang/Runnable;",
        "Lkotlin/v;",
        "start",
        "()V",
        "stop",
        "run",
        "Landroid/os/HandlerThread;",
        "thread",
        "Landroid/os/HandlerThread;",
        "cn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1",
        "locationListener",
        "Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "",
        "coldRebootPeriod",
        "J",
        "<init>",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager;

.field private static final coldRebootPeriod:J = 0x493e0L

.field private static handler:Landroid/os/Handler;

.field private static final locationListener:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;

.field private static thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;

    invoke-direct {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager;

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;

    invoke-direct {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->locationListener:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLocationListener$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->locationListener:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;

    return-object p0
.end method

.method public static final synthetic access$getThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->thread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static final synthetic access$setHandler$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->thread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static final declared-synchronized start()V
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized stop()V
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "5\u5206\u949f\u6ca1\u6709\u5b9a\u4f4d\u51b7\u91cd\u542f\u4e00\u6b21"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->gps(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/location/AppLocation;->getLocationStrategy()Lcn/mucang/sundial/android/location/LocationStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/location/LocationStrategy;->coldReboot()V

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
