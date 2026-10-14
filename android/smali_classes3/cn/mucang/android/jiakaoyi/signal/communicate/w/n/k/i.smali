.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;
.source "SourceFile"


# instance fields
.field private final f:Lcn/mucang/android/jiakaoyi/signal/d/g;

.field private final g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/d/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/d/g;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;->f:Lcn/mucang/android/jiakaoyi/signal/d/g;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    const/4 v2, 0x1

    const v3, 0x186a0

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;-><init>(II)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;->g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    return-void
.end method

.method private j(Lcn/mucang/android/jiakaoyi/signal/com/v/b;I[B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p2, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->s([BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected c(Lcn/mucang/android/jiakaoyi/signal/com/v/b;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/com/t/b;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->t()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->i()I

    move-result v2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/t/b;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->c:Z

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    invoke-direct {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    .line 4
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->a:I

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    invoke-direct {p0, p1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;->j(Lcn/mucang/android/jiakaoyi/signal/com/v/b;I[B)V

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;->f:Lcn/mucang/android/jiakaoyi/signal/d/g;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->a:I

    invoke-virtual {p1, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/d/g;->a(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->close()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;->g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->i()V

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/com/v/b;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/com/ComState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "\u6388\u6743\u5931\u8d25"

    if-eqz v0, :cond_0

    .line 1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Authorising:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-interface {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->m()Ljava/io/OutputStream;

    move-result-object v3

    .line 3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->t()Ljava/io/InputStream;

    move-result-object v4

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    const/16 v7, 0x101

    .line 5
    invoke-virtual {v5, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    const-wide/high16 v7, 0x40f0000000000000L    # 65536.0

    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double v9, v9, v7

    double-to-int v7, v9

    int-to-short v7, v7

    invoke-virtual {v5, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 7
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v5

    .line 8
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;-><init>(IZ)V

    .line 9
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v10

    invoke-direct {v9, v10, v8}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;-><init>(ZS)V

    const/4 v10, 0x0

    .line 10
    array-length v11, v5

    const/16 v12, 0x99

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v9

    move-object v9, v5

    invoke-virtual/range {v8 .. v15}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->b([BIIIZSZ)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u53d1\u9001\u5230\u4e3b\u63a7\u7f51\u53e3 , 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x99

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcn/mucang/android/jiakaoyi/framework/log/f;->s([BLjava/lang/String;)V

    const/16 v5, 0x7d0

    .line 13
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v8

    invoke-virtual {v7, v4, v5, v8}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 14
    iget-boolean v5, v4, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    .line 15
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v5

    invoke-direct {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    .line 16
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v4

    if-nez v4, :cond_4

    .line 17
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v4

    .line 18
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    if-gtz v4, :cond_2

    if-lez v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6388\u6743\u5931\u8d25:version="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",token="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v5, 0x202

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    .line 21
    :goto_1
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/com/p;->c(I)V

    .line 22
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;

    invoke-direct {v4, v2, v6}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;-><init>(IZ)V

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    .line 23
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;-><init>(Ljava/io/OutputStream;)V

    .line 24
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->v()I

    move-result v5

    invoke-direct {v3, v4, v6, v5}, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;ZI)V

    .line 25
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;)V

    .line 26
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->b()Z

    move-result v6

    int-to-short v2, v2

    invoke-direct {v5, v6, v2}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;-><init>(ZS)V

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;Lcn/mucang/android/jiakaoyi/signal/com/u/a;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;

    .line 27
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;->g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->g()V

    .line 28
    invoke-virtual/range {p0 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->h(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6388\u6743\u5931\u8d25, \u9519\u8bef\u7801:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorAuthorise:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0

    .line 31
    :cond_5
    :try_start_1
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorAuthorise:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 33
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorAuthorise:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v2, v3, v4, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v2
.end method
