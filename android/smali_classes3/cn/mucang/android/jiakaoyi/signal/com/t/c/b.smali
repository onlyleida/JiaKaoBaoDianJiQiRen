.class public Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;
.super Lcn/mucang/android/jiakaoyi/signal/com/t/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;
    }
.end annotation


# instance fields
.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/t/b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->d:I

    return-void
.end method

.method private e(IILjava/util/concurrent/atomic/AtomicBoolean;)[B
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x5

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    const/4 v5, 0x4

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    if-ne v3, p2, :cond_7

    .line 2
    new-array v3, v1, [B

    add-int/lit8 p1, p1, 0x3

    const/4 v6, 0x0

    .line 3
    invoke-static {v0, p1, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v5, [B

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    sub-int/2addr p2, v5

    invoke-static {v0, p2, p1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->b()Z

    move-result v0

    invoke-direct {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result p1

    .line 7
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/CRCUtil;->a([B)I

    move-result p2

    const-string v0, " , cal crc="

    const-string v5, " , crc="

    const/16 v7, 0x19

    if-eq p2, p1, :cond_2

    .line 8
    aget-byte v8, v3, v6

    if-eq v8, v7, :cond_2

    aget-byte v8, v3, v6

    const/16 v9, 0x21

    if-eq v8, v9, :cond_2

    aget-byte v8, v3, v6

    const/16 v9, 0x23

    if-eq v8, v9, :cond_2

    aget-byte v8, v3, v6

    const/16 v9, 0x24

    if-eq v8, v9, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p3

    if-nez p3, :cond_6

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crc\u6821\u9a8c\u5931\u8d25\uff0c0x"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-ne p2, p1, :cond_3

    .line 12
    aget-byte v8, v3, v6

    const/16 v9, 0x11

    if-ne v8, v9, :cond_3

    .line 13
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->d:I

    .line 14
    :cond_3
    aget-byte v8, v3, v6

    if-ne v8, v7, :cond_5

    iget v7, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->d:I

    if-ne v1, v7, :cond_5

    .line 15
    invoke-virtual {p3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p3

    if-nez p3, :cond_4

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x11\u8bc6\u522b\u6210\u4e860x19\uff0ccrc\u6821\u9a8c\u5931\u8d25\uff0c0x"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_4
    return-object v2

    .line 18
    :cond_5
    invoke-virtual {p3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    :goto_1
    return-object v3

    :cond_7
    return-object v2
.end method

.method private g(Ljava/io/InputStream;IJZLjava/util/concurrent/atomic/AtomicBoolean;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    :cond_0
    :goto_0
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    const-wide/16 v6, 0x0

    if-gtz v4, :cond_4

    .line 6
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    if-nez v4, :cond_1

    return-object v5

    :cond_1
    cmp-long v4, p3, v6

    if-lez v4, :cond_3

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v4, v6, p3

    if-lez v4, :cond_3

    if-eqz p5, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c1d\u8bd5\u89e3\u6790\u5e27\u6570\u636e\u8d85\u65f61 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_2
    return-object v5

    :cond_3
    const-wide/16 v4, 0x1

    .line 9
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_4
    cmp-long v4, p3, v6

    if-lez v4, :cond_6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v4, v6, p3

    if-lez v4, :cond_6

    if-eqz p5, :cond_5

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c1d\u8bd5\u89e3\u6790\u5e27\u6570\u636e\u8d85\u65f62 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_5
    return-object v5

    .line 12
    :cond_6
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 13
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    move v6, p2

    if-lt v4, v6, :cond_7

    .line 14
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    return-object v5

    :cond_7
    const/16 v5, 0xa

    const/4 v7, 0x1

    if-lt v4, v5, :cond_e

    .line 15
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    add-int/lit8 v8, v4, -0x1

    aget-byte v8, v5, v8

    const/16 v9, -0x3d

    if-ne v8, v9, :cond_e

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v5, v4

    if-ne v4, v9, :cond_e

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 18
    :goto_1
    iget v10, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    sub-int/2addr v10, v7

    if-ge v8, v10, :cond_a

    .line 19
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    aget-byte v11, v10, v8

    const/16 v12, -0x5b

    if-ne v11, v12, :cond_8

    add-int/lit8 v11, v8, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0x5a

    if-ne v10, v11, :cond_8

    .line 20
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_8
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    aget-byte v11, v10, v8

    if-ne v11, v9, :cond_9

    add-int/lit8 v11, v8, 0x1

    aget-byte v10, v10, v11

    if-ne v10, v9, :cond_9

    .line 22
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 23
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 24
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 25
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    goto/16 :goto_0

    .line 26
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 27
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v11, p6

    .line 28
    invoke-direct {p0, v8, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->e(IILjava/util/concurrent/atomic/AtomicBoolean;)[B

    move-result-object v10

    if-eqz v10, :cond_c

    return-object v10

    :cond_d
    move-object/from16 v11, p6

    goto :goto_2

    :cond_e
    move-object/from16 v11, p6

    .line 29
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    array-length v8, v5

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_0

    .line 30
    array-length v4, v5

    sub-int/2addr v4, v7

    invoke-static {v5, v7, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    sub-int/2addr v4, v7

    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    goto/16 :goto_0

    :cond_f
    return-object v5
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
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    int-to-long v3, p2

    const v2, 0x186a0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->g(Ljava/io/InputStream;IJZLjava/util/concurrent/atomic/AtomicBoolean;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "V600"

    const-string p2, "\u89e3\u6790\u4e00\u5e27\u7a7a\u6570\u636e"

    .line 3
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([B)V

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->f()[B

    move-result-object p2

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/com/t/a;-><init>(I[BZ)V

    return-object v0
.end method

.method public h(Ljava/io/InputStream;I)Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    int-to-long v3, p2

    const/16 v2, 0x190

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->g(Ljava/io/InputStream;IJZLjava/util/concurrent/atomic/AtomicBoolean;)[B

    move-result-object p1

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;-><init>()V

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->c:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-array v0, p1, [B

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->b:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;->a:[B

    goto :goto_1

    .line 8
    :cond_1
    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;->a:[B

    :goto_1
    return-object p2
.end method
