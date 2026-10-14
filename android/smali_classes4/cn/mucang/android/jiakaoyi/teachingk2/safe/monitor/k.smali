.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\"\u001a\u00020#H\u0007J\u0008\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020#2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0010J\u0010\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0016J\u001a\u0010+\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00182\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002J\u0010\u0010-\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002J\u0010\u0010.\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u00020\u00108FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/BrakeGlobalMonitor;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "brakeDataLog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/BrakeDataLog;",
        "value",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "brakeModel",
        "getBrakeModel$annotations",
        "getBrakeModel",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "setBrakeModel",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V",
        "count",
        "",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "lastBrakeState",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;",
        "lastReason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "lastState",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;",
        "radarData",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "triggerDialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;",
        "writeCount",
        "init",
        "",
        "isShowing",
        "",
        "missBrake",
        "barrierDesc",
        "onBrake",
        "it",
        "onSignalChanged",
        "reason",
        "recordLog",
        "updateBrakeReason",
        "uploadBrake",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

.field private static c:I

.field private static d:Lcn/mucang/android/jiakaoyi/signal/c/e;

.field private static e:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

.field private static f:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

.field private static g:I

.field private static h:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

.field private static final i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;

.field private static j:Ljava/lang/String;

.field private static volatile k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

.field private static l:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->e:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;

    const-string v0, ""

    .line 4
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->j:Ljava/lang/String;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    return-object v0
.end method

