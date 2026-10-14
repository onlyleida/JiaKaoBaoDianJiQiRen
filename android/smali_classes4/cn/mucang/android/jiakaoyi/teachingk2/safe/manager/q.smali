.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u000cH\u0002J\u0008\u0010\u0015\u001a\u00020\u0006H\u0007J\u0008\u0010\u0016\u001a\u00020\u0012H\u0007J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0006H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/FenceBrakeManager;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "brakeTriggerModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$TriggerModel;",
        "enableFence",
        "",
        "handler",
        "Landroid/os/Handler;",
        "hasBrake",
        "hasInit",
        "lastTipTime",
        "",
        "lastTipType",
        "",
        "thread",
        "Landroid/os/HandlerThread;",
        "beidouTips",
        "",
        "fence",
        "time",
        "getFenceEnable",
        "init",
        "judgeFence",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "onSignalChanged",
        "set",
        "start",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;

.field private static b:Landroid/os/HandlerThread; = null

.field private static c:Landroid/os/Handler; = null

.field private static d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e; = null

.field private static volatile e:Z = true

.field private static volatile f:Z

.field private static g:Z

.field private static h:J

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;J)V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    .line 2
    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->h:J

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->i:I

    goto :goto_1

    .line 4
    :cond_1
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->i:I

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    if-eq v3, v4, :cond_2

    .line 5
    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->h:J

    .line 6
    :cond_2
    sget-wide v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->h:J

    cmp-long v3, v5, v1

    if-nez v3, :cond_6

    .line 7
    sput-wide p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->h:J

    const/4 v3, 0x1

    if-eq v4, v3, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v0, 0x3

    if-eq v4, v0, :cond_3

    const-string v0, ""

    goto :goto_0

    .line 8
    :cond_3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_leave_safe_area_hint:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.teachbase_leave_safe_area_hint)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_4
    sget-object v4, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_collision_electronic_fence_hint:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.teach\u2026on_electronic_fence_hint)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->src:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_leave_train_area_hint:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.teach\u2026se_leave_train_area_hint)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :goto_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 12
    :cond_6
    sget-wide v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->h:J

    sub-long/2addr p2, v3

    const-wide/16 v3, 0x1388

    cmp-long v0, p2, v3

    if-lez v0, :cond_7

    .line 13
    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->h:J

    .line 14
    :cond_7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->i:I

    :goto_1
    return-void
.end method

.method public static final declared-synchronized b()Z
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final c()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const-string v0, "\u7535\u5b50\u56f4\u680f\u521d\u59cb\u5316\u9000\u51fa\uff1a\u6ca1\u6709\u9009\u62e9\u8003\u573a"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->isClose(J)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->e:Z

    .line 4
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "\u7535\u5b50\u56f4\u680f\u662f\u5426\u542f\u7528:"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->g:Z

    if-nez v1, :cond_4

    .line 6
    sput-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->g:Z

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "\u7535\u5b50\u56f4\u680f\u8ba1\u7b97\u7ebf\u7a0b"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string v2, "thread"

    if-eqz v0, :cond_3

    const/16 v3, 0x9

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->b:Landroid/os/HandlerThread;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->c:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    const-string v0, "\u7535\u5b50\u56f4\u680f\u521d\u59cb\u5316\u6210\u529f"

    .line 14
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-eq v0, v2, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-ne v0, v2, :cond_4

    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v2, :cond_4

    .line 2
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->f:Z

    if-eqz v0, :cond_3

    const-string v0, "\u89e3\u5239\u72b6\u6001\uff0c\u5c06brake\u7f6e\u4e3afalse"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->f:Z

    .line 5
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 7
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 8
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v2, :cond_8

    return-void

    .line 9
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->c:Landroid/os/Handler;

    if-eqz v0, :cond_9

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/b;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_9
    const-string p1, "handler"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 4

    const-string v0, "$signalGetter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->k(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-direct {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;J)V

    const/16 v1, 0x2c

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    sget-boolean v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->f:Z

    if-nez v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-eqz v3, :cond_1

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v3, p0, :cond_1

    .line 4
    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    .line 5
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-nez p0, :cond_b

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u76d1\u6d4b\u5230\u7535\u5b50\u56f4\u680f\u5239\u8f66\u6e90:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->zhName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->zhSrc:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->f:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 7
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/a;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 8
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->f:Z

    .line 9
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    goto/16 :goto_8

    .line 10
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-eqz p0, :cond_a

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6ca1\u6709\u7535\u5b50\u56f4\u680f\u78b0\u649e\uff0c\u6e05\u7a7a:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-nez v0, :cond_3

    :goto_1
    move-object v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-nez v0, :cond_5

    :goto_3
    move-object v0, v2

    goto :goto_4

    :cond_5
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->zhName:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-nez v0, :cond_7

    :goto_5
    move-object v0, v2

    goto :goto_6

    :cond_7
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->zhSrc:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-nez v0, :cond_9

    move-object v0, v2

    goto :goto_7

    :cond_9
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->f:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 12
    :cond_a
    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u7535\u5b50\u56f4\u680f\u5239\u8f66\u68c0\u6d4b\u5f02\u5e38:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    :cond_b
    :goto_8
    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Fence:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    const-string v1, "triggerModel.desc"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraDesc(Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V

    const/4 p0, 0x1

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static final declared-synchronized i(Z)V
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
