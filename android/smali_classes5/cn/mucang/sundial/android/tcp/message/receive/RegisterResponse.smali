.class public Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;
.super Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;
    }
.end annotation


# instance fields
.field private registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

.field private responseSerialNo:I

.field private result:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;-><init>()V

    return-void
.end method

.method private findResultByValue(I)Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->values()[Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->value:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u518c\u7ec8\u7aef\uff0c\u670d\u52a1\u5668\u8fd4\u56de\u975e\u6cd5\u7684value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    const v0, 0x8100

    return v0
.end method

.method public getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    return-object v0
.end method

.method public getResponseSerialNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->responseSerialNo:I

    return v0
.end method

.method public getResult()Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->result:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    return-object v0
.end method

.method public init([B)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->responseSerialNo:I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->findResultByValue(I)Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->result:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    .line 4
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    if-ne p1, v1, :cond_1

    .line 5
    new-instance p1, Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    invoke-direct {p1}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;-><init>()V

    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->setPlatformCode(Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 7
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->setInsCode(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->setDeviceCode(Ljava/lang/String;)V

    const/16 v1, 0xc

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->setCertPassword(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->setDeviceCertificate(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->readPrivateKey(Lcn/mucang/sundial/android/db/entity/RegisterInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8bc1\u4e66\u683c\u5f0f\u975e\u6cd5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
