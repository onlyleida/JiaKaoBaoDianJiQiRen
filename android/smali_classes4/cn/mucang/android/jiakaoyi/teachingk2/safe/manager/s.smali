.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0007J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/HouLiuBrakeManager;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "checker",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/HouLiuChecker;",
        "configDistance",
        "",
        "distanceChange",
        "",
        "lastDistance",
        "lastTime",
        "",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeModeChanged;",
        "clearHouLiu",
        "",
        "init",
        "initValue",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;

.field private static final b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

.field private static c:Z

.field private static d:I

.field private static e:J

.field private static f:I

.field private static final g:Landroidx/lifecycle/a0;
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
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;-><init>(Z)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/c;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->g:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->c:Z

    .line 3
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->n(I)Z

    :cond_0
    return-void
.end method

.method public static final b()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->c()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private final c()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getHouLiu()I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->d:I

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;)V
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->c()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 13

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    return-void

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_3

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->a()V

    return-void

    .line 9
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide v1

    .line 10
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v4, :cond_4

    .line 12
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    return-void

    :cond_4
    double-to-int v4, v1

    if-eqz v3, :cond_5

    const/16 v5, 0xa

    goto :goto_0

    :cond_5
    const/16 v5, 0x64

    :goto_0
    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, 0x0

    if-gt v5, v4, :cond_6

    const/16 v5, 0x1f4

    if-gt v4, v5, :cond_6

    const/4 v7, 0x1

    :cond_6
    if-eqz v7, :cond_7

    .line 13
    sput-boolean v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->c:Z

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sget-wide v9, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->e:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    cmp-long v5, v7, v9

    if-ltz v5, :cond_8

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->e:J

    .line 16
    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/socket/u;->n(I)Z

    goto :goto_1

    .line 17
    :cond_7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->a()V

    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    .line 18
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->d:I

    goto :goto_2

    :cond_9
    const/16 v3, 0xc8

    .line 19
    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->d:I

    invoke-static {v3, v5}, Lkotlin/a0/d;->b(II)I

    move-result v3

    :goto_2
    if-lez v3, :cond_a

    int-to-double v7, v3

    cmpl-double v5, v1, v7

    if-lez v5, :cond_a

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540e\u6e9c\u5239\u8f66:\u540e\u6e9c\u8ddd\u79bb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u8ddd\u79bb\u9608\u503c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u6863\u4f4d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->zhName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    .line 22
    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->HouLiu:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-static {p1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    .line 23
    :cond_a
    sput v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->f:I

    return-void
.end method
