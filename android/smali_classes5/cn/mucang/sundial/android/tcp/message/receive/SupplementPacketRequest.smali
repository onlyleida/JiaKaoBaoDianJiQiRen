.class public Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;
.super Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;


# instance fields
.field private originalMessageSerialNo:I

.field private packetIndex:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const v0, 0x8003

    return v0
.end method

.method public getOriginalMessageSerialNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->originalMessageSerialNo:I

    return v0
.end method

.method public getPacketIndex()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->packetIndex:[I

    return-object v0
.end method

.method public init([B)V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->originalMessageSerialNo:I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    .line 4
    new-array v1, p1, [I

    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->packetIndex:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->packetIndex:[I

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
