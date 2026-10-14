.class public final Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u001d\u001a\u00020\u0014J\u0006\u0010\u001e\u001a\u00020\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/countdown/CountDownLogic;",
        "",
        "filterSteps",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "(Ljava/util/List;)V",
        "event",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/countdown/StepCountDownEvent;",
        "isStartCountDown",
        "",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BaseChecker$StartCountDown;",
        "startTime",
        "",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "totalTime",
        "",
        "clear",
        "",
        "notShow",
        "getStepTotalTime",
        "handleTime",
        "isShowCountDown",
        "sendTime",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "setTime",
        "start",
        "stop",
        "hpmap_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:J

.field private d:Z

.field private e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field private final f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

.field private g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filterSteps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->a:Ljava/util/List;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->g:Landroidx/lifecycle/a0;

    return-void
.end method

.method private final a(Z)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->c:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->b:I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;->a:J

    .line 4
    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;->b:Z

    const-class p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->a(Z)V

    return-void
.end method

.method private final c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;->getCountDownTime()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final e(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;->isShowCountDown()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->g(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;)V

    return-void
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->d:Z

    :cond_1
    return-void
.end method

.method private final i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->b:I

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3
    :cond_0
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->c:J

    return-void
.end method


# virtual methods
.method public final d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 2

    const-string v0, "stepHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;ZILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->e(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->a:Ljava/util/List;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->d:Z

    if-eqz v0, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->b:I

    int-to-long v1, v1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->c:J

    sub-long/2addr v3, v5

    const/16 p1, 0x3e8

    int-to-long v5, p1

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;->a:J

    const-class p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/c;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final k()V
    .locals 3

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;ZILjava/lang/Object;)V

    return-void
.end method
