.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001ZB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u00109\u001a\u00020:H\u0002J\u0006\u0010;\u001a\u00020:J\u0006\u0010<\u001a\u00020:J\u0006\u0010=\u001a\u00020:J\u0008\u0010>\u001a\u00020\u0004H\u0007J\u0013\u0010?\u001a\u0004\u0018\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010@J\u0006\u0010A\u001a\u00020:J\u0010\u0010B\u001a\u00020:2\u0006\u0010C\u001a\u00020DH\u0002J\u0008\u0010E\u001a\u00020:H\u0002J\u0008\u0010F\u001a\u00020:H\u0002J\u0008\u0010G\u001a\u00020:H\u0002J\u0006\u0010H\u001a\u00020\u0014J@\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u0002062\u0006\u0010K\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u00162\u0006\u0010P\u001a\u00020\u0004H\u0016J\u0010\u0010Q\u001a\u00020:2\u0006\u0010H\u001a\u00020\u0014H\u0002J\u0008\u0010R\u001a\u00020:H\u0002J\u0012\u0010S\u001a\u00020:2\u0008\u0008\u0002\u0010T\u001a\u00020\u0014H\u0003J\u0008\u0010U\u001a\u00020:H\u0003J\u0008\u0010V\u001a\u00020:H\u0003J\u0008\u0010W\u001a\u00020:H\u0002J\u0008\u0010X\u001a\u00020:H\u0002J\u0008\u0010Y\u001a\u00020:H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001a\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0014@BX\u0082\u000e\u00a2\u0006\n\n\u0002\u0010\u001d\"\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006["
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "()V",
        "FRAME_HEART_TIME_S",
        "",
        "KEY_ENABLE_PUSHER",
        "",
        "KEY_IS_SYNC",
        "KEY_QUALITY",
        "KEY_SHOW_TIME",
        "KEY_VIDEO_SOURCE_AI",
        "QUALITY_LOW",
        "QUALITY_NORMAL",
        "STATUS_CLOSE",
        "STATUS_FAIL",
        "STATUS_NORMAL",
        "TAG",
        "frameHeartRun",
        "Ljava/lang/Runnable;",
        "frameLost",
        "",
        "frameTime",
        "",
        "handler",
        "Landroid/os/Handler;",
        "value",
        "isPushStart",
        "setPushStart",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "mAlivcLivePusher",
        "Lcom/alivc/live/pusher/AlivcLivePusher;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;",
        "openCVLoaded",
        "pushScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "pusherThread",
        "Landroid/os/HandlerThread;",
        "quality",
        "reconnectJob",
        "Lkotlinx/coroutines/Job;",
        "releaseTask",
        "sourceFromAi",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "startPushTime",
        "threadNum",
        "timeFormat",
        "Ljava/text/SimpleDateFormat;",
        "traffic",
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;",
        "waterData",
        "",
        "watermarkMat",
        "Lorg/opencv/core/Mat;",
        "checkPushStatus",
        "",
        "destroy",
        "disable",
        "enable",
        "getPushStatus",
        "getPushUrl",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "init",
        "initAliPush",
        "context",
        "Landroid/content/Context;",
        "initPush",
        "initSource",
        "initWatermark",
        "isEnable",
        "onFrame",
        "byteArray",
        "width",
        "height",
        "stride",
        "size",
        "timeUs",
        "rotation",
        "onPushToggle",
        "reconnect",
        "release",
        "releasePush",
        "releaseThenInit",
        "releaseTimeWater",
        "setPushListeners",
        "startFrameHeartbeat",
        "stopFrameHeartbeat",
        "Traffic",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

.field private static b:Lcom/alivc/live/pusher/AlivcLivePusher; = null

.field private static c:Lcn/mucang/android/jiakaoyi/framework/camera/b; = null

.field private static d:I = 0xf0

.field private static e:Lorg/opencv/core/Mat; = null

