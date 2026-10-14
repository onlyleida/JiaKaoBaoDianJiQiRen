.class public final Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0011H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016J\"\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\u0008R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;",
        "Landroid/app/Service;",
        "()V",
        "debugGps",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;",
        "interval",
        "",
        "mServiceHandler",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$ServiceHandler;",
        "mServiceLooper",
        "Landroid/os/Looper;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/SetInitDebugGps;",
        "posObserver",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveBt3dPosInfo;",
        "gps",
        "",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "ServiceHandler",
        "signal_release"
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
.field private final a:J

.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

.field private final d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;

.field private final e:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0xc8

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->a:J

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->e:Landroidx/lifecycle/a0;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->f:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->b()V

    return-void
.end method

.method private final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    const-string v2, "signal()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;J)Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    const-wide v2, 0x403d4b851eb851ebL    # 29.294999999999998

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->n(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

    const/4 v1, 0x0

    const-string v2, "mServiceHandler"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v3, "mServiceHandler.obtainMessage()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

    if-eqz v3, :cond_0

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->a:J

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->e(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->f(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->b(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;

    const-string v1, "it"

    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "signalGetter"

    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->c(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;Lcn/mucang/android/jiakaoyi/signal/c/e;J)Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    const-wide v0, 0x403d4b851eb851ebL    # 29.294999999999998

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->n(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    return-void

    :cond_1
    const-string p0, "mServiceHandler"

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "DebugGpsService"

    const-string v1, "onCreate()"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "thread.looper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->b:Landroid/os/Looper;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->b:Landroid/os/Looper;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void

    :cond_0
    const-string v0, "mServiceHandler"

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "mServiceLooper"

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->c:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "mServiceHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
