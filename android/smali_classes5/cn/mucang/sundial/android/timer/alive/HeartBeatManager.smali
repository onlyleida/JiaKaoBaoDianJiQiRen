.class public Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/timer/alive/HeartBeatManager$HeartBeatManagerHolder;
    }
.end annotation


# instance fields
.field private heartBeatPeriod:J

.field private timer:Lcn/mucang/sundial/android/timer/SundialTimer;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->heartBeatPeriod:J

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceParameterValue(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->setHeartBeatPeriod(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/timer/alive/HeartBeatManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager$HeartBeatManagerHolder;->access$100()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onTick(J)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    new-instance p2, Lcn/mucang/sundial/android/tcp/message/send/HeartBeatRequest;

    invoke-direct {p2}, Lcn/mucang/sundial/android/tcp/message/send/HeartBeatRequest;-><init>()V

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/utils/CPUUtils;->performance()J

    move-result-wide p1

    const-wide/16 v0, 0x32

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU Load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setHeartBeatPeriod(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->heartBeatPeriod:J

    return-void
.end method

.method public declared-synchronized start()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "sundial-TAG"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeartBeatManager start in thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timer\u4e3a\u7a7a\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeartBeatManager start in thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timer\u4e3a\u7a7a\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/timer/SundialTimer;

    iget-wide v1, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->heartBeatPeriod:J

    invoke-direct {v0, v1, v2, v4, p0}, Lcn/mucang/sundial/android/timer/SundialTimer;-><init>(JZLcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
