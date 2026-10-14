.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CarStopChecker;",
        "",
        "onCarStop",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "isChecking",
        "",
        "lastStopTime",
        "",
        "signalCallback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "getSignalCallback",
        "()Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "stopTotalTime",
        "log",
        "msg",
        "",
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

.field private b:J

.field private c:J

.field private d:Z

.field private final e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


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

    const-string v0, "onCarStop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->a:Lkotlin/jvm/b/a;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->c(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CarStopChecker: "

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_0

    .line 4
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b:J

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->c:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->c:J

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b:J

    goto :goto_0

    .line 7
    :cond_1
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->c:J

    .line 8
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b:J

    .line 9
    :goto_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->c:J

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    const-string p1, "\u8f66\u5df2\u505c\u6b62"

    .line 10
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->e()V

    .line 12
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->a:Lkotlin/jvm/b/a;

    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    const-string v0, "start"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->e()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->d:Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stop"

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->e:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->b:J

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->c:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->d:Z

    :cond_0
    return-void
.end method
