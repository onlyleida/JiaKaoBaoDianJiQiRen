.class public Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;
.super Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectControl"
.end annotation


# instance fields
.field private apn:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private connectDuration:I

.field private control:I

.field private ip:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private tcpPort:Ljava/lang/Integer;

.field private udpPort:Ljava/lang/Integer;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->control:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

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

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->authCode:Ljava/lang/String;

    .line 8
    aget-object v0, p1, v1

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->apn:Ljava/lang/String;

    const/4 v0, 0x2

    .line 9
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->username:Ljava/lang/String;

    const/4 v0, 0x3

    .line 10
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->password:Ljava/lang/String;

    const/4 v0, 0x4

    .line 11
    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->ip:Ljava/lang/String;

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

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->tcpPort:Ljava/lang/Integer;

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

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->udpPort:Ljava/lang/Integer;

    :cond_1
    const/4 v0, 0x7

    .line 16
    aget-object v1, p1, v0

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->connectDuration:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->connectDuration:I

    return v0
.end method

.method public getControl()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->control:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getTcpPort()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->tcpPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUdpPort()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->udpPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;->username:Ljava/lang/String;

    return-object v0
.end method
