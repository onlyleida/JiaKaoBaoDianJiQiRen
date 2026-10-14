.class public Lcn/mucang/jiakaoyi/uilib/socket/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)J
    .locals 2

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([BB)[B
    .locals 3

    .line 1
    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x31

    .line 3
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x32

    .line 4
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x33

    .line 5
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x34

    .line 6
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    .line 7
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->a([B)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
