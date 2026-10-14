.class public Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a:[C

    return-void
.end method

.method public static a(BIIJI)J
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shr-int/2addr p0, p1

    int-to-byte p0, p0

    rsub-int/lit8 p2, p2, 0x7

    add-int/2addr p2, p1

    if-lez p2, :cond_0

    shl-int/2addr p0, p2

    int-to-byte p0, p0

    and-int/lit16 p0, p0, 0xff

    shr-int/2addr p0, p2

    int-to-byte p0, p0

    :cond_0
    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    shl-long/2addr p0, p5

    or-long/2addr p0, p3

    return-wide p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 3
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 4
    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(BI)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(BZ)I
    .locals 0

    if-eqz p1, :cond_0

    and-int/lit8 p0, p0, 0xf

    return p0

    :cond_0
    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static e(Z[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p0, :cond_0

    add-int/lit8 p0, p2, 0x1

    .line 1
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public static f(Z[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p0, :cond_0

    add-int/lit8 p0, p2, 0x1

    .line 1
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    aget-byte p0, p1, p0

    :goto_0
    or-int/2addr p0, p2

    return p0
.end method

.method public static g([BBI)I
    .locals 1

    add-int/lit8 v0, p2, 0x1

    .line 1
    aput-byte p1, p0, p2

    return v0
.end method

.method public static h([BI[BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int/lit8 v1, p1, 0x1

    add-int v2, v0, p3

    .line 1
    aget-byte v2, p2, v2

    aput-byte v2, p0, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static i([BIIZ)I
    .locals 1

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 1
    aput-byte v0, p0, p2

    add-int/lit8 p2, p3, 0x1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p0, p3

    add-int/lit8 p3, p2, 0x1

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 3
    aput-byte v0, p0, p2

    add-int/lit8 p2, p3, 0x1

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 4
    aput-byte p1, p0, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p2, 0x1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p0, p2

    add-int/lit8 p2, p3, 0x1

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 6
    aput-byte v0, p0, p3

    add-int/lit8 p3, p2, 0x1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 7
    aput-byte v0, p0, p2

    add-int/lit8 p2, p3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 8
    aput-byte p1, p0, p3

    :goto_0
    return p2
.end method

.method public static j([BSIZ)I
    .locals 1

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 1
    aput-byte v0, p0, p2

    add-int/lit8 p2, p3, 0x1

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 2
    aput-byte p1, p0, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p2, 0x1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 3
    aput-byte v0, p0, p2

    add-int/lit8 p2, p3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 4
    aput-byte p1, p0, p3

    :goto_0
    return p2
.end method
