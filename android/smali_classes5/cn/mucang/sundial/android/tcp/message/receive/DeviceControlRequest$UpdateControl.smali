.class public Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;
.super Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateControl"
.end annotation


# instance fields
.field private apn:Ljava/lang/String;

.field private connectDuration:I

.field private firmwareVersion:Ljava/lang/String;

.field private hardwareVersion:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private tcpPort:Ljava/lang/Integer;

.field private udpPort:Ljava/lang/Integer;

.field private url:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->tcpPort:Ljava/lang/Integer;

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->url:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->apn:Ljava/lang/String;

    const/4 v0, 0x2

    .line 9
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->username:Ljava/lang/String;

    const/4 v0, 0x3

    .line 10
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->password:Ljava/lang/String;

    const/4 v0, 0x4

    .line 11
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->ip:Ljava/lang/String;

    const/4 v0, 0x5

    .line 12
    aget-object v1, p1, v0

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->tcpPort:Ljava/lang/Integer;

    :cond_0
    const/4 v0, 0x6

    .line 14
    aget-object v1, p1, v0

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->udpPort:Ljava/lang/Integer;

    :cond_1
    const/4 v0, 0x7

    .line 16
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->manufacturer:Ljava/lang/String;

    const/16 v0, 0x8

    .line 17
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->hardwareVersion:Ljava/lang/String;

    const/16 v0, 0x9

    .line 18
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->firmwareVersion:Ljava/lang/String;

    const/16 v0, 0xa

    .line 19
    aget-object v1, p1, v0

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->connectDuration:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->connectDuration:I

    return v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getTcpPort()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->tcpPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUdpPort()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->udpPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->username:Ljava/lang/String;

    return-object v0
.end method
