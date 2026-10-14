.class public Lcn/mucang/jiakaoyi/uilib/socket/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([B)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    array-length p0, p0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p0, p0, -0x4

    add-int/lit8 p0, p0, -0x1

    .line 4
    new-array p0, p0, [B

    .line 5
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 7
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->a([B)J

    move-result-wide v2

    long-to-int v3, v2

    if-ne v3, v0, :cond_1

    .line 8
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->getMessageParser(I)Lcn/mucang/jiakaoyi/uilib/socket/z/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/z/t;->a(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 10
    :cond_1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    const/4 v0, 0x2

    const-string v1, "\u6821\u9a8c\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/DataInputStream;)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v1, 0x0

    .line 2
    aget-byte v1, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x31

    if-ne v1, v3, :cond_0

    aget-byte v1, v0, v2

    const/16 v3, 0x32

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/16 v3, 0x33

    if-ne v1, v3, :cond_0

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 4
    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 6
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/c;->a([B)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    const-string v0, "\u5e27\u5934\u90e8\u9519\u8bef"

    invoke-direct {p0, v2, v0}, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
