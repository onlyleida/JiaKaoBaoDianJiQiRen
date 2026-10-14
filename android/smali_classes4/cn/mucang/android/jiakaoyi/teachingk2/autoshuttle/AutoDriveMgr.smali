.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0008\u0010\u001e\u001a\u00020\u0004H\u0016J\r\u0010\u001f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010 J9\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00132\'\u0010#\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020%0\u0012\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\u001c0$H\u0002J3\u0010)\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00132!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u001c0$H\u0016J\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u000bH\u0002J\u0008\u0010.\u001a\u00020\u001cH\u0002J\u001a\u0010/\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00132\u0008\u00100\u001a\u0004\u0018\u00010\rH\u0016J\u0018\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u0002032\u0006\u0010-\u001a\u00020\u000bH\u0002J\u0008\u00104\u001a\u00020\u001cH\u0016J\u0008\u00105\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/IAutoDriveMgr;",
        "()V",
        "AUTO_DRIVE_END",
        "",
        "AUTO_DRIVE_IDLE",
        "AUTO_DRIVE_ING",
        "AUTO_DRIVE_PAUSE_BRAKE",
        "AUTO_DRIVE_PAUSE_GPS",
        "AUTO_DRIVE_START",
        "TAG",
        "",
        "driveCallBack",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/IAutoDriveCallBack;",
        "driveErrorCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseError;",
        "drivePath",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "driveState",
        "driveStateCallback",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseState;",
        "naviApi",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationApi;",
        "checkPreCondition",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/model/CarCheckResult;",
        "errorCall",
        "",
        "errorMsg",
        "getAutoDriveState",
        "getDistanceXpath",
        "()Ljava/lang/Integer;",
        "getDrivePath",
        "dest",
        "driveAction",
        "Lkotlin/Function1;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
        "Lkotlin/ParameterName;",
        "name",
        "paths",
        "getDrivePathLength",
        "call",
        "length",
        "log",
        "msg",
        "registerDriveObserver",
        "startAutoDrive",
        "callBack",
        "startCall",
        "state",
        "",
        "stopAutoDrive",
        "unregisterDriveObserver",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

.field private static volatile b:I = -0x1

.field private static final c:Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;

.field private static d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

.field private static volatile e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->c:Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/d;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method private final C(ZLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/a;

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/a;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final D(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "$msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/k;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;->c(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final F()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->e:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->A()V

    return-void
.end method

.method public static final synthetic d(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic e(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    return-void
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->C(ZLjava/lang/String;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    const-string v1, "\u81ea\u52a8\u9a7e\u9a76\u5f02\u5e38\u56de\u8c03\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const-string v1, "msg"

    packed-switch v0, :pswitch_data_0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->E()V

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->OtherBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-ne v2, v4, :cond_5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v2

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v2, v4, :cond_5

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x3

    .line 7
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    const/4 p0, 0x1

    .line 9
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    .line 10
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_weak_stop_auto_drive:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;->d(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_2
    const/4 p0, 0x2

    .line 12
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    .line 13
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_brake_wait_leave_continue:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 15
    :pswitch_3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->E()V

    const/4 p0, 0x4

    .line 16
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    .line 17
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;->b()V

    goto :goto_4

    .line 18
    :cond_5
    :goto_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->P0Error:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    if-ne p0, v2, :cond_8

    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_6

    move-object v2, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    move-result-object p0

    if-nez p0, :cond_7

    move-object v3, v4

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object p0

    move-object v3, p0

    :goto_3
    const-string p0, "P0\u6545\u969c\uff1a"

    .line 20
    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    :cond_8
    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->j(Ljava/lang/String;)V

    :goto_4
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->desc:Ljava/lang/String;

    const-string v1, "\u81ea\u52a8\u9a7e\u9a76\u72b6\u6001\u56de\u8c03\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x3

    .line 3
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;->e()V

    :goto_1
    return-void
.end method

.method private final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/c;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$errorMsg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/k;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
            ">;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_planning_route:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;

    invoke-direct {v1, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/b/l;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/b/l;)V
    .locals 6

    const-string v0, "$dest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loadingDialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$driveAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5bfc\u822a\u8def\u7ebf\uff1a\u8d77\u70b9("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ") \u7ec8\u70b9("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->c:Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;

    const-string v2, "start"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;->m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/b;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/b;-><init>(Ljava/util/List;Lkotlin/jvm/b/l;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5
    :try_start_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStackTrace(e)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    .line 6
    instance-of v0, p0, Lcn/mucang/android/core/api/exception/ApiException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_planning_route_fail_msg:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.teach\u2026_planning_route_fail_msg)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    check-cast p0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->C(ZLjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_planning_route_fail:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(R.string.teachbase_planning_route_fail)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->C(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void

    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    throw p0
.end method

.method private static final p(Ljava/util/List;Lkotlin/jvm/b/l;)V
    .locals 2

    const-string v0, "$driveAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_navigation_route:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.teachbase_no_navigation_route)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->C(ZLjava/lang/String;)V

    return-void

    .line 3
    :cond_2
    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/b/l;)V
    .locals 9

    const-string v0, "$dest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->c:Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;

    const-string v3, "start"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;->m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {p0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;->getPosList()Ljava/util/List;

    move-result-object v4

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;DILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStackTrace(e)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    .line 9
    instance-of v0, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_3

    .line 10
    check-cast p0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u8def\u7ebf\u83b7\u53d6\u5931\u8d25: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p0, "\u8def\u7ebf\u83b7\u53d6\u5931\u8d25"

    .line 11
    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static synthetic s(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->D(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic t(Ljava/util/List;Lkotlin/jvm/b/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->p(Ljava/util/List;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static synthetic u(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->i(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/b/l;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/b/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->r(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V

    return-void
.end method

.method private final z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AutoDriveMgr: "

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public B(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->g()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_cant_start_auto_drive:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.teach\u2026se_cant_start_auto_drive)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->C(ZLjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->F()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    const/4 v0, -0x1

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    .line 4
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->e:Ljava/util/List;

    return-void
.end method

.method public g()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->b:I

    return v0
.end method

.method public m()Ljava/lang/Integer;
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v0, "signal().carPos.center"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->e:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;DILjava/lang/Object;)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u8def\u7ebf\u957f\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5398\u7c73"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/i;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/i;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/b/l;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
