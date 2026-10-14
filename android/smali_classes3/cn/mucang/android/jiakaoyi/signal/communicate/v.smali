.class public Lcn/mucang/android/jiakaoyi/signal/communicate/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:[B


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c:I

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->a:Z

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->e:[B

    .line 6
    array-length p1, p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d:I

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d:I

    if-lt v0, v1, :cond_0

    mul-int/lit8 v0, v1, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->e:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->e:[B

    .line 5
    array-length v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->e:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final c(B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->e:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b:I

    aput-byte p1, v0, v1

    .line 3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c:I

    return-void
.end method

.method public final d([B)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->a:Z

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 6
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 7
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 9
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    :goto_0
    return-void
.end method

.method public final g(J)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->a:Z

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x20

    const/16 v5, 0x28

    const/16 v6, 0x30

    const/16 v7, 0x38

    const-wide/16 v8, 0xff

    if-eqz v0, :cond_0

    and-long v10, p1, v8

    long-to-int v0, v10

    int-to-byte v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v0, p1, v1

    and-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v0, p1, v2

    and-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v0, p1, v3

    and-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v0, p1, v4

    and-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v0, p1, v5

    and-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v0, p1, v6

    and-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long/2addr p1, v7

    and-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 9
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    goto :goto_0

    :cond_0
    ushr-long v10, p1, v7

    and-long/2addr v10, v8

    long-to-int v0, v10

    int-to-byte v0, v0

    .line 10
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v0, v6

    int-to-byte v0, v0

    .line 11
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v5, p1, v5

    and-long/2addr v5, v8

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 12
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v4, p1, v4

    and-long/2addr v4, v8

    long-to-int v0, v4

    int-to-byte v0, v0

    .line 13
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v3, p1, v3

    and-long/2addr v3, v8

    long-to-int v0, v3

    int-to-byte v0, v0

    .line 14
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v2, p1, v2

    and-long/2addr v2, v8

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 15
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-long v0, p1, v1

    and-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 16
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    and-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 17
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    :goto_0
    return-void
.end method

.method public final h(S)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->a:Z

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    :goto_0
    return-void
.end method
