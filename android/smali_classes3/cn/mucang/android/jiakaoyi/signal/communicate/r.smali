.class public Lcn/mucang/android/jiakaoyi/signal/communicate/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:[B

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    .line 5
    array-length p1, p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c:I

    .line 6
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a:Z

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    array-length v0, v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    return v0
.end method

.method public final e()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final f()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    return-object v0
.end method

.method public final g(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int v2, v1, p1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    return-object v0
.end method

.method public final h()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final i()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public final k()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a:Z

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x20

    const/16 v5, 0x28

    const/16 v6, 0x30

    const/16 v7, 0x38

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v8, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v8, v0, v8

    int-to-long v10, v8

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    add-int/lit8 v8, v9, 0x1

    iput v8, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v12, v9

    shl-long/2addr v12, v1

    or-long v9, v10, v12

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v11, v8

    shl-long/2addr v11, v2

    or-long v8, v9, v11

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v10, v1

    shl-long/2addr v10, v3

    or-long/2addr v8, v10

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    shl-long/2addr v8, v5

    or-long v1, v2, v8

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    shl-long/2addr v3, v7

    :goto_0
    or-long v0, v1, v3

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v8, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v10, v8

    shl-long v7, v10, v7

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v11, v9

    shl-long/2addr v11, v6

    or-long v6, v7, v11

    add-int/lit8 v8, v10, 0x1

    iput v8, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v9, v0, v10

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    shl-long/2addr v9, v5

    or-long v5, v6, v9

    add-int/lit8 v7, v8, 0x1

    iput v7, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    shl-long/2addr v8, v4

    or-long v4, v5, v8

    add-int/lit8 v6, v7, 0x1

    iput v6, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    shl-long/2addr v7, v3

    or-long v3, v4, v7

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long/2addr v6, v2

    or-long v2, v3, v6

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long v1, v2, v5

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    goto :goto_0
.end method

.method public final l()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public final m()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final n()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public final o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d:I

    return-void
.end method

.method public final q()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
