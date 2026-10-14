.class public Lcn/mucang/sundial/android/tcp/message/RawMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Send;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;,
        Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;,
        Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;
    }
.end annotation


# static fields
.field public static final MARK_VALUE:I = 0x7e


# instance fields
.field private body:[B

.field private header:Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

.field private originalData:[B

.field private packetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateVerifyCode([B)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v0, 0xff

    return p0
.end method

.method public static copy(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;[BLjava/util/List;)Lcn/mucang/sundial/android/tcp/message/RawMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;",
            "[B",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;)",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->copy()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->header:Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->body:[B

    .line 4
    iput-object p2, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->packetList:Ljava/util/List;

    return-object v0
.end method

.method private static create(I[BIZII)Lcn/mucang/sundial/android/tcp/message/RawMessage;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;-><init>()V

    const/16 v2, 0x80

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$302(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I

    .line 4
    invoke-static {v1, p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$202(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I

    .line 5
    new-instance p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;-><init>()V

    .line 6
    array-length v2, p1

    invoke-static {p0, v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->access$102(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;I)I

    .line 7
    invoke-static {p0, p3}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->access$402(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;Z)Z

    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->access$502(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;Z)Z

    .line 9
    invoke-static {v1, p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$002(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getDevicePhone()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$602(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-static {v1, p2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$702(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I

    .line 12
    invoke-static {v1, v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$802(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;I)I

    if-eqz p3, :cond_0

    .line 13
    new-instance p0, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;-><init>()V

    .line 14
    invoke-static {p0, p4}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->access$902(Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;I)I

    .line 15
    invoke-static {p0, p5}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->access$1002(Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;I)I

    .line 16
    invoke-static {v1, p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$1102(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    .line 17
    :cond_0
    iput-object v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->header:Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    .line 18
    iput-object p1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->body:[B

    return-object v0
.end method

.method public static read([B[B)Lcn/mucang/sundial/android/tcp/message/RawMessage;
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->calculateVerifyCode([B)I

    move-result v0

    .line 2
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 4
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object p0

    .line 5
    new-instance v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    invoke-direct {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage;-><init>()V

    .line 6
    iput-object p1, v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;->originalData:[B

    .line 7
    iput-object p0, v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;->header:Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    .line 8
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$000(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->access$100(Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;)I

    move-result p1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBytes(IZ)[B

    move-result-object v0

    iput-object v0, v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;->body:[B

    .line 10
    array-length v0, v0

    if-eq v0, p1, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->access$200(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)I

    move-result p0

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9e\u9645\u6536\u5230\u7684body\u548c\u671f\u671b\u7684\u4e0d\u4e00\u6837\uff0c\u671f\u671b\u7684\u662f\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c\u5b9e\u9645\u7684\u662f\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;->body:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf/a/b/a/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-object v2

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bfb\u53d6\u7684\u6d88\u606f\u6821\u9a8c\u7801\u5931\u8d25\uff0c\u7b97\u51fa\u6765\u7684\u662f:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u4f20\u5165\u7684\u662f:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static splitIfNeed([B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/utils/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_3

    array-length v0, p0

    const/16 v1, 0x3ff

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 4
    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 5
    array-length v4, v3

    if-ge v4, v1, :cond_2

    .line 6
    array-length p0, v3

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    .line 8
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static write(Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;",
            "Lcn/mucang/sundial/android/tcp/message/SendMessage;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/Message;->getId()I

    move-result v6

    .line 2
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/Send;->encode()[B

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->splitIfNeed([B)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v1, v8, :cond_1

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    add-int/lit8 v10, v1, 0x1

    .line 8
    invoke-interface {p0}, Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;->getNextMessageIndex()I

    move-result v3

    move v0, v6

    move-object v1, v2

    move v2, v3

    move v3, v7

    move v4, v8

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->create(I[BIZII)Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v10

    goto :goto_1

    :cond_1
    return-object v9
.end method


# virtual methods
.method public encode()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->header:Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->body:[B

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->calculateVerifyCode([B)I

    move-result v1

    .line 6
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 7
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->body:[B

    return-object v0
.end method

.method public getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->header:Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    return-object v0
.end method

.method public getOriginalData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->originalData:[B

    return-object v0
.end method

.method public getPacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->packetList:Ljava/util/List;

    return-object v0
.end method

.method public getSplitIndex()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/RawMessage;->header:Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getPacket()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->getCurrent()I

    move-result v0

    return v0
.end method

.method public writeAll()[B
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    const/16 v1, 0x7e

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->encode()[B

    move-result-object v2

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-byte v5, v2, v4

    const/4 v6, 0x2

    if-ne v5, v1, :cond_0

    new-array v5, v6, [B

    .line 5
    fill-array-data v5, :array_0

    invoke-virtual {v0, v5}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    goto :goto_1

    :cond_0
    const/16 v7, 0x7d

    if-ne v5, v7, :cond_1

    new-array v5, v6, [B

    .line 6
    fill-array-data v5, :array_1

    invoke-virtual {v0, v5}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    goto :goto_1

    :cond_1
    and-int/lit16 v5, v5, 0xff

    .line 7
    invoke-virtual {v0, v5}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7dt
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7dt
        0x1t
    .end array-data
.end method
