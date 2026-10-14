.class public Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Send;


# instance fields
.field private alarmInfo:Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;

.field private altitude:Ljava/lang/Integer;

.field private direction:I

.field private driveSpeed:Ljava/math/BigDecimal;

.field private engineSpeed:Ljava/lang/Integer;

.field private gasRemain:Ljava/math/BigDecimal;

.field private gpsSpeed:Ljava/math/BigDecimal;

.field private latitude:D

.field private longitude:D

.field private mileage:Ljava/math/BigDecimal;

.field private recordTime:Ljava/sql/Timestamp;

.field private vehicleStatus:Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->driveSpeed:Ljava/math/BigDecimal;

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gpsSpeed:Ljava/math/BigDecimal;

    return-void
.end method

.method public static getGNSSData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->createGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object v0

    return-object v0
.end method

.method public static getGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->createGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p0

    return-object p0
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public encode()[B
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->alarmInfo:Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->vehicleStatus:Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 4
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->latitude:D

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 5
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->longitude:D

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->driveSpeed:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gpsSpeed:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 8
    iget v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->direction:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 9
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->recordTime:Ljava/sql/Timestamp;

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->toBCD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBCD(Ljava/lang/String;I)V

    .line 10
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->mileage:Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 13
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->mileage:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 14
    :cond_0
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gasRemain:Ljava/math/BigDecimal;

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 16
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 17
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gasRemain:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 18
    :cond_1
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->altitude:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 19
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 20
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 21
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->altitude:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 22
    :cond_2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->engineSpeed:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    .line 23
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 24
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 25
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->engineSpeed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 26
    :cond_3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getAlarmInfo()Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->alarmInfo:Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;

    return-object v0
.end method

.method public getAltitude()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->altitude:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->direction:I

    return v0
.end method

.method public getDriveSpeed()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->driveSpeed:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getEngineSpeed()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->engineSpeed:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGasRemain()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gasRemain:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getGpsSpeed()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gpsSpeed:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->longitude:D

    return-wide v0
.end method

.method public getMileage()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->mileage:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getRecordTime()Ljava/sql/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->recordTime:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getVehicleStatus()Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->vehicleStatus:Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;

    return-object v0
.end method

.method public setAlarmInfo(Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->alarmInfo:Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;

    return-void
.end method

.method public setAltitude(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->altitude:Ljava/lang/Integer;

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->direction:I

    return-void
.end method

.method public setDriveSpeed(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->driveSpeed:Ljava/math/BigDecimal;

    return-void
.end method

.method public setEngineSpeed(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->engineSpeed:Ljava/lang/Integer;

    return-void
.end method

.method public setGasRemain(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gasRemain:Ljava/math/BigDecimal;

    return-void
.end method

.method public setGpsSpeed(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->gpsSpeed:Ljava/math/BigDecimal;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->longitude:D

    return-void
.end method

.method public setMileage(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->mileage:Ljava/math/BigDecimal;

    return-void
.end method

.method public setRecordTime(Ljava/sql/Timestamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->recordTime:Ljava/sql/Timestamp;

    return-void
.end method

.method public setVehicleStatus(Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->vehicleStatus:Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;

    return-void
.end method
