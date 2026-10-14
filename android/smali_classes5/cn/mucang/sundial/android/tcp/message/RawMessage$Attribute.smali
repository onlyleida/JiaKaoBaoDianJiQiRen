.class public Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;
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
    name = "Attribute"
.end annotation


# static fields
.field private static final MASK_ENCRYPTED:I = 0x400

.field private static final MASK_MESSAGE_SIZE:I = 0x3ff

.field private static final MASK_SPLIT_PACKET:I = 0x2000

.field static final MAX_MESSAGE_SIZE:I = 0x3ff


# instance fields
.field private encrypted:Z

.field private messageSize:I

.field private splitPacket:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    return p0
.end method

.method static synthetic access$102(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    return p1
.end method

.method static synthetic access$400(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    return p0
.end method

.method static synthetic access$402(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    return p1
.end method

.method static synthetic access$502(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encrypted:Z

    return p1
.end method

.method static from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p0

    and-int/lit16 v1, p0, 0x3ff

    .line 3
    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    and-int/lit16 v1, p0, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encrypted:Z

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    iput-boolean v2, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    return-object v0
.end method


# virtual methods
.method copy()Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    .line 3
    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encrypted:Z

    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encrypted:Z

    .line 4
    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    return-object v0
.end method

.method public encode()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    and-int/lit16 v1, v1, 0x3ff

    .line 3
    iget-boolean v2, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encrypted:Z

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x400

    .line 4
    :cond_0
    iget-boolean v2, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    if-eqz v2, :cond_1

    or-int/lit16 v1, v1, 0x2000

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encrypted:Z

    return v0
.end method

.method public isSplitPacket()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    return v0
.end method

.method public setEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->encrypted:Z

    return-void
.end method

.method public setMessageSize(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x3ff

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->messageSize:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u5305\u7684\u957f\u5ea6\u5fc5\u987b\u662f0-1023\u4e4b\u95f4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSplitPacket(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->splitPacket:Z

    return-void
.end method
