.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;
.source "SourceFile"


# instance fields
.field protected final f:Lcn/mucang/android/jiakaoyi/signal/d/f;

.field private final g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

.field private volatile h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;-><init>()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->k()Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/d/f;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/d/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->h:Z

    return p1
.end method

.method private k()Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;-><init>(II)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;)V

    return-object v0
.end method

.method private l(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 5
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

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->m()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->v()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;ZI)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;)V

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/u/b/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/a;-><init>()V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;Lcn/mucang/android/jiakaoyi/signal/com/u/a;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/d/f;->g(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/d/f;->f()V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->h(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private n(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
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

    move-result-object v9

    .line 8
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;-><init>(IZ)V

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v10

    invoke-direct {v8, v10, v7}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;-><init>(ZS)V

    const/4 v10, 0x0

    .line 10
    array-length v11, v9

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiLogin:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-byte v12, v12, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->b([BIIIZSZ)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    const/16 v8, 0x7d0

    .line 12
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v9

    invoke-virtual {v5, v4, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 13
    iget v8, v4, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->a:I

    const/16 v9, 0xa1

    if-ne v8, v9, :cond_4

    iget-boolean v8, v4, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_4

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;->b()Z

    move-result v5

    invoke-direct {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    .line 15
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v4

    .line 17
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ai p_version="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

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

    .line 21
    :cond_2
    :goto_0
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;

    invoke-direct {v4, v2, v6}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/c;-><init>(IZ)V

    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    .line 22
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;-><init>(Ljava/io/OutputStream;)V

    .line 23
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->v()I

    move-result v5

    invoke-direct {v3, v4, v6, v5}, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;ZI)V

    .line 24
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;)V

    .line 25
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

    .line 26
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/d/f;->g(I)V

    .line 27
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->g()V

    .line 28
    iput-boolean v7, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->h:Z

    .line 29
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/d/f;->f()V

    .line 30
    invoke-virtual/range {p0 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->h(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    const-string v0, "\u53d1\u9001Ai\u542f\u52a8\u6210\u529f\u7684\u6d88\u606f"

    .line 31
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 32
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/ai/ota/d;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6388\u6743\u5931\u8d25, \u9519\u8bef\u7801:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 34
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

    .line 35
    :cond_4
    :try_start_1
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 36
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

    .line 37
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorAuthorise:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v2, v3, v4, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v2
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
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->h:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;-><init>()V

    throw p1

    .line 5
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorComBroken:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string v2, "\u5fc3\u8df3\u5dee\u5f02\u8fc7\u5927\uff0c\u5173\u6389\u8fde\u63a5"

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/com/t/b;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->t()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->i()I

    move-result v3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/com/t/b;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 7
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->c:Z

    if-eqz v3, :cond_2

    .line 8
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    invoke-direct {v3, v4, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->a:I

    invoke-virtual {p1, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/d/f;->a(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->close()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->g:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->i()V

    return-void
.end method

.method public d()Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->d()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 6
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

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;-><init>()V

    const-wide/16 v1, 0xbb8

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->t()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/a;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->c:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->l(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 5
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;-><init>()V

    throw p1

    .line 9
    :cond_0
    throw v0

    .line 10
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->n(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;->f:Lcn/mucang/android/jiakaoyi/signal/d/f;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    if-eqz p2, :cond_2

    .line 12
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 13
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;-><init>()V

    throw p1

    .line 14
    :cond_2
    throw p1
.end method

.method protected i()I
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x5265c00

    goto :goto_0

    :cond_0
    const/16 v0, 0xfa0

    :goto_0
    return v0
.end method
