.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0008\u0010\u0019\u001a\u00020\u0018H\u0007J\u0008\u0010\u001a\u001a\u00020\u0018H\u0007J\u0008\u0010\u001b\u001a\u00020\u0018H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;",
        "",
        "()V",
        "TipTime",
        "",
        "backSpeed",
        "",
        "enableTip",
        "",
        "inProject",
        "isHighSpeed",
        "isK3StraightProject",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "lastTipTime",
        "maxSpeed",
        "modeObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeModeChanged;",
        "projectObserver",
        "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;",
        "signalCallback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "changeKeMu",
        "",
        "init",
        "initValue",
        "setForwardSpeed",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;

.field private static b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:I

.field private static g:Z

.field private static h:I

.field private static i:J

.field private static final j:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    :goto_0
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/16 v0, 0xf

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->f:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->g:Z

    const/4 v0, 0x5

    .line 4
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->h:I

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/l;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->j:Landroidx/lifecycle/a0;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/m;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->k:Landroidx/lifecycle/a0;

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/k;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 1

    const-string v0, "keMu"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;

    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 p0, 0x0

    .line 3
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c:Z

    .line 4
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->d:Z

    .line 5
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->e:Z

    .line 6
    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->i()V

    return-void
.end method

.method public static final b()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c()V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public static final c()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHardwareSpeedBrake()Z

    move-result v2

    sput-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->g:Z

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHardwareSpeedBrake()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->q(Z)V

    .line 5
    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->i()V

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getBackSpeed()I

    move-result v0

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager$initValue$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager$initValue$1;

    invoke-static {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->r(BILkotlin/jvm/b/a;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->q(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->j(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->h(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V

    return-void
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c()V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c:Z

    .line 3
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->d:Z

    .line 4
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->e:Z

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->b:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c:Z

    .line 7
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 8
    :goto_1
    sput-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->d:Z

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->e:Z

    .line 10
    :cond_4
    :goto_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->i()V

    return-void
.end method

.method private final i()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    .line 3
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getSpeed()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getProjectOutSpeed()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v1, v2, :cond_3

    .line 7
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->d:Z

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getK3StraightSpeed()I

    move-result v1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getK3Speed()I

    move-result v1

    goto :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v1, v2, :cond_5

    .line 11
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->e:Z

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getB2HighSpeed()I

    move-result v1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getB2Speed()I

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    .line 14
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getBackSpeed()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getBackSpeed()I

    move-result v0

    invoke-static {v0, v4}, Lkotlin/a0/d;->b(II)I

    move-result v0

    .line 16
    :goto_1
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->h:I

    add-int/lit8 v0, v1, -0x1

    const/4 v2, 0x4

    .line 17
    invoke-static {v0, v2}, Lkotlin/a0/d;->b(II)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->f:I

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u524d\u8fdb\u9650\u901f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keMu:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inProject:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isK3StraightProject:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isHighSpeed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-le v1, v3, :cond_7

    const/4 v0, 0x2

    .line 19
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager$setForwardSpeed$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager$setForwardSpeed$1;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->r(BILkotlin/jvm/b/a;)V

    :cond_7
    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v0, v1}, Lkotlin/a0/d;->a(FF)F

    move-result v0

    .line 3
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_1

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->h:I

    goto :goto_0

    .line 5
    :cond_1
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->f:I

    :goto_0
    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 6
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 7
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->i:J

    .line 8
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_speed_too_fast_hint:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ActiveRemember:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_2
    return-void
.end method
