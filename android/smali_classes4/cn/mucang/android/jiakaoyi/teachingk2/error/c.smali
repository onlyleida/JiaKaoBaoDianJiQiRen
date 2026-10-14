.class public final Lcn/mucang/android/jiakaoyi/teachingk2/error/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0007J\u0008\u0010\u0012\u001a\u00020\u000bH\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/error/BrakeCheck;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeModeChanged;",
        "wheelOpen",
        "",
        "wheelTime",
        "",
        "initValue",
        "",
        "initWheel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;",
        "onSignalChanged",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "start",
        "stop",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/error/c;

.field private static b:Z

.field private static c:J

.field private static final d:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/error/c;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/error/a;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->d:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHardwareDoorBrake()Z

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHardwareBeltBrake()Z

    move-result v0

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->o(Z)V

    .line 5
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->p(Z)V

    return-void
.end method

.method public static final b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getWheel()Z

    move-result v1

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->b:Z

    return-object v0
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->a()V

    return-void
.end method

.method public static final e()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/error/c;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->a()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public static final f()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/error/c;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const-wide/16 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->b:Z

    if-eqz p1, :cond_1

    .line 3
    sget-wide v3, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->c:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->c:J

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->c:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    .line 6
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->WHEEL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    .line 7
    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->c:J

    goto :goto_0

    .line 8
    :cond_1
    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->c:J

    goto :goto_0

    .line 9
    :cond_2
    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->c:J

    :cond_3
    :goto_0
    return-void
.end method
