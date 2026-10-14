.class public Lcn/mucang/sundial/android/timer/SundialTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;
    }
.end annotation


# instance fields
.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mLastTickTime:J

.field private final mOnTickListener:Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;

.field private final mScheduleDelay:J

.field private final mSchedulePeriod:J

.field private mTimerTask:Ljava/util/TimerTask;

.field private final scheduledService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(JJLcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mSchedulePeriod:J

    .line 4
    iput-wide p3, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mScheduleDelay:J

    .line 5
    iput-object p5, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mOnTickListener:Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(JZLcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;)V
    .locals 8

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, p1

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-object v7, p4

    .line 1
    invoke-direct/range {v2 .. v7}, Lcn/mucang/sundial/android/timer/SundialTimer;-><init>(JJLcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/sundial/android/timer/SundialTimer;)Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mOnTickListener:Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/mucang/sundial/android/timer/SundialTimer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mLastTickTime:J

    return-wide v0
.end method

.method private isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public start()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/SundialTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/sundial/android/timer/SundialTimer$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/timer/SundialTimer$1;-><init>(Lcn/mucang/sundial/android/timer/SundialTimer;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mLastTickTime:J

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mTimerTask:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mScheduleDelay:J

    iget-wide v6, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mSchedulePeriod:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->future:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/SundialTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 5
    iput-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
