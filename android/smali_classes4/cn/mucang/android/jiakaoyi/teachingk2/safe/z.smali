.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000eH\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalMonitor;",
        "",
        "()V",
        "brakeObserver",
        "cn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalMonitor$brakeObserver$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalMonitor$brakeObserver$1;",
        "currentActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "dialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalDialog;",
        "dismissTime",
        "",
        "lastLevel",
        "",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;",
        "canShowDialog",
        "",
        "checkShowRadar",
        "it",
        "getLevel",
        "dis",
        "init",
        "",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

.field private static c:J

.field private static d:I

.field private static e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/g;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->f:Landroidx/lifecycle/a0;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z$a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->g:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    return-object v0
.end method

.method private final b()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final c(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)I
    .locals 8

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    const-string v1, "frontRadarDis"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v1, v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    :goto_0
    const/16 v6, 0x96

    if-ge v4, v1, :cond_1

    aget v7, v0, v4

    if-lez v7, :cond_0

    if-ge v7, v6, :cond_0

    .line 5
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;

    invoke-direct {v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->d(I)I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/a0/d;->e(II)I

    move-result v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "backRadarDis"

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget v4, p1, v1

    if-lez v4, :cond_2

    if-ge v4, v6, :cond_2

    .line 8
    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;

    invoke-direct {v7, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->d(I)I

    move-result v4

    invoke-static {v5, v4}, Lkotlin/a0/d;->e(II)I

    move-result v4

    move v5, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    return v3
.end method

.method private final d(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0x96

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x32

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method public static synthetic f(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->i(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/RadarModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/RadarModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/RadarModel;->front:[I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/RadarModel;->back:[I

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->f(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;

    const-string v2, "it"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->c(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 7
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->i()V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getRingRadar()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j0;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->d:I

    if-eq v3, v2, :cond_2

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h()V

    .line 11
    :cond_2
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->c(I)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->i()V

    .line 13
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getShowRadar()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->c:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8

    .line 15
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-eqz v0, :cond_d

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    :goto_2
    if-nez v1, :cond_d

    .line 16
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 17
    :goto_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 18
    :goto_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->e:Ljava/lang/ref/WeakReference;

    .line 19
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "getCurrentActivity()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez v0, :cond_b

    goto :goto_5

    .line 20
    :cond_b
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->show()V

    .line 21
    :goto_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/f;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 22
    :cond_d
    :goto_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;->l(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V

    goto :goto_7

    .line 23
    :cond_f
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez p0, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 24
    :goto_7
    sput v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->d:I

    return-void
.end method

.method private static final i(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p0, 0x0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->c:J

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->j()V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->g:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final j()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->f:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->g:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/y;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :goto_0
    return-void
.end method
