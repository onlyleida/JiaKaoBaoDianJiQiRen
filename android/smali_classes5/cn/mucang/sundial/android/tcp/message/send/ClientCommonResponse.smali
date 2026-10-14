.class public Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;
.super Lcn/mucang/sundial/android/tcp/message/CommonResponse;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/SendMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/CommonResponse;-><init>()V

    return-void
.end method

.method public static create(Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;-><init>()V

    .line 2
    iget p0, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->value:I

    iput p0, v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->result:I

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageId()I

    move-result p0

    iput p0, v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseMessageId:I

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result p0

    iput p0, v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseSerialNo:I

    return-object v0
.end method

.method public static createSuccess(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;->create(Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode()[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseSerialNo:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseMessageId:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 4
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->result:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
