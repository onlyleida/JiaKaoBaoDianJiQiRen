.class public Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;
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
    name = "Packet"
.end annotation


# instance fields
.field private current:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->current:I

    return p1
.end method

.method static synthetic access$902(Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->total:I

    return p1
.end method

.method static from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->total:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p0

    iput p0, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->current:I

    return-object v0
.end method


# virtual methods
.method copy()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->total:I

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->total:I

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->current:I

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->current:I

    return-object v0
.end method

.method public encode()[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->total:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->current:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->current:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->total:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->current:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->total:I

    return-void
.end method
