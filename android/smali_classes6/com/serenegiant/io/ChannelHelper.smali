.class public Lcom/serenegiant/io/ChannelHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/io/ChannelHelper;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public static readBoolean(Ljava/nio/channels/ByteChannel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readBoolean(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static readBoolean(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readBooleanArray(Ljava/nio/channels/ByteChannel;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-interface {p0, v1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    new-array p0, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 7
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readByte(Ljava/nio/channels/ByteChannel;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readByte(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)B

    move-result p0

    return p0
.end method

.method public static readByte(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readByteArray(Ljava/nio/channels/ByteChannel;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    .line 2
    new-array v1, v0, [B

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 4
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readByteBuffer(Ljava/nio/channels/ByteChannel;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/serenegiant/io/ChannelHelper;->readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_3

    :cond_1
    if-eqz p2, :cond_5

    if-nez p1, :cond_2

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    add-int/2addr p2, v0

    .line 8
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object p1, p2

    :cond_3
    :goto_1
    add-int p2, v1, v0

    .line 11
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_4

    .line 13
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    .line 15
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 16
    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readChar(Ljava/nio/channels/ByteChannel;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readChar(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)C

    move-result p0

    return p0
.end method

.method public static readChar(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readCharArray(Ljava/nio/channels/ByteChannel;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-array v0, v0, [C

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readDouble(Ljava/nio/channels/ByteChannel;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readDouble(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readDouble(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readDoubleArray(Ljava/nio/channels/ByteChannel;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-array v0, v0, [D

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readFloat(Ljava/nio/channels/ByteChannel;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    invoke-interface {p0, v1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readFloat(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 6
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0

    .line 10
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readFloatArray(Ljava/nio/channels/ByteChannel;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-array v0, v0, [F

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readInt(Ljava/nio/channels/ByteChannel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static readInt(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readIntArray(Ljava/nio/channels/ByteChannel;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-array v0, v0, [I

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readLong(Ljava/nio/channels/ByteChannel;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readLong(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLong(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readLongArray(Ljava/nio/channels/ByteChannel;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-array v0, v0, [J

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readShort(Ljava/nio/channels/ByteChannel;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readShort(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)S

    move-result p0

    return p0
.end method

.method public static readShort(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readShortArray(Ljava/nio/channels/ByteChannel;)[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-array v0, v0, [S

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readString(Ljava/nio/channels/ByteChannel;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    .line 2
    new-array v1, v0, [B

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 4
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lcom/serenegiant/io/ChannelHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static write(Ljava/nio/channels/ByteChannel;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;BLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;CLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;CLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 12
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 15
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;DLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;DLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 37
    invoke-static {p3, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 38
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 40
    invoke-interface {p0, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;FLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;FLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 32
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 35
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 22
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;JLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 27
    invoke-static {p3, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 28
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 30
    invoke-interface {p0, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/serenegiant/io/ChannelHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 42
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 43
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 96
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;SLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;SLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 17
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 18
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 20
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ZLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;ZLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    int-to-byte p1, p1

    .line 3
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 5
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 52
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[CLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[CLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    array-length v0, p1

    .line 55
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x2

    .line 56
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    aget-char v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 59
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[DLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[DLjava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    array-length v0, p1

    .line 90
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x8

    .line 91
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    aget-wide v2, p1, v1

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 94
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[FLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[FLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    array-length v0, p1

    .line 83
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x4

    .line 84
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    aget v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[ILjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    array-length v0, p1

    .line 69
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x4

    .line 70
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    aget v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 73
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[JLjava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    array-length v0, p1

    .line 76
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x8

    .line 77
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 78
    aget-wide v2, p1, v1

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 80
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[SLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[SLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    array-length v0, p1

    .line 62
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x2

    .line 63
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    aget-short v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[ZLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[ZLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    array-length v0, p1

    .line 46
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    .line 47
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    aget-boolean v2, p1, v1

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 50
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
