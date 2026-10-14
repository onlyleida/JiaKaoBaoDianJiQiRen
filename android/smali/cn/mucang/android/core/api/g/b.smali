.class public Lcn/mucang/android/core/api/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/f;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/f;->b([B)[B

    move-result-object v0

    .line 4
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 5
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v6, p0, v4

    .line 6
    aget-byte v7, p1, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    array-length v2, p0

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    array-length p0, p0

    array-length v0, v0

    add-int/2addr p0, v0

    array-length v0, p1

    invoke-static {p1, v3, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    const/16 v0, 0x400

    invoke-direct {p1, p0, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 12
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 13
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u5185\u5bb9\u7f16\u7801 gzip \u5931\u8d25"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
