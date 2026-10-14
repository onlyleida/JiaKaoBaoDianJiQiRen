.class public Lcn/mucang/sundial/android/tcp/utils/LocationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/location/DefaultLocationListener;


# static fields
.field public static instance:Lcn/mucang/sundial/android/tcp/utils/LocationListener;


# instance fields
.field public lastLocation:Landroid/location/Location;

.field private updateSpeedEvent:Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/utils/LocationListener;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/utils/LocationListener;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->instance:Lcn/mucang/sundial/android/tcp/utils/LocationListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    invoke-direct {v0}, Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->updateSpeedEvent:Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/tcp/utils/LocationListener;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->instance:Lcn/mucang/sundial/android/tcp/utils/LocationListener;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->lastLocation:Landroid/location/Location;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    const v4, 0x40666666    # 3.6f

    mul-float v3, v3, v4

    .line 9
    new-instance v4, Lcn/mucang/sundial/android/db/entity/DebugLog;

    invoke-direct {v4}, Lcn/mucang/sundial/android/db/entity/DebugLog;-><init>()V

    const/4 v5, 0x2

    .line 10
    invoke-virtual {v4, v5}, Lcn/mucang/sundial/android/db/entity/DebugLog;->setType(I)V

    .line 11
    invoke-virtual {v4, v1, v2}, Lcn/mucang/sundial/android/db/entity/DebugLog;->setCreateTime(J)V

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/sundial/android/db/entity/DebugLog;->setGpsDistance(Ljava/lang/String;)V

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/sundial/android/db/entity/DebugLog;->setGpsSpeed(Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v4, p1}, Lcn/mucang/sundial/android/db/entity/DebugLog;->setLog1(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialLogDb;->getInstance()Lcn/mucang/sundial/android/db/SundialLogDb;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcn/mucang/sundial/android/db/SundialLogDb;->insert(Lcn/mucang/sundial/android/db/entity/DebugLog;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/utils/LocationListener;->updateSpeedEvent:Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    return-void
.end method
