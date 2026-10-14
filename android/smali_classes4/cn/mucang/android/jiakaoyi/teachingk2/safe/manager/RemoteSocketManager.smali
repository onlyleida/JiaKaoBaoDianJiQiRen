.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/socket/o;
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0008H\u0007J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0012\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u000eH\u0016J\u0008\u0010\u0017\u001a\u00020\u0008H\u0002J\u0010\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0019H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;",
        "Lcn/mucang/jiakaoyi/uilib/socket/MCConnectListener;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "stepObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;",
        "brake",
        "",
        "reason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "getCarInfoFromSignal",
        "Ljava/nio/ByteBuffer;",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "init",
        "onConnect",
        "onConnectException",
        "onMessage",
        "message",
        "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
        "onSignalChanged",
        "signalGetter",
        "removeBrake",
        "switchSafe",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;

.field private static final b:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/g;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->b:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    return-void
.end method

.method private final d(Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v1, 0x30

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, "signal.carPos.center"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    const/16 v4, 0x64

    int-to-double v4, v4

    mul-double v2, v2, v4

    double-to-int v2, v2

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->pitch:D

    mul-double v2, v2, v4

    double-to-int v2, v2

    div-int/lit8 v2, v2, 0x32

    mul-int/lit8 v2, v2, 0x32

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    const-string v3, "signal.car"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 13
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 15
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 16
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 18
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g()Z

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 20
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_BRAKE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 21
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 23
    iget p1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    iget-object p1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 25
    iget p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 26
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    :goto_1
    iget p1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->P:I

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    iget p1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Q:I

    int-to-short p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 29
    iget p1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->R:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->value:I

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final e()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->F(Lcn/mucang/jiakaoyi/uilib/socket/o;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->b:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->h(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V

    return-void
.end method

.method private final g()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->f(B)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->v(I)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->b:Z

    if-eqz v0, :cond_1

    .line 4
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->v(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final i(Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->open:Z

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->a()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b89\u5168\u5df2\u7ecf\u662f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->open:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x4e86

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->open:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->d(ZLkotlin/jvm/b/l;)V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->seconds:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->d(ZLkotlin/jvm/b/l;)V

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->c()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6536\u5230\u76d1\u63a7\u4e2d\u5fc3\u6d88\u606f\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/RemoteBrakeModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/RemoteBrakeModel;

    iget-byte p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/RemoteBrakeModel;->cmd:B

    if-ne p1, v1, :cond_0

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_c

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->g()V

    goto/16 :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;

    if-eqz v0, :cond_8

    .line 7
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;

    iget-byte v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;->cmd:B

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 8
    iget-byte v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;->operation:B

    if-ne v0, v1, :cond_2

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->CONTROL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->CONTROL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    invoke-static {v0, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 11
    :goto_0
    iget-byte p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;->operation:B

    if-ne p1, v1, :cond_c

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_remote_open_engine_hint:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 15
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteFlame:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    .line 18
    iget-byte p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;->operation:B

    if-ne p1, v1, :cond_5

    .line 19
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    goto/16 :goto_2

    :cond_5
    if-nez p1, :cond_c

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->g()V

    goto/16 :goto_2

    :cond_6
    if-ne v0, v2, :cond_c

    .line 21
    iget-byte p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModel;->operation:B

    if-ne p1, v1, :cond_7

    .line 22
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteLock:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    .line 23
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->APP:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager$onMessage$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager$onMessage$1;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V

    goto :goto_2

    :cond_7
    if-nez p1, :cond_c

    const-string p1, "\u76d1\u63a7\u4e2d\u5fc3\u4e0b\u53d1\u89e3\u9501"

    .line 24
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->APP:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    invoke-static {p1, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_8
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModeModel;

    if-eqz v0, :cond_9

    .line 27
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModeModel;

    iget-byte p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SafeModeModel;->mode:B

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->k(I)V

    goto :goto_2

    .line 28
    :cond_9
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CollisionBrakeModel;

    if-eqz v0, :cond_a

    .line 29
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteCollision:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    goto :goto_2

    .line 30
    :cond_a
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;

    if-eqz v0, :cond_c

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u76d1\u63a7\u4e2d\u5fc3\u4e0b\u53d1\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;

    iget-boolean v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->open:Z

    if-eqz v1, :cond_b

    const-string v1, "\u6253\u5f00"

    goto :goto_1

    :cond_b
    const-string v1, "\u5173\u95ed"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5b89\u5168, seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->seconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->i(Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public onConnect()V
    .locals 0

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/socket/u;->r(Ljava/nio/ByteBuffer;)Z

    :cond_1
    return-void
.end method
