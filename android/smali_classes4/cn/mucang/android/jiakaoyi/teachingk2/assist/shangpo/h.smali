.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0004R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ArrivePoDingChecker;",
        "",
        "onArrive",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "carStartPos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "lastCenterPos",
        "signalCallback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "getSignalCallback",
        "()Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "checkArrivedPoding",
        "carCenterPos",
        "speed",
        "",
        "log",
        "msg",
        "",
        "onArrived",
        "onCarLeaveShangpo",
        "start",
        "stop",
        "Companion",
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


# instance fields
.field private final a:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onArrive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->a:Lkotlin/jvm/b/a;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->o:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_7

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_5

    return-void

    .line 5
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    const/16 v2, 0x3e8

    int-to-float v2, v2

    mul-float v2, v2, p2

    const/16 v3, 0x64

    int-to-float v3, v3

    mul-float v2, v2, v3

    const/high16 v3, 0x45610000    # 3600.0f

    div-float/2addr v2, v3

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v4, v2

    invoke-static {v3, p1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 7
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "\u5230\u8fbe\u91c7\u96c6\u7684\u5761\u9876"

    .line 8
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->d()V

    goto :goto_2

    .line 10
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    const-wide/high16 v0, 0x40f9000000000000L    # 102400.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_8

    const-string p1, "\u5230\u8fbe\u5761\u9876"

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->d()V

    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->f(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ArrivePoDingChecker: "

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->h()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->a:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v1, "curCarCenterPos"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v1, "onCarLeaveShangpo: "

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->h()V

    const-string v0, "start"

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->o:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "podingAreaSize:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public final h()V
    .locals 2

    const-string v0, "stop"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method
