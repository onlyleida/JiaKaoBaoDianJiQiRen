.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public boxVersion:I

.field public final carNum:Ljava/lang/String;

.field public final carSn:Ljava/lang/String;

.field public final carSn24:Ljava/lang/String;

.field public final carType:I

.field public final firmwareVersion:I

.field public gearFirmwareVersion:I

.field public gearHardwareVersion:I

.field public final hardwareVersion:I

.field public isSafeSpeedCheck:Z

.field public micSafeFirmwareVersion:I

.field public micSafeHardwareVersion:I

.field public micWaveFirmwareVersion:I

.field public micWaveHardwareVersion:I

.field public final obdVersion:I

.field public signalFirmwareVersion:I

.field public signalHardwareVersion:I

.field public throttleFirmwareVersion:I

.field public throttleHardwareVersion:I

.field public ultrasonic1FirmwareVersion:I

.field public ultrasonic1HardwareVersion:I

.field public ultrasonic2FirmwareVersion:I

.field public ultrasonic2HardwareVersion:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;Lcn/mucang/android/jiakaoyi/signal/d/h;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->carType:I

    .line 3
    new-instance p1, Ljava/lang/String;

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->g(I)[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->carNum:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    aput-object v4, v1, v3

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->carSn:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 10
    aget-object v4, v1, v2

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->carSn24:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->hardwareVersion:I

    .line 16
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->firmwareVersion:I

    .line 17
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->obdVersion:I

    .line 18
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    .line 20
    :goto_2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v3, p1

    .line 21
    :goto_3
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->boxVersion:I

    .line 22
    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/signal/d/h;->d:Z

    if-eqz p1, :cond_12

    .line 23
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->signalHardwareVersion:I

    .line 25
    :cond_5
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->signalFirmwareVersion:I

    .line 27
    :cond_6
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic1HardwareVersion:I

    .line 29
    :cond_7
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 30
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic1FirmwareVersion:I

    .line 31
    :cond_8
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 32
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic2HardwareVersion:I

    .line 33
    :cond_9
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 34
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic2FirmwareVersion:I

    .line 35
    :cond_a
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 36
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micSafeHardwareVersion:I

    .line 37
    :cond_b
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 38
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micSafeFirmwareVersion:I

    .line 39
    :cond_c
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 40
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->throttleHardwareVersion:I

    .line 41
    :cond_d
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 42
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->throttleFirmwareVersion:I

    .line 43
    :cond_e
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 44
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->gearHardwareVersion:I

    .line 45
    :cond_f
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 46
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->gearFirmwareVersion:I

    .line 47
    :cond_10
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 48
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micWaveHardwareVersion:I

    .line 49
    :cond_11
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 50
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micWaveFirmwareVersion:I

    goto :goto_4

    .line 51
    :cond_12
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 52
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 53
    :cond_13
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 54
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->throttleHardwareVersion:I

    .line 55
    :cond_14
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 56
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->throttleFirmwareVersion:I

    :cond_15
    :goto_4
    return-void
.end method


# virtual methods
.method public map()Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->carSn:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->hardwareNumber:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->carSn24:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->serialNumber:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->carType:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->carType:I

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->hardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->hardwareVersion:I

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->firmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->otaVersion:I

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->obdVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->obdVersion:I

    .line 8
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->boxVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->boxVersion:I

    .line 9
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->isSafeSpeedCheck:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->isSafeSpeedCheck:Z

    .line 10
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->signalHardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->signalHardwareVersion:I

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->signalFirmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->signalFirmwareVersion:I

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic1HardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->ultrasonic1HardwareVersion:I

    .line 13
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic1FirmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->ultrasonic1FirmwareVersion:I

    .line 14
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic2HardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->ultrasonic2HardwareVersion:I

    .line 15
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->ultrasonic2FirmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->ultrasonic2FirmwareVersion:I

    .line 16
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micSafeHardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->micSafeHardwareVersion:I

    .line 17
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micSafeFirmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->micSafeFirmwareVersion:I

    .line 18
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->throttleHardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->throttleHardwareVersion:I

    .line 19
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->throttleFirmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->throttleFirmwareVersion:I

    .line 20
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->gearHardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->gearHardwareVersion:I

    .line 21
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->gearFirmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->gearFirmwareVersion:I

    .line 22
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micWaveHardwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->micWaveHardwareVersion:I

    .line 23
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->micWaveFirmwareVersion:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->micWaveFirmwareVersion:I

    return-object v0
.end method
