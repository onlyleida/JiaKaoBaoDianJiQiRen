.class public Lcn/mucang/sundial/android/tcp/message/training/send/ConfigDeviceResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;


# instance fields
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
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 1
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ConfigDeviceResponse;->result:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x501

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ConfigDeviceResponse;->result:I

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

.method public setResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ConfigDeviceResponse;->result:I

    return-void
.end method
