.class public Lcom/amap/api/mapcore/util/x5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a([B[B)[B
    .locals 7

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    .line 3
    sget v1, Lcom/amap/api/mapcore/util/x5;->a:I

    rem-int v2, v0, v1

    sub-int v2, v1, v2

    .line 4
    div-int v3, v0, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    .line 5
    new-array v1, v3, [B

    .line 6
    array-length v5, p0

    const/4 v6, 0x0

    invoke-static {p0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v0, v3, :cond_1

    int-to-byte p0, v2

    .line 7
    aput-byte p0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1, v4}, Lcom/amap/api/mapcore/util/x5;->c([BZ)[I

    move-result-object p0

    invoke-static {p1, v6}, Lcom/amap/api/mapcore/util/x5;->c([BZ)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/x5;->d([I[I)[I

    .line 9
    invoke-static {p0, v6}, Lcom/amap/api/mapcore/util/x5;->b([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static b([IZ)[B
    .locals 4

    .line 1
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_1

    .line 2
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p1, p0, p1

    if-le p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move v0, p1

    .line 3
    :cond_1
    new-array p1, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    ushr-int/lit8 v2, v1, 0x2

    .line 4
    aget v2, p0, v2

    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static c([BZ)[I
    .locals 6

    .line 1
    array-length p1, p0

    ushr-int/lit8 p1, p1, 0x2

    .line 2
    new-array p1, p1, [I

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    ushr-int/lit8 v2, v1, 0x2

    .line 4
    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static d([I[I)[I
    .locals 14

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    new-array v1, v2, [I

    .line 3
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 4
    :cond_1
    aget v1, p0, v0

    aget v2, p0, v3

    const v2, -0x61c88647

    const/16 v4, 0x34

    add-int/lit8 v5, v0, 0x1

    .line 5
    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_3

    add-int/2addr v5, v2

    ushr-int/lit8 v4, v5, 0x2

    and-int/lit8 v4, v4, 0x3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_2

    add-int/lit8 v8, v7, 0x1

    .line 6
    aget v9, p0, v8

    .line 7
    aget v10, p0, v7

    ushr-int/lit8 v11, v1, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v1, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v5

    and-int/lit8 v12, v7, 0x3

    xor-int/2addr v12, v4

    aget v12, p1, v12

    xor-int/2addr v1, v12

    add-int/2addr v9, v1

    xor-int v1, v11, v9

    add-int/2addr v1, v10

    aput v1, p0, v7

    move v7, v8

    goto :goto_1

    .line 8
    :cond_2
    aget v8, p0, v3

    .line 9
    aget v9, p0, v0

    ushr-int/lit8 v10, v1, 0x5

    shl-int/lit8 v11, v8, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v8, 0x3

    shl-int/lit8 v12, v1, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v8, v5

    and-int/lit8 v7, v7, 0x3

    xor-int/2addr v4, v7

    aget v4, p1, v4

    xor-int/2addr v1, v4

    add-int/2addr v8, v1

    xor-int v1, v10, v8

    add-int/2addr v1, v9

    aput v1, p0, v0

    move v4, v6

    goto :goto_0

    :cond_3
    return-object p0
.end method
