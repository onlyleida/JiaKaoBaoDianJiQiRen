.class public Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# instance fields
.field private configId:I

.field private deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;->configId:I

    return v0
.end method

.method public getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x8501

    return v0
.end method

.method public init([B)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;->configId:I

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;I)Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    return-void
.end method