.method public static final c()V
    .locals 3

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/d;

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final d()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/x;->b()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/e;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 1

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->l:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->c(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V

    return-void
.end method

.method public static final f()Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

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
    return v1
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->u(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic h(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->o(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->m(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->d()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->e(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;-><init>()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getCode()I

    move-result v3

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_0
    const/4 v5, 0x1

    .line 6
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, p1

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private final n(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->s(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_12

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->canShowDialog()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->g:I

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->q(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    .line 8
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v2

    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->e:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_0
    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    .line 11
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v2

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v2, v4, :cond_8

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    instance-of v4, v2, Lcn/mucang/jiakaoyi/uilib/h;

    if-eqz v4, :cond_4

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/h;

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    const/4 v4, 0x1

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->CarBrake:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->setExtraTitle(Ljava/lang/String;)V

    .line 14
    sget-object v6, Lkotlin/v;->a:Lkotlin/v;

    .line 15
    invoke-interface {v2, v5}, Lcn/mucang/jiakaoyi/uilib/h;->a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    return-void

    .line 16
    :cond_7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 17
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-eqz v1, :cond_b

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v3

    :goto_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v1

    if-eq v3, v1, :cond_11

    .line 18
    :cond_b
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 19
    :goto_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-direct {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    .line 20
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/b;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 21
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 22
    :goto_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->HouLiu:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v0, v1, :cond_e

    .line 23
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->HouLiu:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->g(I)V

    goto :goto_6

    .line 24
    :cond_e
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Fence:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const-string v2, ""

    if-ne v0, v1, :cond_f

    .line 25
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->Fence:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->g(I)V

    .line 26
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->t(Lkotlin/Pair;)V

    goto :goto_6

    .line 27
    :cond_f
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v0, v1, :cond_10

    .line 28
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->g(I)V

    .line 29
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->t(Lkotlin/Pair;)V

    .line 30
    :cond_10
    :goto_6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->t(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;

    .line 31
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;J)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_11
    :goto_7
    return-void

    .line 32
    :cond_12
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5239\u8f66\u5f39\u7a97\u901f\u5ea6\u4e0d\u6ee1\u8db3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private static final o(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    :cond_0
    return-void
.end method

.method private final p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const-string v1, "\n\u4fe1\u53f7:"

    const-string v2, ", degree="

    const-string v3, ", y="

    const-string v4, ", x="

    const-string v5, ", \u822a\u5411\u89d2:"

    const-string v6, ", lat="

    const-string v7, ", \u8f66\u4e2d\u5fc3\u4f4d\u7f6e:lon="

    const-string v8, ", "

    const/4 v9, 0x0

    if-ne p1, v0, :cond_12

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->l:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    if-eqz v0, :cond_12

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    :goto_0
    move-object p1, v9

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 4
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    :goto_2
    move-object p1, v9

    goto :goto_3

    .line 5
    :cond_3
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 6
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_6

    :goto_4
    move-object p1, v9

    goto :goto_5

    .line 7
    :cond_6
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 8
    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_8

    :goto_6
    move-object p1, v9

    goto :goto_7

    .line 9
    :cond_8
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 10
    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_b

    :goto_8
    move-object p1, v9

    goto :goto_9

    .line 11
    :cond_b
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p1, :cond_d

    goto :goto_8

    :cond_d
    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 12
    :goto_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_e

    :goto_a
    move-object p1, v9

    goto :goto_b

    .line 13
    :cond_e
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_a

    :cond_f
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 14
    :goto_b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", \n\u96f7\u8fbe:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->l:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_10

    goto :goto_c

    .line 17
    :cond_10
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->toString()Ljava/lang/String;

    move-result-object v9

    .line 18
    :goto_c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1a

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_13

    :goto_d
    move-object p1, v9

    goto :goto_e

    .line 20
    :cond_13
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_d

    :cond_14
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    if-nez p1, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 21
    :goto_e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_16

    :goto_f
    move-object p1, v9

    goto :goto_10

    .line 22
    :cond_16
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_f

    :cond_17
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    if-nez p1, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 23
    :goto_10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_19

    :goto_11
    move-object p1, v9

    goto :goto_12

    .line 24
    :cond_19
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_11

    :cond_1a
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 25
    :goto_12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1b

    :goto_13
    move-object p1, v9

    goto :goto_14

    .line 26
    :cond_1b
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_13

    :cond_1c
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p1, :cond_1d

    goto :goto_13

    :cond_1d
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 27
    :goto_14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1e

    :goto_15
    move-object p1, v9

    goto :goto_16

    .line 28
    :cond_1e
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_15

    :cond_1f
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p1, :cond_20

    goto :goto_15

    :cond_20
    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 29
    :goto_16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_21

    :goto_17
    move-object p1, v9

    goto :goto_18

    .line 30
    :cond_21
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_17

    :cond_22
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 31
    :goto_18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_23

    goto :goto_19

    .line 32
    :cond_23
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    if-nez p1, :cond_24

    goto :goto_19

    :cond_24
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->toString()Ljava/lang/String;

    move-result-object v9

    .line 33
    :goto_19
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1a
    return-object p1
.end method

.method private final q(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->e:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_0
    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->g:I

    .line 3
    :cond_2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->g:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    add-int/2addr v0, v1

    .line 4
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->g:I

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static final r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u5239\u8f66\u7406\u7531:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->mergeBrake(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    .line 4
    :cond_0
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, v1, :cond_1

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->j:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private final s(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_0
    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isBrakedByRadar()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isBrakedByCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isBrakedBySpeed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->HardwareSpeed:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    goto/16 :goto_7

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isDrivingOpenDoor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Door:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    goto/16 :goto_7

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isDrivingOpenBelt()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Belt:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    goto/16 :goto_7

    .line 9
    :cond_4
    :goto_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    .line 10
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_xx_obstacle_brake:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.teachbase_xx_obstacle_brake)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->src:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraTitle(Ljava/lang/String;)V

    .line 11
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u969c\u788d\u7269\u5239\u8f66("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->zhSrc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraZhTitle(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v2, v1

    goto :goto_2

    :cond_5
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_left:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.teachbase_left)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraTitle(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v2, v1

    goto :goto_3

    :cond_6
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_right:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.teachbase_right)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraTitle(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v2, v1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "\u5de6"

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraZhTitle(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v2, v1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "\u53f3"

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraZhTitle(Ljava/lang/String;)V

    .line 17
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->brakeDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    :goto_6
    if-nez v1, :cond_b

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    :cond_b
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setExtraDesc(Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V

    :cond_c
    :goto_7
    return-void
.end method

.method private final t(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/a;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 8

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;-><init>()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getCode()I

    move-result v3

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_0
    const/4 v5, 0x0

    const-string v6, ""

    .line 6
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/a;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->j:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->j:Ljava/lang/String;

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bef\u5239:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->e(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_upload_problem:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/c;

    invoke-direct {v1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->d:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 6
    :goto_2
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_BRAKE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-ne v0, v3, :cond_3

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-ne v4, v5, :cond_3

    const-string v4, "\u5239\u8f66"

    .line 7
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->z(Ljava/lang/String;)V

    .line 8
    :cond_3
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->h:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v4, :cond_4

    move-object v4, v2

    goto :goto_3

    :cond_4
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_3
    if-eqz v4, :cond_6

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_4

    :cond_5
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_4
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    goto :goto_5

    .line 11
    :cond_6
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_5
    const/4 v5, 0x0

    if-ne v0, v3, :cond_7

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-eq v4, v0, :cond_7

    .line 13
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->n(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 14
    sput v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->c:I

    goto/16 :goto_b

    .line 15
    :cond_7
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->c:I

    add-int/2addr v0, v1

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->c:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_12

    .line 16
    sput v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->c:I

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-eqz v0, :cond_11

    if-nez v0, :cond_8

    :goto_6
    move-object v0, v2

    goto :goto_7

    .line 18
    :cond_8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraDesc()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_a

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 19
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 20
    :goto_8
    sput v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->g:I

    .line 21
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->isFront()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 22
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_brake_release_back:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 23
    :cond_c
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->isBack()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 24
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_brake_release_forward:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 25
    :cond_d
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v2

    :goto_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteLock:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v2, v0, :cond_10

    .line 26
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_lock_car_release:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 27
    :cond_10
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_brake_release:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 29
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_b

    .line 30
    :cond_11
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->k:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->isByHardware()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 31
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    .line 32
    :cond_12
    :goto_b
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
