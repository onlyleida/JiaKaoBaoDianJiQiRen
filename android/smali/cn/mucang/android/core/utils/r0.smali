.class public Lcn/mucang/android/core/utils/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([B[I)[B
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/core/encode/a;->f(J)[B

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/r0;->e([B)[B

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/r0;->d([B)[I

    move-result-object v2

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/encode/a;->a([B)I

    move-result v1

    xor-int/2addr p0, v1

    .line 7
    invoke-static {p0, v2}, Lcn/mucang/android/core/utils/r0;->g(I[I)[B

    move-result-object p0

    .line 8
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v2, v1, [B

    .line 9
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    array-length v3, v0

    array-length v5, p0

    invoke-static {p0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    new-instance p0, Ljava/util/zip/CRC32;

    invoke-direct {p0}, Ljava/util/zip/CRC32;-><init>()V

    .line 12
    invoke-virtual {p0, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 13
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    long-to-int p0, v5

    .line 14
    invoke-static {v0}, Lcn/mucang/android/core/utils/r0;->f([B)[B

    move-result-object v3

    .line 15
    invoke-static {v3}, Lcn/mucang/android/core/encode/a;->a([B)I

    move-result v3

    xor-int/2addr p0, v3

    .line 16
    invoke-static {v0}, Lcn/mucang/android/core/utils/r0;->c([B)[I

    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/r0;->g(I[I)[B

    move-result-object p0

    .line 18
    array-length v0, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 19
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    array-length v2, p0

    invoke-static {p0, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-static {v0}, Lcn/mucang/android/core/encode/a;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([B)[I
    .locals 2

    const/4 v0, 0x1

    .line 1
    aget-byte p0, p0, v0

    rem-int/lit8 p0, p0, 0x5

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v1, 0x4

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-array p0, v1, [I

    .line 2
    fill-array-data p0, :array_0

    goto :goto_0

    :cond_0
    new-array p0, v1, [I

    .line 3
    fill-array-data p0, :array_1

    goto :goto_0

    :cond_1
    new-array p0, v1, [I

    .line 4
    fill-array-data p0, :array_2

    goto :goto_0

    :cond_2
    new-array p0, v1, [I

    .line 5
    fill-array-data p0, :array_3

    goto :goto_0

    :cond_3
    new-array p0, v1, [I

    .line 6
    fill-array-data p0, :array_4

    :goto_0
    return-object p0

    :array_0
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private static d([B)[I
    .locals 2

    const/4 v0, 0x1

    .line 1
    aget-byte p0, p0, v0

    rem-int/lit8 p0, p0, 0x5

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v1, 0x4

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-array p0, v1, [I

    .line 2
    fill-array-data p0, :array_0

    goto :goto_0

    :cond_0
    new-array p0, v1, [I

    .line 3
    fill-array-data p0, :array_1

    goto :goto_0

    :cond_1
    new-array p0, v1, [I

    .line 4
    fill-array-data p0, :array_2

    goto :goto_0

    :cond_2
    new-array p0, v1, [I

    .line 5
    fill-array-data p0, :array_3

    goto :goto_0

    :cond_3
    new-array p0, v1, [I

    .line 6
    fill-array-data p0, :array_4

    :goto_0
    return-object p0

    :array_0
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private static e([B)[B
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    goto :goto_0

    :cond_3
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    .line 7
    :goto_0
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/r0;->a([B[I)[B

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x5
        0x7
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x4
        0x6
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x5
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x2
        0x4
        0x6
    .end array-data
.end method

.method private static f([B)[B
    .locals 3

    const/4 v0, 0x1

    .line 1
    aget-byte v1, p0, v0

    rem-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_3

    goto :goto_0

    :cond_3
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_4

    .line 7
    :goto_0
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/r0;->a([B[I)[B

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private static g(I[I)[B
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2
    aget v2, p1, v1

    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
