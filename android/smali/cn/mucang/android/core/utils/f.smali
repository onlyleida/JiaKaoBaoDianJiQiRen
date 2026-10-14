.class public Lcn/mucang/android/core/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)[B
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/f;->b([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0xffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const v4, 0xff00

    and-int/2addr v4, v2

    and-int/lit16 v2, v2, 0xff

    .line 2
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v2, v5

    or-int/2addr v2, v4

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    and-int/lit8 v5, v2, 0x1

    if-lez v5, :cond_0

    shr-int/lit8 v2, v2, 0x1

    const v5, 0xa001

    xor-int/2addr v2, v5

    goto :goto_2

    :cond_0
    shr-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {v2}, Lcn/mucang/android/core/utils/f;->c(I)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method
