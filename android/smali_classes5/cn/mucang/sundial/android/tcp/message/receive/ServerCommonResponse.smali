.class public Lcn/mucang/sundial/android/tcp/message/receive/ServerCommonResponse;
.super Lcn/mucang/sundial/android/tcp/message/CommonResponse;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/CommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const v0, 0x8001

    return v0
.end method

.method public init([B)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseSerialNo:I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseMessageId:I

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->result:I

    return-void
.end method
