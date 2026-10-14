.class public Lcn/mucang/jiakaoyi/uilib/socket/a0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Runnable;

.field private c:Ljava/net/DatagramSocket;

.field private d:I

.field private e:J

.field private volatile f:Z

.field private final g:[B

.field private volatile h:Z

.field private volatile i:Z

.field private final j:I

.field private final k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:J

.field private o:Ljava/lang/String;

.field private final p:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/mucang/jiakaoyi/uilib/socket/p$a;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->a:Landroidx/lifecycle/a0;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->b:Ljava/lang/Runnable;

    add-int/lit8 p2, p2, 0x1

    .line 4
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->j:I

    .line 5
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->k:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->q:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    .line 8
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    .line 9
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->f:Z

    .line 10
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->l:I

    .line 11
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->m:I

    const/16 p1, 0x5dc

    new-array p1, p1, [B

    .line 12
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->g:[B

    .line 13
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->p:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    return-void
.end method

.method static synthetic a(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h()V

    return-void
.end method

.method static synthetic c(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    return p0
.end method

.method static synthetic d(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->f:Z

    return p0
.end method

.method private h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "udp connect\u65f6isClose=true"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    const-string v0, "udp connect\u65f6socket\u4e0d\u4e3a\u7a7a"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "udp \u5f00\u59cbconnect"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/16 v0, 0x1e

    :goto_0
    if-lez v0, :cond_3

    .line 6
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-nez v1, :cond_3

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    const/16 v2, 0x640

    .line 9
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 10
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->j:I

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udp\u672c\u5730port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->s()V

    .line 13
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":udp\u542f\u52a8\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1f4

    .line 15
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->g()V

    const-string v0, "udp connect\u5931\u8d25"

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic i()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->a:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private synthetic k()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->f:Z

    const-string v0, "udp\u5f00\u59cbreceive\u6570\u636e"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->g:[B

    invoke-direct {p0, v1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->r([BLjava/net/DatagramSocket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "udp receive\u6570\u636e\u51fa\u9519:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->f:Z

    const-string v0, "udp\u7ed3\u675freceive\u6570\u636e"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic m()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    const/4 v7, 0x0

    .line 1
    :goto_0
    iget-boolean v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-nez v0, :cond_7

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->j()Z

    move-result v0

    .line 4
    iget-boolean v10, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    if-eqz v10, :cond_1

    iget-wide v10, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->n:J

    sub-long v12, v8, v10

    const-wide/16 v14, 0x4e20

    cmp-long v16, v12, v14

    if-lez v16, :cond_1

    cmp-long v12, v10, v3

    if-lez v12, :cond_1

    sub-long v10, v8, v5

    if-eqz v0, :cond_0

    const-wide/16 v12, 0x384

    cmp-long v14, v10, v12

    if-lez v14, :cond_1

    goto :goto_1

    :cond_0
    const-wide/32 v12, 0xea60

    cmp-long v14, v10, v12

    if-lez v14, :cond_1

    :goto_1
    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 5
    :goto_2
    iget-boolean v11, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    if-eqz v11, :cond_2

    if-eqz v10, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "udp\u53d1\u9001token"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    :cond_3
    :try_start_0
    iget-object v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 8
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v0

    invoke-direct {v5, v0, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 9
    iget-object v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-nez v0, :cond_4

    .line 10
    iget-object v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "udp\u53d1\u9001token\u5931\u8d25:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    move-wide v5, v8

    :cond_5
    const/16 v0, 0x1e

    if-ne v7, v0, :cond_6

    .line 12
    iget-boolean v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    if-nez v0, :cond_6

    .line 13
    iget-object v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->q:Ljava/lang/Runnable;

    :cond_6
    const-wide/16 v8, 0x3e8

    .line 16
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->a:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-string v0, "\u8bf7\u6c42udp token"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/u;->b()Z

    :cond_1
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/h;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/h;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private r([BLjava/net/DatagramSocket;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    const-wide/16 v4, 0x3e8

    if-nez v3, :cond_0

    const-string v3, "udp\u5f00\u59cb\u68c0\u67e5udp\u63a5\u53d7rtcm\u6570\u636e\u662f\u5426\u6b63\u5e38"

    .line 2
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    iget-object v3, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->b:Ljava/lang/Runnable;

    invoke-static {v3, v4, v5}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 4
    :cond_0
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v6, v1

    invoke-direct {v3, v1, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/16 v1, 0x640

    .line 5
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 6
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 7
    iget-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    const/4 v6, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l(Z)V

    const-string v1, "udp\u5f00\u59cb\u5de5\u4f5c"

    .line 10
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->b:Ljava/lang/Runnable;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j()V

    .line 13
    :cond_1
    iput-boolean v6, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->n:J

    .line 15
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v7

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-static {v1, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 16
    invoke-virtual {v2, v6}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 17
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 18
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/4 v7, 0x2

    if-le v3, v7, :cond_a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v3, v7, :cond_a

    .line 19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v7, 0x13

    const-string v8, "udp\u6536\u5230"

    if-ne v3, v7, :cond_9

    .line 20
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 21
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-gt v7, v6, :cond_2

    .line 22
    iput v7, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    .line 23
    :cond_2
    iget v9, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    const-string v10, " , now = "

    if-ge v7, v9, :cond_3

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "udp\u5e8f\u53f7\u53ef\u80fd\u9519\u4e71, last = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 25
    :cond_3
    iget v9, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    sub-int v9, v7, v9

    if-le v9, v6, :cond_4

    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "udp\u53ef\u80fd\u4e22\u5e27, last = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 27
    :cond_4
    new-array v9, v3, [B

    .line 28
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 30
    iget-wide v12, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_5

    sub-long v12, v10, v4

    .line 31
    iput-wide v12, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e:J

    .line 32
    :cond_5
    iget-wide v12, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e:J

    sub-long v12, v10, v12

    .line 33
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v14

    long-to-int v15, v12

    invoke-virtual {v14, v15}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->i(I)V

    .line 34
    sget-object v14, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/signal/c/d;->h()I

    move-result v14

    const-wide/16 v15, 0x1388

    cmp-long v17, v12, v15

    if-gtz v17, :cond_6

    .line 35
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v15, 0x4

    if-eq v14, v15, :cond_7

    .line 36
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "udp : read="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , data="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", receive="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , dt="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , last="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , now="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , gpsType="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->q(Ljava/lang/Object;)V

    .line 37
    :cond_7
    iput-wide v10, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e:J

    .line 38
    iput v7, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    .line 39
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/socket/model/DiffDataModel;

    invoke-direct {v3, v9}, Lcn/mucang/jiakaoyi/uilib/socket/model/DiffDataModel;-><init>([B)V

    .line 40
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->p:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    invoke-interface {v4, v3}, Lcn/mucang/jiakaoyi/uilib/socket/p$a;->b(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V

    .line 41
    iget v3, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->m:I

    add-int/2addr v3, v6

    iput v3, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->m:I

    .line 42
    rem-int/lit8 v3, v3, 0x64

    if-nez v3, :cond_8

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u4e2artcm\u5e27"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_8
    const-wide/16 v4, 0x3e8

    goto/16 :goto_0

    .line 44
    :cond_9
    iget v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->l:I

    add-int/2addr v1, v6

    iput v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->l:I

    .line 45
    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_a

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a\u4e0d\u80fd\u8bc6\u522b\u5e27:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/g;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/g;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l(Z)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/i;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/i;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 5
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c:Ljava/net/DatagramSocket;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e:J

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udp\u5173\u95ed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "udp\u5173\u95ed\u5b8c\u6210:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udp\u5173\u95ed\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic j()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i()V

    return-void
.end method

.method public synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->k()V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->m()V

    return-void
.end method

.method public synthetic p()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->o()V

    return-void
.end method

.method public declared-synchronized t()V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->i:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->h:Z

    .line 4
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d:I

    const-string v0, "\u542f\u52a8udp"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/j;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/j;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
