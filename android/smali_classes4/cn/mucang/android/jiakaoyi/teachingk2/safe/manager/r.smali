.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010\u0010\u001a\u00020\rJ \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/HandbrakeManager;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "ThresholdDistance",
        "",
        "p1",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "p2",
        "p3",
        "p4",
        "tmp1",
        "tmp2",
        "doBrake",
        "",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "init",
        "isMoveBack",
        "",
        "isValid",
        "p",
        "onSignalChanged",
        "reset",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;

.field private static final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private static final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private static final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private static final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private static final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private static final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Handbrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    return-void
.end method

.method private final c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v2, v0

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    .line 3
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmpg-double p3, p1, v2

    if-gez p3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private final d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, v0

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final e()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->e()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    invoke-direct {p0, v3, v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->e()V

    :cond_4
    :goto_0
    return-void
.end method
