.class public Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;
.super Lcn/mucang/android/jiakaoyi/signal/com/t/b;
.source "SourceFile"


# instance fields
.field private final b:[B

.field private final c:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/t/b;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->b:[B

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->c:[B

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    return-void
.end method

.method private e(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    if-lez p1, :cond_1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    int-to-long p1, p1

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    :goto_0
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    const-wide/16 v2, 0x1

    const/16 v4, 0x7e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p3

    if-gtz p3, :cond_0

    .line 4
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    invoke-direct {p0, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->e(IJ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p3

    int-to-byte p3, p3

    if-eq p3, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p3

    if-gtz p3, :cond_2

    .line 8
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 9
    invoke-direct {p0, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->e(IJ)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p3

    int-to-byte p3, p3

    if-eq p3, v4, :cond_3

    .line 11
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->b:[B

    aput-byte p3, v7, v5

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 12
    :goto_1
    iget-boolean v7, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    if-eqz v7, :cond_6

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7

    if-gtz v7, :cond_4

    .line 14
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 15
    invoke-direct {p0, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->e(IJ)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    if-ne v7, v4, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->b:[B

    add-int/lit8 v9, p3, 0x1

    aput-byte v7, v8, p3

    move p3, v9

    goto :goto_1

    .line 18
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    if-nez p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_3
    if-ge p1, p3, :cond_a

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->b:[B

    aget-byte v1, v0, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_8

    add-int/lit8 v1, p1, 0x1

    aget-byte v3, v0, v1

    if-ne v3, v6, :cond_8

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->c:[B

    add-int/lit8 v0, p2, 0x1

    aput-byte v4, p1, p2

    :goto_4
    move p2, v0

    move p1, v1

    goto :goto_5

    .line 21
    :cond_8
    aget-byte v1, v0, p1

    if-ne v1, v2, :cond_9

    add-int/lit8 v1, p1, 0x1

    aget-byte v3, v0, v1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_9

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->c:[B

    add-int/lit8 v0, p2, 0x1

    aput-byte v2, p1, p2

    goto :goto_4

    .line 23
    :cond_9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->c:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v0, v0, p1

    aput-byte v0, v1, p2

    move p2, v2

    :goto_5
    add-int/2addr p1, v6

    goto :goto_3

    .line 24
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->c:[B

    aget-byte p3, p1, v5

    and-int/lit16 p3, p3, 0xff

    const/4 v0, 0x3

    .line 25
    aget-byte v1, p1, v0

    sub-int/2addr p2, v0

    .line 26
    new-array v1, p2, [B

    if-lez p2, :cond_b

    .line 27
    invoke-static {p1, v0, v1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_b
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    invoke-direct {p1, p3, v1}, Lcn/mucang/android/jiakaoyi/signal/com/t/a;-><init>(I[B)V

    return-object p1
.end method
