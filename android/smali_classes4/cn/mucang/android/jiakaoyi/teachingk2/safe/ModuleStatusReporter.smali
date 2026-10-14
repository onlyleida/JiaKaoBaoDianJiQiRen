.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\"B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0015J4\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00082\"\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001aj\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008`\u001bH\u0002J\u0006\u0010\u001c\u001a\u00020\u0015J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0010H\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0002R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "appCheckList",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;",
        "[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;",
        "appStatusInt",
        "",
        "duration",
        "",
        "hasInit",
        "",
        "isAlive",
        "isStarting",
        "mSignalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "model",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;",
        "startTime",
        "checkAndReport",
        "",
        "exit",
        "handleStatus",
        "key",
        "map",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "init",
        "onSignalChanged",
        "signalGetter",
        "report",
        "result",
        "",
        "ModuleStatusModel",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;

.field private static b:Z

.field private static c:J

.field private static final d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;

.field private static e:I

.field private static final f:[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;

.field private static g:Z

.field private static h:Lcn/mucang/android/jiakaoyi/signal/c/e;

.field private static volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->f:[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 10

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->h:Lcn/mucang/android/jiakaoyi/signal/c/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardState:I

    :goto_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getMain()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_3

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    .line 3
    :cond_3
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardState:I

    :goto_3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getCollect()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_6

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    .line 4
    :cond_6
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic1State:I

    :goto_5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getUltrasound1()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_9

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    .line 5
    :cond_9
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic2State:I

    :goto_7
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getUltrasound2()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_c

    :goto_8
    const/4 v2, 0x0

    goto :goto_9

    .line 6
    :cond_c
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardState:I

    :goto_9
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getSafe()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_f

    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    .line 7
    :cond_f
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_a

    :cond_10
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v2, :cond_11

    goto :goto_a

    :cond_11
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->throttleBoardState:I

    :goto_b
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getThrottle()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_12

    :goto_c
    const/4 v2, 0x0

    goto :goto_d

    .line 8
    :cond_12
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_c

    :cond_13
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v2, :cond_14

    goto :goto_c

    :cond_14
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->gearBoardState:I

    :goto_d
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getGear()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_15

    :goto_e
    const/4 v2, 0x0

    goto :goto_f

    .line 9
    :cond_15
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_e

    :cond_16
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/ai/a;->e:I

    :goto_f
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getAi()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    if-nez v0, :cond_17

    :goto_10
    const/4 v0, 0x0

    goto :goto_11

    .line 10
    :cond_17
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_10

    :cond_18
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->O:I

    :goto_11
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getB2Main()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->CalibrateWheel:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_19

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 13
    :cond_19
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->f:[Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;

    .line 14
    array-length v4, v2

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_1b

    aget-object v6, v2, v5

    .line 15
    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$a;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_1a
    const/4 v7, 0x0

    goto :goto_14

    :pswitch_0
    if-eqz v0, :cond_1a

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->j()Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_13

    :pswitch_1
    if-nez v0, :cond_1a

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->j()Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_13

    .line 18
    :pswitch_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->GpsNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v7

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->staticsNormal()Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_13

    .line 19
    :pswitch_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v7

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->staticsNormal()Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_13

    .line 20
    :pswitch_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->AiNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v7

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->staticsNormal()Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_13

    .line 21
    :pswitch_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/b/c;->c()Z

    move-result v7

    if-nez v7, :cond_1a

    :goto_13
    const/4 v7, 0x1

    .line 22
    :goto_14
    sget v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->e:I

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckAppModelState;->getCheckIndex()I

    move-result v6

    invoke-static {v8, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v6

    sput v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->e:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 23
    :cond_1b
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->e:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->getAppModule()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c(ILjava/util/HashMap;)V

    .line 24
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 25
    sget-wide v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_1d

    .line 26
    sput-wide v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c:J

    .line 27
    :cond_1d
    sget-wide v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-lez v0, :cond_1e

    .line 28
    sput-wide v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->c:J

    .line 29
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;

    new-array v2, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toJSONString(model, Seri\u2026eCircularReferenceDetect)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->h(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter$ModuleStatusModel;->clear()V

    :cond_1e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static final e()V
    .locals 2

    .line 1
    :goto_0
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->i:Z

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->k()Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->g:Z

    const-string v0, "\u5f00\u59cb\u4e0a\u62a5\u5404\u6a21\u5757\u72b6\u6001"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    :cond_0
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->g:Z

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->a()V

    :cond_1
    const-wide/16 v0, 0x64

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->e()V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->i(Ljava/lang/String;)V

    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final i(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u4e0a\u62a5\u6a21\u5757\u6545\u969c:"

    const-string v1, "$result"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->m(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;-><init>()V

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;->n(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 5
    :catch_0
    :try_start_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;-><init>()V

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;->n(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string v2, "\u6a21\u5757\u6545\u969c\u6570\u636e\u4e0a\u62a5\u5931\u8d25:"

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 7
    :goto_2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->i:Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->b:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->h:Lcn/mucang/android/jiakaoyi/signal/c/e;

    return-void
.end method
