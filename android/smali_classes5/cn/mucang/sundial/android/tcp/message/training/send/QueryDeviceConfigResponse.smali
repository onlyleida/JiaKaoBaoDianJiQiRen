.class public Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;


# instance fields
.field private deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->result:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->result:I

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x503

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->result:I

    return v0
.end method

.method public synthetic isNeedReply()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isNeedReply(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public synthetic isRealtimeMessage()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isRealtimeMessage(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public setDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->deviceConfig:Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->result:I

    return-void
.end method