.field private static f:[B = null

.field private static g:Z = false

.field private static h:Ljava/text/SimpleDateFormat; = null

.field private static volatile i:Ljava/lang/Boolean; = null

.field private static j:Z = true

.field private static k:I

.field private static l:Landroid/os/HandlerThread;

.field private static m:Landroid/os/Handler;

.field private static n:Lkotlinx/coroutines/i0;

.field private static o:Lkotlinx/coroutines/t1;

.field private static p:Z

.field private static q:Ljava/lang/Runnable;

.field private static r:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;

.field private static t:Ljava/lang/Runnable;

.field private static u:J

.field private static v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/d0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/d0;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->r:Landroidx/lifecycle/a0;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->s:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/b0;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->t:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final B()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l0(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final D()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-lez v5, :cond_3

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a(I)V

    .line 5
    sput-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->j:Z

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u62c9\u6d41\u5e27\u4e22\u5931"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->c()V

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->E()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a(I)V

    .line 10
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->w0()V

    return-void
.end method

.method public static final E()I
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->L()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->j:Z

    if-nez v0, :cond_5

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->isPlaying()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    :goto_2
    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method private final F(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$result$1;

    invoke-direct {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$result$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 5
    :cond_5
    :goto_1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/e/m;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/e/m;->c()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;

    if-nez v2, :cond_6

    move-object p1, v5

    goto :goto_2

    .line 7
    :cond_6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    .line 8
    :cond_7
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_4

    :cond_8
    const-wide/16 v6, 0x7d0

    .line 9
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$getPushUrl$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getType()I

    move-result p1

    if-eq p1, v4, :cond_4

    :cond_a
    :goto_4
    return-object v5
.end method

.method private final H(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u963f\u91cc\u4e91sdk\u521d\u59cb\u5316\uff1a\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-direct {v1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;-><init>()V

    const/16 v2, 0x7d0

    .line 4
    invoke-virtual {v1, v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setConnectRetryInterval(I)V

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushQuality:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const/16 v3, 0xf0

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->j(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;I)I

    move-result v2

    sput v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->d:I

    .line 6
    sget-object v2, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_SELFDEFINE:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    .line 7
    sget-object v3, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v3}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getWidth()I

    move-result v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->d:I

    mul-int v4, v4, v5

    invoke-virtual {v3}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getHeight()I

    move-result v3

    div-int/2addr v4, v3

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->d:I

    .line 8
    invoke-virtual {v2, v4, v3}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->setSelfDefineResolution(II)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setResolution(Lcom/alivc/live/pusher/AlivcResolutionEnum;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6e05\u6670\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "P\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5206\u8fa8\u7387\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionWidth(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionHeight(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v2

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v3, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->AAC_LC:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    invoke-virtual {v1, v3}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setAudioProfile(Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;)V

    .line 16
    sget-object v3, Lcom/alivc/live/pusher/AlivcEncodeModeEnum;->Encode_MODE_HARD:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    invoke-virtual {v1, v3}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setVideoEncodeMode(Lcom/alivc/live/pusher/AlivcEncodeModeEnum;)V

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v3}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setVideoOnly(Z)V

    .line 18
    invoke-virtual {v1, v3}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setEnableBitrateControl(Z)V

    .line 19
    sget-object v4, Lcom/alivc/live/pusher/AlivcQualityModeEnum;->QM_FLUENCY_FIRST:Lcom/alivc/live/pusher/AlivcQualityModeEnum;

    invoke-virtual {v1, v4}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setQualityMode(Lcom/alivc/live/pusher/AlivcQualityModeEnum;)V

    .line 20
    sget-boolean v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p:Z

    xor-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setPushMirror(Z)V

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u955c\u50cf\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p:Z

    xor-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    .line 23
    :cond_2
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUV420P:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    if-ne v4, v5, :cond_3

    .line 24
    sget-object v4, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUV420P:Lcom/alivc/live/pusher/AlivcImageFormat;

    goto :goto_1

    .line 25
    :cond_3
    sget-object v4, Lcom/alivc/live/pusher/AlivcImageFormat;->IMAGE_FORMAT_YUVNV21:Lcom/alivc/live/pusher/AlivcImageFormat;

    .line 26
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u56fe\u50cf\u683c\u5f0f\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-object v2, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_S16:Lcom/alivc/live/pusher/AlivcSoundFormat;

    invoke-virtual {v1, v3, v4, v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setExternMainStream(ZLcom/alivc/live/pusher/AlivcImageFormat;Lcom/alivc/live/pusher/AlivcSoundFormat;)V

    .line 28
    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;-><init>()V

    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    .line 29
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->u0()V

    .line 30
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, p1, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->init(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePushConfig;)V

    .line 31
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelError:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    invoke-virtual {p1, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->setLogLevel(Lcom/alivc/live/pusher/AlivcLivePushLogLevel;)V

    .line 32
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final I()V
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/p2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;

    move-result-object v3

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/android/b;->c(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/a;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    .line 3
    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;

    invoke-direct {v5, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;-><init>(Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 4
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->s:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->q()V

    return-void
.end method

.method private final J()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushSourceFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    .line 2
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p:Z

    if-eq v0, v1, :cond_1

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p:Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->stop()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    .line 6
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p:Z

    if-eqz v0, :cond_3

    const-string v0, "AI\u63a8\u6d41\u6a21\u5f0f"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;-><init>()V

    goto :goto_1

    :cond_3
    const-string v0, "USB\u63a8\u6d41\u6a21\u5f0f"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    .line 12
    :goto_1
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->e(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V

    :goto_2
    return-void
.end method

.method private final K()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushTimeEnable:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->h:Ljava/text/SimpleDateFormat;

    :cond_0
    return-void
.end method

.method public static synthetic M(Lkotlin/v;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i0(Lkotlin/v;)V

    return-void
.end method

.method public static synthetic N(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->r0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic O()Lkotlin/v;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->g0()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic P()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->d0()V

    return-void
.end method

.method public static synthetic Q()Lkotlin/v;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->z()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic R(Z)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->f0(Z)V

    return-void
.end method

.method public static synthetic S()Lkotlin/v;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m0()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic T()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->B()V

    return-void
.end method

.method public static synthetic U()Lkotlin/v;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q0()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic V(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->h0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic W()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->y()V

    return-void
.end method

.method public static synthetic X()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p0()V

    return-void
.end method

.method public static synthetic Y()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->D()V

    return-void
.end method

.method public static synthetic Z(Lcom/alivc/live/pusher/AlivcLivePusher;)Lkotlin/v;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->s0(Lcom/alivc/live/pusher/AlivcLivePusher;)Lkotlin/v;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c0(Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;)V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->w()V

    return-void
.end method

.method public static synthetic b0(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->o0(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    return-void
.end method

.method public static final synthetic c()Lcom/alivc/live/pusher/AlivcLivePusher;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    return-object v0
.end method

.method private static final c0(Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;->isEnable:Z

    if-eqz p0, :cond_1

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q:Ljava/lang/Runnable;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 4
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q:Ljava/lang/Runnable;

    .line 5
    :goto_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e0(Z)V

    goto :goto_1

    .line 6
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q:Ljava/lang/Runnable;

    if-nez p0, :cond_2

    .line 7
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/g;

    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q:Ljava/lang/Runnable;

    const-wide/32 v0, 0x2bf20

    .line 8
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->g:Z

    return v0
.end method

.method private static final d0()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    const/4 v1, 0x0

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e0(Z)V

    return-void
.end method

.method public static final synthetic e()Lkotlinx/coroutines/i0;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    return-object v0
.end method

.method private final e0(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/i;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/i;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->F(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final f0(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string p0, "\u76d1\u63a7\u4e2d\u5fc3\u8bf7\u6c42\u6253\u5f00\u63a8\u6d41"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->J()V

    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/f;

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/o;

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->f(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/d;

    .line 6
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->g(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    goto :goto_2

    :cond_2
    const-string p0, "\u76d1\u63a7\u4e2d\u5fc3\u8bf7\u6c42\u6253\u5f00\u63a8\u6d41\uff08\u91cd\u590d\uff09"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    if-nez p0, :cond_5

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result p0

    if-ne p0, v1, :cond_4

    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_6

    const-string p0, "\u76d1\u63a7\u4e2d\u5fc3\u8bf7\u6c42\u5173\u95ed\u63a8\u6d41"

    .line 9
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l0(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-string p0, "\u76d1\u63a7\u4e2d\u5fc3\u8bf7\u6c42\u5173\u95ed\u63a8\u6d41\uff08\u91cd\u590d\uff09"

    .line 11
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static final synthetic g()Lkotlinx/coroutines/t1;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->o:Lkotlinx/coroutines/t1;

    return-object v0
.end method

.method private static final g0()Lkotlin/v;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->H(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public static final synthetic h()Lcn/mucang/android/jiakaoyi/framework/camera/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    return-object v0
.end method

.method private static final h0(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "\u963f\u91cc\u4e91init\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic i()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->h:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private static final i0(Lkotlin/v;)V
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->I()V

    return-void
.end method

.method public static final synthetic j()[B
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->f:[B

    return-object v0
.end method

.method private final j0()V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method public static final synthetic k()Lorg/opencv/core/Mat;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method private final k0(Z)V
    .locals 3

    const-string v0, "\u91ca\u653e\u63a8\u6d41\u76f8\u5173\u8d44\u6e90"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->s:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$Traffic;->t()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->x0()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->stop()V

    .line 5
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->o:Lkotlinx/coroutines/t1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/j0;->d(Lkotlinx/coroutines/i0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    :goto_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->t0()V

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/j;

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    const-string p1, "\u963f\u91cc\u4e91\u63a8\u6d41\u5df2\u91ca\u653e\u5b8c\u6210"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    :cond_3
    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->o:Lkotlinx/coroutines/t1;

    .line 12
    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    .line 13
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->v0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->K()V

    return-void
.end method

.method static synthetic l0(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k0(Z)V

    return-void
.end method

.method public static final synthetic m()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static final m0()Lkotlin/v;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->stopPush()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    return-object v0
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->j0()V

    return-void
.end method

.method private final n0()V
    .locals 4

    const-string v0, "\u9500\u6bc1\u518d\u91cd\u65b0\u521d\u59cb\u5316\u963f\u91ccsdk"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k0(Z)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 6
    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    .line 7
    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    .line 8
    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/e0;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/e0;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_2
    return-void
.end method

.method public static final synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n0()V

    return-void
.end method

.method private static final o0(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u963f\u91cc\u63a8\u6d41"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/t;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/c0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/c0;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    const-string p0, "\u9500\u6bc1\u5b8c\u6210"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->g:Z

    return-void
.end method

.method private static final p0()V
    .locals 2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/m;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/e;

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/e/m;->f(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    return-void
.end method

.method public static final synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->v0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final q0()Lkotlin/v;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->H(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public static final synthetic r(Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->o:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final r0(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "\u963f\u91cc\u4e91init\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic s(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->v:J

    return-void
.end method

.method private static final s0(Lcom/alivc/live/pusher/AlivcLivePusher;)Lkotlin/v;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->destroy()V

    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    return-object p0
.end method

.method public static final synthetic t([B)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->f:[B

    return-void
.end method

.method private final t0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->h:Ljava/text/SimpleDateFormat;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e:Lorg/opencv/core/Mat;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 3
    :goto_0
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e:Lorg/opencv/core/Mat;

    .line 4
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->f:[B

    return-void
.end method

.method public static final synthetic u(Lorg/opencv/core/Mat;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e:Lorg/opencv/core/Mat;

    return-void
.end method

.method private final u0()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->setLivePushErrorListener(Lcom/alivc/live/pusher/AlivcLivePushErrorListener;)V

    .line 2
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$c;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->setLivePushNetworkListener(Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;)V

    .line 3
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$d;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->setLivePushInfoListener(Lcom/alivc/live/pusher/AlivcLivePushInfoListener;)V

    :goto_2
    return-void
.end method

.method public static final synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->w0()V

    return-void
.end method

.method private final v0(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a(I)V

    .line 3
    :cond_2
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->i:Ljava/lang/Boolean;

    return-void
.end method

.method private final w()V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$checkPushStatus$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$checkPushStatus$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method private final w0()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->t:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final x0()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final y()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l0(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;ZILjava/lang/Object;)V

    .line 2
    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/h;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    return-void
.end method

.method private static final z()Lkotlin/v;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b:Lcom/alivc/live/pusher/AlivcLivePusher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->destroy()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 7

    const-string v0, "key_enable_pusher"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$disable$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$disable$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final C()V
    .locals 7

    const-string v0, "key_enable_pusher"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$enable$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$enable$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final G()V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u963f\u91cc\u63a8\u6d41"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->PushSourceFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p:Z

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$init$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$init$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 6
    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$a;-><init>()V

    const-string v2, "4.2.0"

    .line 9
    invoke-static {v2, v0, v1}, Lorg/opencv/android/OpenCVLoader;->initAsync(Ljava/lang/String;Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->g:Z

    :goto_0
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->r:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->q(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final L()Z
    .locals 2

    const-string v0, "key_enable_pusher"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a([BIIIIJI)V
    .locals 14

    const-string v0, "byteArray"

    move-object v4, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->j:Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/l0;->a()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->d:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    sget-wide v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->u:J

    sub-long v7, v1, v5

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-gez v0, :cond_2

    sub-long/2addr v9, v1

    add-long/2addr v9, v5

    const-wide/16 v5, 0xa

    cmp-long v0, v9, v5

    if-lez v0, :cond_2

    return-void

    .line 7
    :cond_2
    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->u:J

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n:Lkotlinx/coroutines/i0;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;

    const/4 v10, 0x0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$onFrame$1;-><init>(II[BIIJILkotlin/coroutines/c;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object p1, v0

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_1
    return-void
.end method

.method public final x()V
    .locals 3

    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/PushSwitchModel;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->r:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/push/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/s;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5
    :goto_2
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l:Landroid/os/HandlerThread;

    .line 6
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->m:Landroid/os/Handler;

    return-void
.end method
