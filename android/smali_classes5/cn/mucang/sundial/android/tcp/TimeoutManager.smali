.class public Lcn/mucang/sundial/android/tcp/TimeoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;,
        Lcn/mucang/sundial/android/tcp/TimeoutManager$TimeoutManagerHolder;
    }
.end annotation


# instance fields
.field private final extendRetryTimesMap:Landroid/util/SparseIntArray;

.field private final extendTimeoutCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;",
            ">;"
        }
    .end annotation
.end field

.field private final extendTimeoutTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final msgHandler:Landroid/os/Handler;

.field private retryTimes:I

.field private final retryTimesMap:Landroid/util/SparseIntArray;

.field private final timeoutCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutPeriod:J

.field private final timeoutTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4e20

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutPeriod:J

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimes:I

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutCallbacks:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutCallbacks:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutTasks:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimesMap:Landroid/util/SparseIntArray;

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutTasks:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendRetryTimesMap:Landroid/util/SparseIntArray;

    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "timeout-handler-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->msgHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->updateByDeviceParameter()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/TimeoutManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/TimeoutManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager$TimeoutManagerHolder;->access$100()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addTimeoutTask(IZLjava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendRetryTimesMap:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimesMap:Landroid/util/SparseIntArray;

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutTasks:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutTasks:Landroid/util/SparseArray;

    :goto_1
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget v1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimes:I

    if-gt v0, v1, :cond_2

    .line 4
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->msgHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutPeriod:J

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMessageReply(IZ)V
    .locals 3

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendRetryTimesMap:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimesMap:Landroid/util/SparseIntArray;

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutTasks:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutTasks:Landroid/util/SparseArray;

    .line 3
    :goto_1
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->msgHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTimeout(IZ)Z
    .locals 5

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendRetryTimesMap:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimesMap:Landroid/util/SparseIntArray;

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutTasks:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutTasks:Landroid/util/SparseArray;

    :goto_1
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget v3, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimes:I

    if-le v1, v3, :cond_4

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutCallbacks:Landroid/util/SparseArray;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutCallbacks:Landroid/util/SparseArray;

    .line 8
    :goto_2
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;->onTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return v2

    .line 11
    :cond_4
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerTimeoutCallback(IZLcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutCallbacks:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutCallbacks:Landroid/util/SparseArray;

    .line 2
    :goto_0
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRetryTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->retryTimes:I

    return-void
.end method

.method public setTimeoutPeriod(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutPeriod:J

    return-void
.end method

.method public declared-synchronized unregisterTimeoutCallback(IZ)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->extendTimeoutCallbacks:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/mucang/sundial/android/tcp/TimeoutManager;->timeoutCallbacks:Landroid/util/SparseArray;

    .line 2
    :goto_0
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateByDeviceParameter()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceParameterValue(J)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-virtual {p0, v0, v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->setTimeoutPeriod(J)V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    const-wide/16 v4, 0x3

    invoke-virtual {v0, v4, v5}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceParameterValue(J)Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->setRetryTimes(I)V

    :cond_1
    return-void
.end method
