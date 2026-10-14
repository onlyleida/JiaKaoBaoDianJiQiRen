.class public Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Send;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/RawMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

.field private devicePhone:Ljava/lang/String;

.field private messageId:I

.field private messageSequence:I

.field private packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

.field private protocolVersion:I

.field private reserved:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->reserved:I

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    return-object p0
.end method

.method static synthetic access$002(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    return-object p1
.end method

.method static synthetic access$1102(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    return-object p1
.end method

.method static synthetic access$200(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    return p0
.end method

.method static synthetic access$202(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    return p1
.end method

.method static synthetic access$302(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->protocolVersion:I

    return p1
.end method

.method static synthetic access$602(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->devicePhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageSequence:I

    return p1
.end method

.method static synthetic access$802(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->reserved:I

    return p1
.end method

.method static from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->protocolVersion:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    .line 4
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    const/16 v1, 0x8

    .line 5
    invoke-virtual {p0, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBCD(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->trimBCDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->devicePhone:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageSequence:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->reserved:I

    .line 8
    iget-object v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->access$400(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    :cond_0
    return-object v0
.end method


# virtual methods
.method copy()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->protocolVersion:I

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->protocolVersion:I

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->copy()Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->devicePhone:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->devicePhone:Ljava/lang/String;

    .line 6
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageSequence:I

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageSequence:I

    .line 7
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->reserved:I

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->reserved:I

    .line 8
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->copy()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    return-object v0
.end method

.method public encode()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->protocolVersion:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->devicePhone:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBCD(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageSequence:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 7
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->reserved:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 8
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getAttribute()Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    return-object v0
.end method

.method public getDevicePhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->devicePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    return v0
.end method

.method public getMessageSequence()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageSequence:I

    return v0
.end method

.method public getPacket()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->protocolVersion:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->reserved:I

    return v0
.end method

.method public setAttribute(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->attribute:Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    return-void
.end method

.method public setDevicePhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->devicePhone:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageId:I

    return-void
.end method

.method public setMessageSequence(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->messageSequence:I

    return-void
.end method

.method public setPacket(Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->packet:Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->protocolVersion:I

    return-void
.end method
