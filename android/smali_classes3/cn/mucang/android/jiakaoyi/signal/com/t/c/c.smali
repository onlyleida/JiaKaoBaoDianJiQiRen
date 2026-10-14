.class public Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;
.super Lcn/mucang/android/jiakaoyi/signal/com/t/b;
.source "SourceFile"


# instance fields
.field private b:I

.field private final c:[B

.field private final d:[B

.field private final e:I

.field private final f:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/t/b;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->e:I

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->f:Z

    const/16 p1, 0x400

    new-array p2, p1, [B

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->c:[B

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b:I

    return-void
.end method

.method private e(IJ)V
    .locals 3
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

    int-to-long p2, p1

    cmp-long v2, v0, p2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "V2Decoder\u8bfb\u6d41\u8d85\u65f6"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 p1, p1, 0x3e8

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "\u8bfb\u53d6\u4e3b\u63a7\u6570\u636e\u8d85\u65f6\uff0c\u8bf7\u91cd\u542f\u4e3b\u63a7"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static g(I)Z
    .locals 1

    const/16 v0, 0x99

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2
    :goto_0
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    const-wide/16 v6, 0x1

    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_3

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz v5, :cond_0

    .line 4
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    invoke-direct {v0, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->e(IJ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    if-eq v5, v8, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz v5, :cond_2

    .line 8
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 9
    invoke-direct {v0, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->e(IJ)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    if-eq v5, v8, :cond_3

    .line 11
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->c:[B

    aput-byte v5, v11, v9

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 12
    :goto_1
    iget-boolean v11, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    if-eqz v11, :cond_6

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v11

    if-gtz v11, :cond_4

    .line 14
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 15
    invoke-direct {v0, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->e(IJ)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v11

    int-to-byte v11, v11

    if-ne v11, v8, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->c:[B

    add-int/lit8 v13, v5, 0x1

    aput-byte v11, v12, v5

    move v5, v13

    goto :goto_1

    .line 18
    :cond_6
    :goto_2
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    const/4 v3, 0x0

    if-nez v1, :cond_7

    return-object v3

    :cond_7
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x2

    if-ge v1, v5, :cond_a

    .line 19
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->c:[B

    aget-byte v11, v7, v1

    const/16 v12, 0x7f

    if-ne v11, v12, :cond_8

    add-int/lit8 v11, v1, 0x1

    aget-byte v13, v7, v11

    if-ne v13, v10, :cond_8

    .line 20
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    add-int/lit8 v6, v4, 0x1

    aput-byte v8, v1, v4

    :goto_4
    move v4, v6

    move v1, v11

    goto :goto_5

    .line 21
    :cond_8
    aget-byte v11, v7, v1

    if-ne v11, v12, :cond_9

    add-int/lit8 v11, v1, 0x1

    aget-byte v13, v7, v11

    if-ne v13, v6, :cond_9

    .line 22
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    add-int/lit8 v6, v4, 0x1

    aput-byte v12, v1, v4

    goto :goto_4

    .line 23
    :cond_9
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v7, v7, v1

    aput-byte v7, v6, v4

    move v4, v11

    :goto_5
    add-int/2addr v1, v10

    goto :goto_3

    .line 24
    :cond_a
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    aget-byte v5, v1, v9

    and-int/lit16 v12, v5, 0xff

    .line 25
    aget-byte v1, v1, v10

    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_b

    const/4 v14, 0x1

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_c

    const/4 v15, 0x1

    goto :goto_7

    :cond_c
    const/4 v15, 0x0

    :goto_7
    if-eqz v14, :cond_d

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v1

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    invoke-static {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->f(Z[BI)I

    move-result v1

    move/from16 v16, v1

    goto :goto_8

    :cond_d
    const/16 v16, 0x0

    .line 27
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v1

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    const/4 v6, 0x4

    invoke-static {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->f(Z[BI)I

    move-result v17

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v1

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    const/4 v6, 0x6

    invoke-static {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->f(Z[BI)I

    move-result v1

    .line 29
    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->g(I)Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->e:I

    if-eq v1, v5, :cond_f

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->f:Z

    if-eqz v1, :cond_f

    const-string v1, "V2Decoder\u9274\u6743\u7801\u975e\u6cd5"

    .line 30
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v3

    .line 32
    :cond_e
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "\u9274\u6743\u7801\u975e\u6cd5"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    add-int/lit8 v1, v4, -0xc

    .line 33
    new-array v13, v1, [B

    if-lez v1, :cond_10

    .line 34
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    const/16 v6, 0x8

    invoke-static {v5, v6, v13, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v1

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    add-int/lit8 v6, v4, -0x4

    invoke-static {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->e(Z[BI)I

    move-result v1

    .line 36
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    invoke-static {v5, v9, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/CRCUtil;->crc([BII)I

    move-result v5

    if-eq v1, v5, :cond_13

    const-string v6, "V2Decoder\u6821\u9a8c\u5931\u8d25"

    .line 37
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 38
    new-array v6, v4, [B

    .line 39
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d:[B

    invoke-static {v7, v9, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6307\u4ee4:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " crc \u6821\u9a8c\u5931\u8d25:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v3

    .line 42
    :cond_11
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b:I

    add-int/2addr v1, v10

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b:I

    const/4 v4, 0x5

    if-ge v1, v4, :cond_12

    return-object v3

    .line 43
    :cond_12
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "\u6821\u9a8c\u5931\u8d25"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1

    .line 44
    :cond_13
    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b:I

    .line 45
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    if-ne v1, v5, :cond_14

    const/16 v18, 0x1

    goto :goto_9

    :cond_14
    const/16 v18, 0x0

    :goto_9
    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcn/mucang/android/jiakaoyi/signal/com/t/a;-><init>(I[BZZIIZ)V

    return-object v2
.end method
