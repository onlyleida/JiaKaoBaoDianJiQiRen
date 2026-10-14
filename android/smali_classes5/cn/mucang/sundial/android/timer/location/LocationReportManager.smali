.class public Lcn/mucang/sundial/android/timer/location/LocationReportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/timer/location/LocationReportManager$LocationReportManagerHolder;
    }
.end annotation


# static fields
.field private static final MSG_RETRY:I = 0x2

.field private static final MSG_TICK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationReportManager"


# instance fields
.field private lastReportDistance:F

.field private lastReportTimeForInterval:J

.field private reportDistance:I

.field private reportInterval:I

.field private reportStrategy:I

.field private tempTrackEndTime:J

.field private tempTrackInterval:I

.field private timerHandler:Landroid/os/Handler;

.field private timerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/timer/location/LocationReportManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->onTick()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->rescheduleTick()V

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getBatchResendCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tryToResendFailedReport(I)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$200(Lcn/mucang/sundial/android/timer/location/LocationReportManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getBatchResendCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/mucang/sundial/android/timer/location/LocationReportManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tryToResendFailedReport(I)V

    return-void
.end method

.method private calculateNextScheduleDelay()I
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackEndTime:J

    const/16 v4, 0x3e8

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    iget v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackInterval:I

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportStrategy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v4

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return v4

    .line 4
    :cond_2
    iget v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportInterval:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getBatchResendCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportInterval:I

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager$LocationReportManagerHolder;->access$100()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object v0

    return-object v0
.end method

.method private onTick()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackEndTime:J

    const-string v4, "\u5b9a\u65f6\u53d1\u9001\u4f4d\u7f6e\u6c47\u62a5"

    const-string v5, "LocationReportManager"

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iget v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackInterval:I

    if-lez v2, :cond_0

    .line 3
    invoke-static {v5, v4}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportTimeForInterval:J

    .line 5
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->report()V

    return-void

    .line 6
    :cond_0
    iget v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportStrategy:I

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-nez v8, :cond_3

    .line 7
    invoke-static {v5, v4}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportTimeForInterval:J

    .line 9
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->report()V

    return-void

    :cond_3
    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 10
    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportTimeForInterval:J

    sub-long v2, v0, v2

    iget v8, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportInterval:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v10, v2, v8

    if-ltz v10, :cond_5

    .line 11
    invoke-static {v5, v4}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportTimeForInterval:J

    const/4 v6, 0x1

    .line 13
    :cond_5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget v0, v0, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7

    .line 15
    iget v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportDistance:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_7

    .line 16
    iput v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportDistance:F

    goto :goto_4

    .line 17
    :cond_7
    iget v1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportDistance:F

    sub-float v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    iget v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportDistance:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    const-string v1, "\u5b9a\u8ddd\u53d1\u9001\u4f4d\u7f6e\u6c47\u62a5"

    .line 18
    invoke-static {v5, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportDistance:F

    goto :goto_5

    :cond_8
    :goto_4
    move v7, v6

    :goto_5
    if-eqz v7, :cond_9

    .line 20
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->report()V

    :cond_9
    return-void
.end method

.method private reloadParams()V
    .locals 6

    const-wide/16 v0, 0x20

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportStrategy:I

    const-wide/16 v0, 0x29

    const/16 v2, 0x1e

    .line 2
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v0

    const-wide/16 v1, 0x22

    const/16 v3, 0x64

    .line 3
    invoke-static {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v1

    const-wide/16 v2, 0x2c

    const/16 v4, 0x1f4

    .line 4
    invoke-static {v2, v3, v4}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v2

    const-wide/16 v3, 0x2d

    const/16 v5, 0x3e8

    .line 5
    invoke-static {v3, v4, v5}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v3

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/SundialManager;->studentLoginSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7
    :goto_0
    iput v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportInterval:I

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 8
    :goto_1
    iput v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportDistance:I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f4d\u7f6e\u6c47\u62a5\u7b56\u7565\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportStrategy:I

    if-nez v1, :cond_2

    const-string v1, "\u5b9a\u65f6"

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v1, "\u5b9a\u8ddd"

    goto :goto_2

    :cond_3
    const-string v1, "\u5b9a\u65f6+\u5b9a\u8ddd"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationReportManager"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9a\u65f6\u6c47\u62a5\u95f4\u9694\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9a\u8ddd\u6c47\u62a5\u8ddd\u79bb\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reportDistance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u7c73"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private report()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->isLocationValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LocationReportManager"

    const-string v1, "\u975e\u6cd5\u7684\u7ecf\u7eac\u5ea6\uff0c\u53d6\u6d88\u4f4d\u7f6e\u4e0a\u62a5"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getVehicleStatus()Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->setSupplement(Z)V

    .line 5
    new-instance v1, Lcn/mucang/sundial/android/db/entity/Gnss;

    invoke-direct {v1}, Lcn/mucang/sundial/android/db/entity/Gnss;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/db/entity/Gnss;->setGnssData(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/sundial/android/db/entity/Gnss;->setCreateTime(J)V

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveGnss(Lcn/mucang/sundial/android/db/entity/Gnss;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getVehicleStatus()Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->setSupplement(Z)V

    .line 10
    new-instance v2, Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;

    invoke-direct {v2, p0, v1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;-><init>(Lcn/mucang/sundial/android/timer/location/LocationReportManager;Lcn/mucang/sundial/android/db/entity/Gnss;)V

    invoke-direct {p0, v1, v0, v2}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->send(Lcn/mucang/sundial/android/db/entity/Gnss;Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V

    return-void
.end method

.method private rescheduleRetry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private rescheduleTick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->calculateNextScheduleDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private send(Lcn/mucang/sundial/android/db/entity/Gnss;Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;->setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/Gnss;->getGnssData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/Gnss;->getGnssData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->toBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;->setGnssData([B)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-interface {p3, p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onResult(Z)V

    .line 6
    :goto_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    return-void
.end method

.method private tryToResendFailedReport(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getRecentGnssData(I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/Gnss;

    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcn/mucang/sundial/android/timer/location/LocationReportManager$1;

    invoke-direct {v2, p0, v0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager$1;-><init>(Lcn/mucang/sundial/android/timer/location/LocationReportManager;Lcn/mucang/sundial/android/db/entity/Gnss;)V

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->send(Lcn/mucang/sundial/android/db/entity/Gnss;Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->a(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized configTempTrack(IJ)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackInterval:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackEndTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput p1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackInterval:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v3, v3, p2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackEndTime:J

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    const-string v0, "LocationReportManager"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u4e34\u65f6\u4f4d\u7f6e\u8ffd\u8e2a\uff0c\u95f4\u9694"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\uff0c\u65f6\u957f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->rescheduleTick()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    if-lez p1, :cond_2

    cmp-long v3, p2, v1

    if-gtz v3, :cond_3

    :cond_2
    const-string p1, "LocationReportManager"

    const-string p2, "\u505c\u6b62\u6b63\u5728\u6267\u884c\u7684\u4e34\u65f6\u4f4d\u7f6e\u8ffd\u8e2a"

    .line 7
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->rescheduleTick()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const-string v0, "LocationReportManager"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u8bbe\u7f6e\u4e34\u65f6\u4f4d\u7f6e\u8ffd\u8e2a\uff0c\u95f4\u9694"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\uff0c\u65f6\u957f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->rescheduleTick()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restartIfNotInTempTrack()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reloadParams()V

    .line 3
    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackEndTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->tempTrackInterval:I

    if-lez v0, :cond_0

    const-string v0, "LocationReportManager"

    const-string v1, "\u8bf7\u6c42\u91cd\u7f6e\u4f4d\u7f6e\u4e0a\u62a5\u4efb\u52a1\uff0c\u4f46\u6b63\u5728\u6267\u884c\u4e34\u65f6\u4f4d\u7f6e\u8ffd\u8e2a"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "LocationReportManager"

    const-string v1, "\u91cd\u7f6e\u4f4d\u7f6e\u4e0a\u62a5\u4efb\u52a1"

    .line 6
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->rescheduleTick()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "LocationReportManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u4f4d\u7f6e\u4e0a\u62a5\uff0c\u4e4b\u524d\u72b6\u6001\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    const-string v2, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v2, "\u5173\u95ed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationReportManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcn/mucang/sundial/android/timer/location/a;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/android/timer/location/a;-><init>(Lcn/mucang/sundial/android/timer/location/LocationReportManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerHandler:Landroid/os/Handler;

    .line 7
    :cond_2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget v0, v0, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportDistance:F

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->lastReportTimeForInterval:J

    .line 10
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->reloadParams()V

    .line 11
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->rescheduleTick()V

    .line 12
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->rescheduleRetry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "LocationReportManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u505c\u6b62\u4f4d\u7f6e\u4e0a\u62a5\uff0c\u4e4b\u524d\u72b6\u6001\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    const-string v2, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v2, "\u5173\u95ed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    iput-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->timerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
