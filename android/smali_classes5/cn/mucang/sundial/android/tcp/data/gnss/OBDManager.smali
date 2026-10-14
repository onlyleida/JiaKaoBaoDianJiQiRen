.class public Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager$OBDManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OBDManager"

.field private static overSpeed:J

.field private static overSpeedTime:J


# instance fields
.field private carModel:Lcn/mucang/sundial/android/model/CarModel;

.field private dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

.field private dataStrategy:Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;

.field private init:Z

.field private isOverSpeed:Z

.field private overSpeedStartTime:J

.field private final updateSpeedEvent:Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    invoke-direct {v0}, Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->updateSpeedEvent:Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->init:Z

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedStartTime:J

    .line 6
    iput-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->isOverSpeed:Z

    .line 7
    new-instance v0, Lcn/mucang/sundial/android/tcp/data/gnss/a;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/data/gnss/a;-><init>(Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;-><init>()V

    return-void
.end method

.method private synthetic a(Lcn/mucang/sundial/android/model/CarModel;)V
    .locals 10

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",gpsSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/sundial/android/model/CarModel;->gpsSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",rpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/sundial/android/model/CarModel;->rpm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",totalDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OBDManager"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v0

    iput-object p1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->updateSpeedEvent:Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p1, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    .line 6
    :goto_0
    sget-wide v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeed:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_5

    sget-wide v7, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedTime:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_5

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 7
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedStartTime:J

    cmp-long p1, v0, v5

    if-gtz p1, :cond_3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedStartTime:J

    goto :goto_1

    .line 9
    :cond_3
    iget-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->isOverSpeed:Z

    if-nez p1, :cond_6

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedTime:J

    sub-long/2addr v0, v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->isOverSpeed:Z

    goto :goto_1

    .line 12
    :cond_4
    iput-wide v3, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedStartTime:J

    .line 13
    iput-boolean v2, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->isOverSpeed:Z

    goto :goto_1

    .line 14
    :cond_5
    iput-wide v3, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedStartTime:J

    .line 15
    iput-boolean v2, p0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->isOverSpeed:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public static declared-synchronized createGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;
    .locals 5

    const-class v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->createNormal()Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;

    move-result-object v2

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->isOverSpeed:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v2, v3}, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->addMark(I)V

    .line 5
    :cond_0
    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setAlarmInfo(Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;)V

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->createNormal()Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setVehicleStatus(Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;)V

    .line 8
    sget-wide v3, Lcn/mucang/sundial/android/location/AppLocation;->latitude:D

    invoke-virtual {v1, v3, v4}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setLatitude(D)V

    .line 9
    sget-wide v3, Lcn/mucang/sundial/android/location/AppLocation;->longitude:D

    invoke-virtual {v1, v3, v4}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setLongitude(D)V

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    if-eqz v3, :cond_1

    .line 11
    iget-object v4, v3, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    invoke-virtual {v4}, Lcn/mucang/sundial/android/model/KeyState;->isStart()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->setAccOn(Z)V

    .line 12
    new-instance v2, Ljava/math/BigDecimal;

    iget v4, v3, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setDriveSpeed(Ljava/math/BigDecimal;)V

    .line 13
    new-instance v2, Ljava/math/BigDecimal;

    iget v4, v3, Lcn/mucang/sundial/android/model/CarModel;->gpsSpeed:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setGpsSpeed(Ljava/math/BigDecimal;)V

    .line 14
    iget v2, v3, Lcn/mucang/sundial/android/model/CarModel;->wheelDegree:I

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setDirection(I)V

    .line 15
    new-instance v2, Ljava/math/BigDecimal;

    iget v4, v3, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setMileage(Ljava/math/BigDecimal;)V

    .line 16
    iget v2, v3, Lcn/mucang/sundial/android/model/CarModel;->rpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setEngineSpeed(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->setAccOn(Z)V

    .line 18
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setDriveSpeed(Ljava/math/BigDecimal;)V

    .line 19
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setGpsSpeed(Ljava/math/BigDecimal;)V

    .line 20
    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setDirection(I)V

    .line 21
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setMileage(Ljava/math/BigDecimal;)V

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setEngineSpeed(Ljava/lang/Integer;)V

    .line 23
    :goto_0
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->setRecordTime(Ljava/sql/Timestamp;)V

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "driveSpeed="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getDriveSpeed()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",rpm="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getEngineSpeed()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",latitude="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ",longitude="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GnssData: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCarModel()Lcn/mucang/sundial/android/model/CarModel;
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->carModel:Lcn/mucang/sundial/android/model/CarModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager$OBDManagerHolder;->access$100()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;)V
    .locals 3

    const-class v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->init:Z

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->init:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;->setDataCallBack(Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v1

    iput-object p1, v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->dataStrategy:Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->dataStrategy:Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;

    invoke-interface {p1, p0}, Lcn/mucang/sundial/android/tcp/data/gnss/DataStrategy;->start(Landroid/content/Context;)V

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->updateOverSpeedParam()V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->getInstance()Lcn/mucang/sundial/android/tcp/utils/LocationListener;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/sundial/android/location/AppLocation;->removeListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->getInstance()Lcn/mucang/sundial/android/tcp/utils/LocationListener;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/sundial/android/location/AppLocation;->addListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->startLocation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .locals 3

    const-class v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->dataStrategy:Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;

    invoke-interface {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/DataStrategy;->stop()V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->init:Z

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->stopLocation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized updateOverSpeedParam()V
    .locals 5

    const-class v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    monitor-enter v0

    const-wide/16 v1, 0x55

    const/4 v3, -0x1

    .line 1
    :try_start_0
    invoke-static {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeed:J

    const-wide/16 v1, 0x56

    .line 2
    invoke-static {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedTime:J

    const-string v1, "OBDManager"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6700\u5927\u901f\u5ea6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "km/h, \u8d85\u901f\u6301\u7eed\u65f6\u95f4\u8bbe\u7f6e\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\u79d2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u5927\u901f\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "km/h, \u8d85\u901f\u6301\u7eed\u65f6\u95f4\u8bbe\u7f6e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->overSpeedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/sundial/android/model/CarModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->a(Lcn/mucang/sundial/android/model/CarModel;)V

    return-void
.end method
